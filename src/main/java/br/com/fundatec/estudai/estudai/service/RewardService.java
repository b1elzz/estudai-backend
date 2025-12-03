package br.com.fundatec.estudai.estudai.service;

import br.com.fundatec.estudai.estudai.dto.request.RewardRedemptionRequest;
import br.com.fundatec.estudai.estudai.dto.request.RewardRequest;
import br.com.fundatec.estudai.estudai.dto.response.RewardRedemptionResponse;
import br.com.fundatec.estudai.estudai.dto.response.RewardResponse;
import br.com.fundatec.estudai.estudai.entity.Reward;
import br.com.fundatec.estudai.estudai.entity.RewardRedemption;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.exception.InsufficientCoinsException;
import br.com.fundatec.estudai.estudai.exception.ResourceNotFoundException;
import br.com.fundatec.estudai.estudai.exception.RewardAlreadyRedeemedException;
import br.com.fundatec.estudai.estudai.exception.UnauthenticatedUserException;
import br.com.fundatec.estudai.estudai.mapper.RewardMapper;
import br.com.fundatec.estudai.estudai.mapper.RewardRedemptionMapper;
import br.com.fundatec.estudai.estudai.repository.RewardRedemptionRepository;
import br.com.fundatec.estudai.estudai.repository.RewardRepository;
import br.com.fundatec.estudai.estudai.repository.UserRepository;
import br.com.fundatec.estudai.estudai.service.EmailService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

