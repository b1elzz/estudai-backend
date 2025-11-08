package br.com.fundatec.estudai.estudai.service;

import br.com.fundatec.estudai.estudai.config.StudyGoalConstants;
import br.com.fundatec.estudai.estudai.dto.request.StudyGoalRequest;
import br.com.fundatec.estudai.estudai.dto.response.StudyGoalResponse;
import br.com.fundatec.estudai.estudai.entity.StudyGoal;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.exception.AccessDeniedException;
import br.com.fundatec.estudai.estudai.exception.InvalidDateRangeException;
import br.com.fundatec.estudai.estudai.exception.InvalidGoalDurationException;
import br.com.fundatec.estudai.estudai.exception.InvalidGoalStateException;
import br.com.fundatec.estudai.estudai.exception.ResourceNotFoundException;
import br.com.fundatec.estudai.estudai.exception.UnauthenticatedUserException;
import br.com.fundatec.estudai.estudai.mapper.StudyGoalMapper;
import br.com.fundatec.estudai.estudai.repository.StudyGoalRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Service responsible for managing study goals
 * Follows Single Responsibility Principle (SOLID)
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class StudyGoalService {

    private final StudyGoalRepository studyGoalRepository;
    private final StudyGoalMapper studyGoalMapper;

    /**
     * Creates a new study goal for the authenticated user
     *
     * @param request Study goal data
     * @param user Authenticated user
     * @return Created study goal response
     * @throws UnauthenticatedUserException if user is not authenticated
     * @throws InvalidDateRangeException if date range is invalid
     * @throws InvalidGoalDurationException if duration doesn't meet requirements
     */
    @Transactional
    public StudyGoalResponse createGoal(StudyGoalRequest request, User user) {
        log.debug("Creating study goal for user: {}", user.getEmail());
        
        validateAuthenticatedUser(user);
        validateGoalDates(request);

        StudyGoal goal = buildNewGoal(request, user);
        StudyGoal savedGoal = studyGoalRepository.save(goal);
        
        log.info("Study goal created successfully: ID={}, User={}", savedGoal.getId(), user.getEmail());
        return studyGoalMapper.toResponseDTO(savedGoal);
    }

    /**
     * Retrieves all study goals for the authenticated user
     *
     * @param user Authenticated user
     * @return List of user's study goals
     */
    @Transactional(readOnly = true)
    public List<StudyGoalResponse> getUserGoals(User user) {
        log.debug("Retrieving all goals for user: {}", user != null ? user.getEmail() : "null");
        
        if (user == null) {
            return Collections.emptyList();
        }

        List<StudyGoal> goals = studyGoalRepository.findByUserIdOrderByCreatedAtDesc(user.getId());
        return goals.stream()
                .map(studyGoalMapper::toResponseDTO)
                .collect(Collectors.toList());
    }

    /**
     * Retrieves only active study goals for the authenticated user
     *
     * @param user Authenticated user
     * @return List of active study goals
     */
    @Transactional(readOnly = true)
    public List<StudyGoalResponse> getActiveGoals(User user) {
        log.debug("Retrieving active goals for user: {}", user != null ? user.getEmail() : "null");
        
        if (user == null) {
            return Collections.emptyList();
        }

        List<StudyGoal> goals = studyGoalRepository
                .findByUserIdAndStatusOrderByCreatedAtDesc(user.getId(), StudyGoal.Status.ACTIVE);

        return goals.stream()
                .map(studyGoalMapper::toResponseDTO)
                .collect(Collectors.toList());
    }

    /**
     * Retrieves a specific study goal by ID
     *
     * @param id Goal ID
     * @param user Authenticated user
     * @return Study goal response
     * @throws ResourceNotFoundException if goal not found
     * @throws AccessDeniedException if user doesn't own the goal
     */
    @Transactional(readOnly = true)
    public StudyGoalResponse getGoalById(Long id, User user) {
        log.debug("Retrieving goal by ID: {} for user: {}", id, user.getEmail());
        
        validateAuthenticatedUser(user);
        
        StudyGoal goal = findGoalByIdOrThrow(id);
        validateGoalOwnership(goal, user);

        return studyGoalMapper.toResponseDTO(goal);
    }

    /**
     * Updates an existing study goal
     *
     * @param id Goal ID
     * @param request Updated goal data
     * @param user Authenticated user
     * @return Updated study goal response
     * @throws ResourceNotFoundException if goal not found
     * @throws AccessDeniedException if user doesn't own the goal
     * @throws InvalidGoalStateException if goal is not active
     */
    @Transactional
    public StudyGoalResponse updateGoal(Long id, StudyGoalRequest request, User user) {
        log.debug("Updating goal ID: {} for user: {}", id, user.getEmail());
        
        validateAuthenticatedUser(user);
        validateGoalDates(request);

        StudyGoal goal = findGoalByIdOrThrow(id);
        validateGoalOwnership(goal, user);
        validateGoalIsActive(goal);

        studyGoalMapper.updateEntityFromDTO(request, goal);
        StudyGoal updatedGoal = studyGoalRepository.save(goal);
        
        log.info("Study goal updated successfully: ID={}", updatedGoal.getId());
        return studyGoalMapper.toResponseDTO(updatedGoal);
    }

    /**
     * Cancels an active study goal
     *
     * @param id Goal ID
     * @param user Authenticated user
     * @throws ResourceNotFoundException if goal not found
     * @throws AccessDeniedException if user doesn't own the goal
     */
    @Transactional
    public void cancelGoal(Long id, User user) {
        log.debug("Cancelling goal ID: {} for user: {}", id, user.getEmail());
        
        validateAuthenticatedUser(user);

        StudyGoal goal = findGoalByIdOrThrow(id);
        validateGoalOwnership(goal, user);

        goal.setStatus(StudyGoal.Status.CANCELLED);
        studyGoalRepository.save(goal);
        
        log.info("Study goal cancelled: ID={}", id);
    }

    /**
     * Updates progress for all active goals of a user
     * Marks goals as expired if end date has passed
     *
     * @param user User to update goals for
     */
    @Transactional
    public void updateGoalProgress(User user) {
        log.debug("Updating goal progress for user: {}", user.getEmail());
        
        LocalDate today = LocalDate.now();
        List<StudyGoal> activeGoals = studyGoalRepository.findActiveGoalsByUserAndDate(user, today);

        activeGoals.forEach(goal -> {
            if (isGoalExpired(goal, today)) {
                markGoalAsExpired(goal);
            } else {
                calculateAndUpdateProgress(goal, today);
            }
        });
        
        log.info("Updated progress for {} goals of user: {}", activeGoals.size(), user.getEmail());
    }

    // ============================================
    // Private validation methods
    // ============================================

    /**
     * Validates that the user is authenticated
     */
    private void validateAuthenticatedUser(User user) {
        if (user == null) {
            log.warn("Attempt to access study goal endpoint without authentication");
            throw new UnauthenticatedUserException("User must be authenticated to access this resource");
        }
    }

    /**
     * Validates goal dates (start and end date)
     */
    private void validateGoalDates(StudyGoalRequest request) {
        if (request.getStartDate() == null || request.getEndDate() == null) {
            throw new InvalidDateRangeException("Start date and end date are required");
        }
        
        if (request.getStartDate().isAfter(request.getEndDate())) {
            log.warn("Invalid date range: start={}, end={}", request.getStartDate(), request.getEndDate());
            throw new InvalidDateRangeException(
                "Start date must be before or equal to end date"
            );
        }

        validateGoalDuration(request);
    }

    /**
     * Validates goal duration is within acceptable limits
     */
    private void validateGoalDuration(StudyGoalRequest request) {
        long durationDays = ChronoUnit.DAYS.between(request.getStartDate(), request.getEndDate());

        if (durationDays < StudyGoalConstants.MIN_GOAL_DURATION_DAYS) {
            log.warn("Goal duration too short: {} days (min: {})", 
                    durationDays, StudyGoalConstants.MIN_GOAL_DURATION_DAYS);
            throw new InvalidGoalDurationException(
                String.format("Goal must be at least %d days long", StudyGoalConstants.MIN_GOAL_DURATION_DAYS),
                durationDays,
                StudyGoalConstants.MIN_GOAL_DURATION_DAYS,
                StudyGoalConstants.MAX_GOAL_DURATION_DAYS
            );
        }

        if (durationDays > StudyGoalConstants.MAX_GOAL_DURATION_DAYS) {
            log.warn("Goal duration too long: {} days (max: {})", 
                    durationDays, StudyGoalConstants.MAX_GOAL_DURATION_DAYS);
            throw new InvalidGoalDurationException(
                String.format("Goal must be at most %d days long", StudyGoalConstants.MAX_GOAL_DURATION_DAYS),
                durationDays,
                StudyGoalConstants.MIN_GOAL_DURATION_DAYS,
                StudyGoalConstants.MAX_GOAL_DURATION_DAYS
            );
        }
    }

    /**
     * Validates that the goal belongs to the user
     */
    private void validateGoalOwnership(StudyGoal goal, User user) {
        if (!goal.getUser().getId().equals(user.getId())) {
            log.warn("User {} attempted to access goal {} owned by user {}", 
                    user.getId(), goal.getId(), goal.getUser().getId());
            throw new AccessDeniedException("You do not have permission to access this goal");
        }
    }

    /**
     * Validates that the goal is in ACTIVE status
     */
    private void validateGoalIsActive(StudyGoal goal) {
        if (goal.getStatus() != StudyGoal.Status.ACTIVE) {
            log.warn("Attempt to update non-active goal: ID={}, Status={}", goal.getId(), goal.getStatus());
            throw new InvalidGoalStateException(
                "Only active goals can be updated",
                goal.getStatus(),
                StudyGoal.Status.ACTIVE
            );
        }
    }

    // ============================================
    // Private utility methods
    // ============================================

    /**
     * Finds a goal by ID or throws exception
     */
    private StudyGoal findGoalByIdOrThrow(Long id) {
        return studyGoalRepository.findById(id)
                .orElseThrow(() -> {
                    log.warn("Study goal not found: ID={}", id);
                    return new ResourceNotFoundException(
                        String.format("Study goal with ID %d not found", id)
                    );
                });
    }

    /**
     * Builds a new study goal entity
     */
    private StudyGoal buildNewGoal(StudyGoalRequest request, User user) {
        StudyGoal goal = studyGoalMapper.toEntity(request);
        goal.setUser(user);
        goal.setStatus(StudyGoal.Status.ACTIVE);
        goal.setProgressPercentage(0.0);
        return goal;
    }

    /**
     * Checks if goal has expired
     */
    private boolean isGoalExpired(StudyGoal goal, LocalDate today) {
        return today.isAfter(goal.getEndDate());
    }

    /**
     * Marks a goal as expired
     */
    private void markGoalAsExpired(StudyGoal goal) {
        goal.setStatus(StudyGoal.Status.EXPIRED);
        goal.setProgressPercentage(100.0);
        studyGoalRepository.save(goal);
        log.info("Goal marked as expired: ID={}", goal.getId());
    }

    /**
     * Calculates and updates goal progress percentage
     */
    private void calculateAndUpdateProgress(StudyGoal goal, LocalDate today) {
        long totalDays = ChronoUnit.DAYS.between(goal.getStartDate(), goal.getEndDate());
        long daysElapsed = ChronoUnit.DAYS.between(goal.getStartDate(), today);

        // Ensure days elapsed doesn't exceed total days
        daysElapsed = Math.min(daysElapsed, totalDays);

        double progress = totalDays > 0 ? (double) daysElapsed / totalDays * 100.0 : 0.0;
        goal.setProgressPercentage(Math.min(progress, 100.0));

        if (progress >= 100.0) {
            goal.setStatus(StudyGoal.Status.COMPLETED);
            log.info("Goal marked as completed: ID={}", goal.getId());
        }

        studyGoalRepository.save(goal);
    }
}
