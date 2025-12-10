package br.com.fundatec.estudai.estudai.service;

import br.com.fundatec.estudai.estudai.config.ApplicationConstants;
import br.com.fundatec.estudai.estudai.dto.request.QuestionAnswerRequest;
import br.com.fundatec.estudai.estudai.dto.response.AnswerStatisticsResponse;
import br.com.fundatec.estudai.estudai.dto.response.QuestionAnswerResponse;
import br.com.fundatec.estudai.estudai.entity.Question;
import br.com.fundatec.estudai.estudai.entity.QuestionAnswer;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.exception.AccessDeniedException;
import br.com.fundatec.estudai.estudai.exception.ResourceNotFoundException;
import br.com.fundatec.estudai.estudai.exception.UnauthenticatedUserException;
import br.com.fundatec.estudai.estudai.mapper.QuestionAnswerMapper;
import br.com.fundatec.estudai.estudai.repository.QuestionRepository;
import br.com.fundatec.estudai.estudai.repository.QuestionAnswerRepository;
import br.com.fundatec.estudai.estudai.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.Collections;
import java.util.List;

/**
 * Service responsible for managing question answers
 * Follows Single Responsibility Principle (SOLID)
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class QuestionAnswerService {

    private final QuestionAnswerRepository questionAnswerRepository;
    private final QuestionRepository questionRepository;
    private final StudyStreakService studyStreakService;
    private final QuestionAnswerMapper questionAnswerMapper;
    private final UserRepository userRepository;

    /**
     * Submits an answer to a question
     *
     * @param request Answer request with question ID and user answer
     * @param user Authenticated user
     * @return Answer response with correctness information
     * @throws UnauthenticatedUserException if user is not authenticated
     * @throws ResourceNotFoundException if question not found
     */
    @Transactional
    public QuestionAnswerResponse answerQuestion(QuestionAnswerRequest request, User user) {
        log.debug("Processing answer for question {} from user {}", 
                request.getQuestionId(), user.getEmail());
        
        validateAuthenticatedUser(user);

        Question question = findQuestionByIdOrThrow(request.getQuestionId());
        QuestionAnswer answer = findOrCreateAnswer(user, question, request.getQuestionId());

        // Check if this is a new answer (first time answering this question)
        boolean isNewAnswer = answer.getId() == null;
        
        updateAnswerData(answer, request, question);
        QuestionAnswer savedAnswer = questionAnswerRepository.save(answer);

        // Add coins if answer is correct and it's a new answer
        if (savedAnswer.getIsCorrect() != null && savedAnswer.getIsCorrect() && isNewAnswer) {
            addCoinsToUser(user, ApplicationConstants.Answers.COINS_PER_CORRECT_ANSWER);
            log.info("Added {} coins to user {} for correct answer", 
                    ApplicationConstants.Answers.COINS_PER_CORRECT_ANSWER, user.getEmail());
        }

        // Update user's study streak
        studyStreakService.updateStreak(user);

        log.info("Answer submitted: User={}, Question={}, Correct={}", 
                user.getEmail(), question.getId(), savedAnswer.getIsCorrect());
        
        return questionAnswerMapper.toResponseDTO(savedAnswer);
    }

    /**
     * Retrieves all answers from the authenticated user
     *
     * @param user Authenticated user
     * @return List of user's answers
     */
    @Transactional(readOnly = true)
    public List<QuestionAnswerResponse> getUserAnswers(User user) {
        log.debug("Retrieving all answers for user: {}", user != null ? user.getEmail() : "null");
        
        if (user == null) {
            return Collections.emptyList();
        }

        return questionAnswerRepository
                .findByUserIdOrderByAnsweredAtDesc(user.getId())
                .stream()
                .map(questionAnswerMapper::toResponseDTO)
                .toList();
    }

    /**
     * Retrieves a specific answer by ID
     *
     * @param id Answer ID
     * @param user Authenticated user
     * @return Answer response
     * @throws ResourceNotFoundException if answer not found
     * @throws AccessDeniedException if user doesn't own the answer
     */
    @Transactional(readOnly = true)
    public QuestionAnswerResponse getAnswerById(Long id, User user) {
        log.debug("Retrieving answer by ID: {} for user: {}", id, user.getEmail());
        
        validateAuthenticatedUser(user);

        QuestionAnswer answer = findAnswerByIdOrThrow(id);
        validateAnswerOwnership(answer, user);

        return questionAnswerMapper.toResponseDTO(answer);
    }

    /**
     * Counts correct answers for a user
     *
     * @param user User to count answers for
     * @return Number of correct answers
     */
    @Transactional(readOnly = true)
    public Long countCorrectAnswers(User user) {
        if (user == null) {
            return 0L;
        }
        
        Long count = questionAnswerRepository.countCorrectAnswersByUser(user);
        log.debug("User {} has {} correct answers", user.getEmail(), count);
        return count;
    }

    /**
     * Counts wrong answers for a user
     *
     * @param user User to count answers for
     * @return Number of wrong answers
     */
    @Transactional(readOnly = true)
    public Long countWrongAnswers(User user) {
        if (user == null) {
            return 0L;
        }
        
        Long count = questionAnswerRepository.countWrongAnswersByUser(user);
        log.debug("User {} has {} wrong answers", user.getEmail(), count);
        return count;
    }

    /**
     * Gets comprehensive answer statistics for a user
     *
     * @param user Authenticated user
     * @return Answer statistics including accuracy rate and coins earned
     */
    @Transactional(readOnly = true)
    public AnswerStatisticsResponse getStatistics(User user) {
        log.debug("Calculating statistics for user: {}", user != null ? user.getEmail() : "null");
        
        if (user == null) {
            return AnswerStatisticsResponse.from(0L, 0L, 0L);
        }

        Long correct = countCorrectAnswers(user);
        Long wrong = countWrongAnswers(user);
        Long totalCoins = correct * ApplicationConstants.Answers.COINS_PER_CORRECT_ANSWER;

        log.info("Statistics for user {}: correct={}, wrong={}, accuracy={}", 
                user.getEmail(), correct, wrong, 
                AnswerStatisticsResponse.calculateAccuracyRate(correct, correct + wrong));

        return AnswerStatisticsResponse.from(correct, wrong, totalCoins);
    }

    // ============================================
    // Private validation methods
    // ============================================

    /**
     * Validates that the user is authenticated
     */
    private void validateAuthenticatedUser(User user) {
        if (user == null) {
            log.warn("Attempt to access answer endpoint without authentication");
            throw new UnauthenticatedUserException("User must be authenticated to access this resource");
        }
    }

    /**
     * Validates that the answer belongs to the user
     */
    private void validateAnswerOwnership(QuestionAnswer answer, User user) {
        if (!answer.getUser().getId().equals(user.getId())) {
            log.warn("User {} attempted to access answer {} owned by user {}", 
                    user.getId(), answer.getId(), answer.getUser().getId());
            throw new AccessDeniedException("You do not have permission to access this answer");
        }
    }

    // ============================================
    // Private utility methods
    // ============================================

    /**
     * Finds a question by ID or throws exception
     */
    private Question findQuestionByIdOrThrow(Long questionId) {
        return questionRepository.findById(questionId)
                .orElseThrow(() -> {
                    log.warn("Question not found: ID={}", questionId);
                    return new ResourceNotFoundException(
                        String.format("Question with ID %d not found", questionId)
                    );
                });
    }

    /**
     * Finds an answer by ID or throws exception
     */
    private QuestionAnswer findAnswerByIdOrThrow(Long id) {
        return questionAnswerRepository.findById(id)
                .orElseThrow(() -> {
                    log.warn("Answer not found: ID={}", id);
                    return new ResourceNotFoundException(
                        String.format("Answer with ID %d not found", id)
                    );
                });
    }

    /**
     * Finds existing answer or creates a new one
     */
    private QuestionAnswer findOrCreateAnswer(User user, Question question, Long questionId) {
        return questionAnswerRepository
                .findByUserIdAndQuestionId(user.getId(), questionId)
                .orElseGet(() -> {
                    log.debug("Creating new answer for user {} and question {}", 
                            user.getEmail(), question.getId());
                    return createNewAnswer(user, question);
                });
    }

    /**
     * Creates a new answer entity
     */
    private QuestionAnswer createNewAnswer(User user, Question question) {
        QuestionAnswer answer = new QuestionAnswer();
        answer.setUser(user);
        answer.setQuestion(question);
        return answer;
    }

    /**
     * Updates answer data from request
     */
    private void updateAnswerData(QuestionAnswer answer, QuestionAnswerRequest request, Question question) {
        questionAnswerMapper.updateFromRequestDTO(request, answer);
        answer.setAnsweredAt(LocalDateTime.now());
        
        boolean isCorrect = question.getCorrectAlternative()
                .equalsIgnoreCase(request.getUserAnswer().trim());
        answer.setIsCorrect(isCorrect);
        
        log.debug("Answer evaluation: UserAnswer={}, CorrectAnswer={}, IsCorrect={}", 
                request.getUserAnswer(), question.getCorrectAlternative(), isCorrect);
    }

    /**
     * Adds coins to user's account
     */
    private void addCoinsToUser(User user, int coinsToAdd) {
        if (user.getCoins() == null) {
            user.setCoins(0);
        }
        user.setCoins(user.getCoins() + coinsToAdd);
        userRepository.save(user);
        log.debug("User {} now has {} coins", user.getEmail(), user.getCoins());
    }
}