/**
 * Service responsible for managing rewards and redemptions
 * Follows Single Responsibility Principle (SOLID)
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class RewardService {

    private final RewardRepository rewardRepository;
    private final RewardRedemptionRepository redemptionRepository;
    private final UserRepository userRepository;
    private final RewardMapper rewardMapper;
    private final RewardRedemptionMapper redemptionMapper;
    private final EmailService emailService;

    /**
     * Retrieves all active rewards
     *
     * @return List of active rewards
     */
    @Transactional(readOnly = true)
    public List<RewardResponse> getAllRewards() {
        log.debug("Retrieving all active rewards");
        
        List<Reward> rewards = rewardRepository.findByActiveTrueOrderByCreatedAtDesc();
        return rewards.stream()
                .map(rewardMapper::toResponseDTO)
                .collect(Collectors.toList());
    }

    /**
     * Retrieves rewards by category
     *
     * @param category Reward category
     * @return List of rewards in the specified category
     */
    @Transactional(readOnly = true)
    public List<RewardResponse> getRewardsByCategory(Reward.Category category) {
        log.debug("Retrieving rewards by category: {}", category);
        
        List<Reward> rewards = rewardRepository.findByCategoryAndActiveTrueOrderByCreatedAtDesc(category);
        return rewards.stream()
                .map(rewardMapper::toResponseDTO)
                .collect(Collectors.toList());
    }

    /**
     * Retrieves a specific reward by ID
     *
     * @param id Reward ID
     * @return Reward response
     * @throws ResourceNotFoundException if reward not found
     */
    @Transactional(readOnly = true)
    public RewardResponse getRewardById(Long id) {
        log.debug("Retrieving reward by ID: {}", id);
        
        Reward reward = findRewardByIdOrThrow(id);
        return rewardMapper.toResponseDTO(reward);
    }

    /**
     * Creates a new reward (admin operation)
     *
     * @param request Reward data
     * @return Created reward response
     */
    @Transactional
    public RewardResponse createReward(RewardRequest request) {
        log.debug("Creating new reward: {}", request.getTitle());
        
        Reward reward = rewardMapper.toEntity(request);
        Reward savedReward = rewardRepository.save(reward);
        
        log.info("Reward created successfully: ID={}, Title={}", savedReward.getId(), savedReward.getTitle());
        return rewardMapper.toResponseDTO(savedReward);
    }

    /**
     * Updates an existing reward (admin operation)
     *
     * @param id Reward ID
     * @param request Updated reward data
     * @return Updated reward response
     * @throws ResourceNotFoundException if reward not found
     */
    @Transactional
    public RewardResponse updateReward(Long id, RewardRequest request) {
        log.debug("Updating reward ID: {}", id);
        
        Reward reward = findRewardByIdOrThrow(id);
        rewardMapper.updateEntityFromDTO(request, reward);
        Reward updatedReward = rewardRepository.save(reward);
        
        log.info("Reward updated successfully: ID={}", updatedReward.getId());
        return rewardMapper.toResponseDTO(updatedReward);
    }

    /**
     * Redeems a reward for the authenticated user
     *
     * @param request Redemption request
     * @param user Authenticated user
     * @return Redemption response
     * @throws UnauthenticatedUserException if user is not authenticated
     * @throws ResourceNotFoundException if reward not found
     * @throws InsufficientCoinsException if user doesn't have enough coins
     * @throws RewardAlreadyRedeemedException if user already redeemed this reward
     */
    @Transactional
    public RewardRedemptionResponse redeemReward(RewardRedemptionRequest request, User user) {
        log.debug("Redeeming reward ID: {} for user: {}", request.getRewardId(), user.getEmail());
        
        validateAuthenticatedUser(user);
        
        Reward reward = findRewardByIdOrThrow(request.getRewardId());
        validateRewardIsActive(reward);
        validateUserHasEnoughCoins(user, reward);
        validateUserHasNotRedeemedReward(user, reward);
        
        // Deduct coins from user
        user.setCoins(user.getCoins() - reward.getCost());
        userRepository.save(user);
        
        // Create redemption record
        RewardRedemption redemption = new RewardRedemption();
        redemption.setUser(user);
        redemption.setReward(reward);
        redemption.setStatus(RewardRedemption.Status.PENDING);
        
        RewardRedemption savedRedemption = redemptionRepository.save(redemption);
        
        // Enviar email de confirmação de resgate
        try {
            emailService.sendRewardRedemptionEmail(
                user.getEmail(),
                user.getName(),
                reward.getTitle(),
                reward.getDescription(),
                reward.getCost(),
                savedRedemption.getId()
            );
            log.debug("Redemption confirmation email sent to: {}", user.getEmail());
        } catch (Exception e) {
            // Não falhar o resgate se o email falhar, apenas logar o erro
            log.warn("Failed to send redemption confirmation email to {}: {}", 
                    user.getEmail(), e.getMessage());
        }
        
        log.info("Reward redeemed successfully: Redemption ID={}, User={}, Reward={}", 
                savedRedemption.getId(), user.getEmail(), reward.getTitle());
        
        return redemptionMapper.toResponseDTO(savedRedemption);
    }

    /**
     * Retrieves all redemptions for the authenticated user
     *
     * @param user Authenticated user
     * @return List of user's redemptions
     */
    @Transactional(readOnly = true)
    public List<RewardRedemptionResponse> getUserRedemptions(User user) {
        log.debug("Retrieving redemptions for user: {}", user.getEmail());
        
        validateAuthenticatedUser(user);
        
        List<RewardRedemption> redemptions = redemptionRepository.findByUserOrderByRedeemedAtDesc(user);
        return redemptions.stream()
                .map(redemptionMapper::toResponseDTO)
                .collect(Collectors.toList());
    }

    /**
     * Updates redemption status (admin operation)
     *
     * @param redemptionId Redemption ID
     * @param status New status
     * @return Updated redemption response
     * @throws ResourceNotFoundException if redemption not found
     */
    @Transactional
    public RewardRedemptionResponse updateRedemptionStatus(Long redemptionId, RewardRedemption.Status status) {
        log.debug("Updating redemption status: ID={}, Status={}", redemptionId, status);
        
        RewardRedemption redemption = redemptionRepository.findById(redemptionId)
                .orElseThrow(() -> {
                    log.warn("Redemption not found: ID={}", redemptionId);
                    return new ResourceNotFoundException(
                        String.format("Redemption with ID %d not found", redemptionId)
                    );
                });
        
        redemption.setStatus(status);
        RewardRedemption updatedRedemption = redemptionRepository.save(redemption);
        
        log.info("Redemption status updated: ID={}, Status={}", updatedRedemption.getId(), status);
        return redemptionMapper.toResponseDTO(updatedRedemption);
    }

    // ============================================
    // Private validation methods
    // ============================================

    /**
     * Validates that the user is authenticated
     */
    private void validateAuthenticatedUser(User user) {
        if (user == null) {
            log.warn("Attempt to access reward endpoint without authentication");
            throw new UnauthenticatedUserException("User must be authenticated to access this resource");
        }
    }

    /**
     * Validates that the reward is active
     */
    private void validateRewardIsActive(Reward reward) {
        if (!reward.getActive()) {
            log.warn("Attempt to redeem inactive reward: ID={}", reward.getId());
            throw new ResourceNotFoundException("This reward is not available");
        }
    }

    /**
     * Validates that the user has enough coins
     */
    private void validateUserHasEnoughCoins(User user, Reward reward) {
        if (user.getCoins() == null || user.getCoins() < reward.getCost()) {
            log.warn("User {} attempted to redeem reward {} with insufficient coins: {} < {}", 
                    user.getEmail(), reward.getTitle(), user.getCoins(), reward.getCost());
            throw new InsufficientCoinsException(
                String.format("Insufficient coins. Required: %d, Available: %d", 
                        reward.getCost(), user.getCoins() != null ? user.getCoins() : 0)
            );
        }
    }

    /**
     * Validates that the user hasn't already redeemed this reward
     */
    private void validateUserHasNotRedeemedReward(User user, Reward reward) {
        if (redemptionRepository.existsByUserIdAndRewardId(user.getId(), reward.getId())) {
            log.warn("User {} attempted to redeem already redeemed reward: {}", 
                    user.getEmail(), reward.getTitle());
            throw new RewardAlreadyRedeemedException(
                "You have already redeemed this reward"
            );
        }
    }

    // ============================================
    // Private utility methods
    // ============================================

    /**
     * Finds a reward by ID or throws exception
     */
    private Reward findRewardByIdOrThrow(Long id) {
        return rewardRepository.findById(id)
                .orElseThrow(() -> {
                    log.warn("Reward not found: ID={}", id);
                    return new ResourceNotFoundException(
                        String.format("Reward with ID %d not found", id)
                    );
                });
    }
}

