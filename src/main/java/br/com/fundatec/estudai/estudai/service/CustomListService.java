package br.com.fundatec.estudai.estudai.service;

import br.com.fundatec.estudai.estudai.dto.request.CustomListRequest;
import br.com.fundatec.estudai.estudai.dto.response.CustomListResponse;
import br.com.fundatec.estudai.estudai.entity.CustomList;
import br.com.fundatec.estudai.estudai.entity.Question;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.exception.AccessDeniedException;
import br.com.fundatec.estudai.estudai.exception.ResourceNotFoundException;
import br.com.fundatec.estudai.estudai.exception.UnauthenticatedUserException;
import br.com.fundatec.estudai.estudai.mapper.CustomListMapper;
import br.com.fundatec.estudai.estudai.repository.CustomListRepository;
import br.com.fundatec.estudai.estudai.repository.ListAnswerRepository;
import br.com.fundatec.estudai.estudai.repository.QuestionRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * Service responsible for managing custom question lists
 * Follows Single Responsibility Principle (SOLID)
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class CustomListService {

    private static final int DEFAULT_QUESTIONS_COUNT = 10;
    
    private final CustomListRepository customListRepository;
    private final QuestionRepository questionRepository;
    private final ListAnswerRepository listAnswerRepository;
    private final CustomListMapper customListMapper;

    /**
     * Creates a new custom list for the authenticated user
     *
     * @param request Custom list data
     * @param user Authenticated user
     * @return Created custom list response
     * @throws UnauthenticatedUserException if user is not authenticated
     */
    @Transactional
    public CustomListResponse createList(CustomListRequest request, User user) {
        log.debug("Creating custom list for user: {}", user.getEmail());
        
        validateAuthenticatedUser(user);

        CustomList list = buildNewList(request, user);
        CustomList savedList = customListRepository.save(list);
        
        log.info("Custom list created successfully: ID={}, User={}, Questions={}", 
                savedList.getId(), user.getEmail(), savedList.getQuestions().size());
        return customListMapper.toResponseDTO(savedList);
    }

    /**
     * Retrieves all custom lists for the authenticated user
     *
     * @param user Authenticated user
     * @param subject Optional subject filter
     * @return List of user's custom lists
     */
    @Transactional(readOnly = true)
    public List<CustomListResponse> getUserLists(User user, String subject) {
        log.debug("Retrieving custom lists for user: {} with subject filter: {}", 
                user != null ? user.getEmail() : "null", subject);
        
        if (user == null) {
            return Collections.emptyList();
        }

        List<CustomList> lists;
        if (subject != null && !subject.isEmpty()) {
            lists = customListRepository.findByUserAndFilters(user, null, subject);
        } else {
            lists = customListRepository.findByUserIdOrderByCreatedAtDesc(user.getId());
        }

        return lists.stream()
                .map(list -> enrichWithStatistics(customListMapper.toResponseDTO(list), list, user))
                .collect(Collectors.toList());
    }

    /**
     * Retrieves a specific custom list by ID
     *
     * @param id List ID
     * @param user Authenticated user
     * @return Custom list response
     * @throws ResourceNotFoundException if list not found
     * @throws AccessDeniedException if user doesn't own the list
     */
    @Transactional(readOnly = true)
    public CustomListResponse getListById(Long id, User user) {
        log.debug("Retrieving custom list by ID: {} for user: {}", id, user.getEmail());
        
        validateAuthenticatedUser(user);

        CustomList list = findListByIdOrThrow(id);
        validateListOwnership(list, user);

        return enrichWithStatistics(customListMapper.toResponseDTO(list), list, user);
    }

    /**
     * Updates an existing custom list
     *
     * @param id List ID
     * @param request Updated list data
     * @param user Authenticated user
     * @return Updated custom list response
     * @throws ResourceNotFoundException if list not found
     * @throws AccessDeniedException if user doesn't own the list
     */
    @Transactional
    public CustomListResponse updateList(Long id, CustomListRequest request, User user) {
        log.debug("Updating custom list ID: {} for user: {}", id, user.getEmail());
        
        validateAuthenticatedUser(user);

        CustomList list = findListByIdOrThrow(id);
        validateListOwnership(list, user);

        updateListData(list, request);
        CustomList updatedList = customListRepository.save(list);
        
        log.info("Custom list updated successfully: ID={}", updatedList.getId());
        return customListMapper.toResponseDTO(updatedList);
    }

    /**
     * Deletes a custom list
     *
     * @param id List ID
     * @param user Authenticated user
     * @throws ResourceNotFoundException if list not found
     * @throws AccessDeniedException if user doesn't own the list
     */
    @Transactional
    public void deleteList(Long id, User user) {
        log.debug("Deleting custom list ID: {} for user: {}", id, user.getEmail());
        
        validateAuthenticatedUser(user);

        CustomList list = findListByIdOrThrow(id);
        validateListOwnership(list, user);

        // Delete all answers associated with this list first
        listAnswerRepository.deleteByCustomList(list);
        log.debug("Deleted all answers associated with list ID: {}", id);

        // Now delete the list itself
        customListRepository.delete(list);
        log.info("Custom list deleted successfully: ID={}", id);
    }

    // ============================================
    // Private validation methods
    // ============================================

    /**
     * Validates that the user is authenticated
     */
    private void validateAuthenticatedUser(User user) {
        if (user == null) {
            log.warn("Attempt to access custom list endpoint without authentication");
            throw new UnauthenticatedUserException("User must be authenticated to access this resource");
        }
    }

    /**
     * Validates that the list belongs to the user
     */
    private void validateListOwnership(CustomList list, User user) {
        if (!list.getUser().getId().equals(user.getId())) {
            log.warn("User {} attempted to access list {} owned by user {}", 
                    user.getId(), list.getId(), list.getUser().getId());
            throw new AccessDeniedException("You do not have permission to access this list");
        }
    }

    // ============================================
    // Private utility methods
    // ============================================

    /**
     * Finds a list by ID or throws exception
     */
    private CustomList findListByIdOrThrow(Long id) {
        return customListRepository.findById(id)
                .orElseThrow(() -> {
                    log.warn("Custom list not found: ID={}", id);
                    return new ResourceNotFoundException(
                        String.format("Custom list with ID %d not found", id)
                    );
                });
    }

    /**
     * Builds a new custom list entity
     */
    private CustomList buildNewList(CustomListRequest request, User user) {
        CustomList list = customListMapper.toEntity(request);
        list.setUser(user);

        List<Question> questions = findQuestionsForList(request, user);
        list.setQuestions(questions);
        
        return list;
    }

    /**
     * Updates list data from request
     */
    private void updateListData(CustomList list, CustomListRequest request) {
        customListMapper.updateEntityFromDTO(request, list);

        if (shouldUpdateQuestions(request)) {
            List<Question> questions = questionRepository.findAllById(request.getQuestionIds());
            
            if (questions.isEmpty()) {
                log.warn("No questions found for IDs: {}", request.getQuestionIds());
            }
            
            list.setQuestions(questions);
            log.debug("Updated {} questions in list", questions.size());
        }
    }

    /**
     * Checks if questions should be updated based on request
     */
    private boolean shouldUpdateQuestions(CustomListRequest request) {
        return request.getQuestionIds() != null && !request.getQuestionIds().isEmpty();
    }

    /**
     * Finds questions for the list based on filters or specific IDs
     */
    private List<Question> findQuestionsForList(CustomListRequest request, User user) {
        // If specific question IDs are provided, use them
        if (shouldUpdateQuestions(request)) {
            List<Question> questions = questionRepository.findAllById(request.getQuestionIds());
            log.debug("Found {} questions by IDs for custom list", questions.size());
            return questions;
        }

        // Otherwise, find questions based on filters
        int count = Optional.ofNullable(request.getQuestionsCount())
                .orElse(DEFAULT_QUESTIONS_COUNT);

        String subject = request.getFilterSubject();
        Integer year = request.getFilterYear();

        List<Question> questions = findQuestionsByFilters(subject, year, count);
        log.debug("Found {} questions by filters (subject={}, year={}) for custom list", 
                questions.size(), subject, year);
        
        return questions;
    }

    /**
     * Finds questions by filters (subject is required, year is optional)
     */
    private List<Question> findQuestionsByFilters(String subject, Integer year, int count) {
        // Subject is now required, so we always filter by it
        if (year != null) {
            return questionRepository.findRandomBySubjectAndYear(subject, year, count);
        }

        // If no year specified, filter only by subject
        return questionRepository.findRandomBySubject(subject, count);
    }

    /**
     * Enriches CustomListResponse with answer statistics
     */
    private CustomListResponse enrichWithStatistics(CustomListResponse response, CustomList list, User user) {
        try {
            Long correctAnswers = listAnswerRepository.countCorrectAnswersByUserAndList(user, list);
            Long wrongAnswers = listAnswerRepository.countWrongAnswersByUserAndList(user, list);
            Long totalAnswers = listAnswerRepository.countTotalAnswersByUserAndList(user, list);

            response.setCorrectAnswers(correctAnswers != null ? correctAnswers : 0L);
            response.setWrongAnswers(wrongAnswers != null ? wrongAnswers : 0L);
            response.setTotalAnswers(totalAnswers != null ? totalAnswers : 0L);
        } catch (Exception e) {
            log.warn("Error enriching statistics for list {}: {}", list.getId(), e.getMessage());
            // Se houver erro, define valores padrão como 0
            response.setCorrectAnswers(0L);
            response.setWrongAnswers(0L);
            response.setTotalAnswers(0L);
        }

        return response;
    }
}
