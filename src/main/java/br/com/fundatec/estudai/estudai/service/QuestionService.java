package br.com.fundatec.estudai.estudai.service;

import br.com.fundatec.estudai.estudai.dto.response.QuestionResponse;
import br.com.fundatec.estudai.estudai.entity.Question;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.exception.ResourceNotFoundException;
import br.com.fundatec.estudai.estudai.mapper.QuestionMapper;
import br.com.fundatec.estudai.estudai.repository.QuestionRepository;
import br.com.fundatec.estudai.estudai.repository.QuestionAnswerRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

/**
 * Service responsible for managing ENEM questions
 * Follows Single Responsibility Principle (SOLID)
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class QuestionService {

    private static final int DEFAULT_QUESTIONS_LIMIT = 10;
    private static final int MAX_QUESTIONS_LIMIT = 100;
    
    private final QuestionRepository questionRepository;
    private final QuestionAnswerRepository questionAnswerRepository;
    private final QuestionMapper questionMapper;

    /**
     * Retrieves questions with optional filters
     *
     * @param subject Filter by subject (optional)
     * @param year Filter by year (optional)
     * @param limit Maximum number of questions to return
     * @param includeAnswered Whether to include already answered questions
     * @param user Authenticated user (optional)
     * @return List of questions matching the filters
     */
    @Transactional(readOnly = true)
    public List<QuestionResponse> getQuestions(String subject, Integer year, Integer limit, 
                                                 Boolean includeAnswered, User user) {
        log.debug("Retrieving questions with filters: subject={}, year={}, limit={}, includeAnswered={}, user={}", 
                subject, year, limit, includeAnswered, user != null ? user.getEmail() : "null");
        
        int validatedLimit = validateAndGetLimit(limit);
        List<Question> questions = findQuestionsByFilters(subject, year, validatedLimit);

        if (shouldFilterAnsweredQuestions(includeAnswered, user)) {
            questions = filterOutAnsweredQuestions(questions, user);
            log.debug("Filtered out answered questions, remaining: {}", questions.size());
        }

        log.info("Retrieved {} questions", questions.size());
        return questions.stream()
                .map(questionMapper::toResponseDTO)
                .collect(Collectors.toList());
    }

    /**
     * Retrieves a specific question by ID
     *
     * @param id Question ID
     * @return Question response
     * @throws ResourceNotFoundException if question not found
     */
    @Transactional(readOnly = true)
    public QuestionResponse getQuestionById(Long id) {
        log.debug("Retrieving question by ID: {}", id);
        
        Question question = findQuestionByIdOrThrow(id);
        return questionMapper.toResponseDTO(question);
    }

    /**
     * Retrieves all available subjects
     *
     * @return List of distinct subjects
     */
    @Transactional(readOnly = true)
    public List<String> getSubjects() {
        log.debug("Retrieving all available subjects");
        
        List<String> subjects = questionRepository.findDistinctSubjects();
        log.info("Found {} distinct subjects", subjects.size());
        return subjects;
    }

    /**
     * Retrieves all available years
     *
     * @return List of distinct years
     */
    @Transactional(readOnly = true)
    public List<Integer> getYears() {
        log.debug("Retrieving all available years");
        
        List<Integer> years = questionRepository.findDistinctYears();
        log.info("Found {} distinct years", years.size());
        return years;
    }

    // ============================================
    // Private utility methods
    // ============================================

    /**
     * Validates and returns a safe limit value
     */
    private int validateAndGetLimit(Integer limit) {
        if (limit == null || limit <= 0) {
            return DEFAULT_QUESTIONS_LIMIT;
        }
        
        if (limit > MAX_QUESTIONS_LIMIT) {
            log.warn("Requested limit {} exceeds maximum {}, using maximum", limit, MAX_QUESTIONS_LIMIT);
            return MAX_QUESTIONS_LIMIT;
        }
        
        return limit;
    }

    /**
     * Checks if answered questions should be filtered out
     */
    private boolean shouldFilterAnsweredQuestions(Boolean includeAnswered, User user) {
        return user != null && Boolean.FALSE.equals(includeAnswered);
    }

    /**
     * Finds a question by ID or throws exception
     */
    private Question findQuestionByIdOrThrow(Long id) {
        return questionRepository.findById(id)
                .orElseThrow(() -> {
                    log.warn("Question not found: ID={}", id);
                    return new ResourceNotFoundException(
                        String.format("Question with ID %d not found", id)
                    );
                });
    }

    /**
     * Finds questions based on provided filters
     */
    private List<Question> findQuestionsByFilters(String subject, Integer year, int limit) {
        if (subject != null && year != null) {
            log.debug("Finding questions by subject and year: {}, {}", subject, year);
            return questionRepository.findRandomBySubjectAndYear(subject, year, limit);
        }

        if (subject != null) {
            log.debug("Finding questions by subject: {}", subject);
            return questionRepository.findRandomBySubject(subject, limit);
        }

        if (year != null) {
            log.debug("Finding questions by year: {}", year);
            return questionRepository.findRandomByYear(year, limit);
        }

        log.debug("Finding random questions without filters");
        return questionRepository.findRandom(limit);
    }

    /**
     * Filters out questions that have already been answered by the user
     */
    private List<Question> filterOutAnsweredQuestions(List<Question> questions, User user) {
        List<Long> answeredQuestionIds = questionAnswerRepository
                .findByUserIdOrderByAnsweredAtDesc(user.getId())
                .stream()
                .map(answer -> answer.getQuestion().getId())
                .toList();

        return questions.stream()
                .filter(question -> !answeredQuestionIds.contains(question.getId()))
                .toList();
    }
}
