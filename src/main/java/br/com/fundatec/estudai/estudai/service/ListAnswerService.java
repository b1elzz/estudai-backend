package br.com.fundatec.estudai.estudai.service;

import br.com.fundatec.estudai.estudai.dto.request.ListAnswerRequest;
import br.com.fundatec.estudai.estudai.dto.response.ListAnswerResponse;
import br.com.fundatec.estudai.estudai.entity.CustomList;
import br.com.fundatec.estudai.estudai.entity.ListAnswer;
import br.com.fundatec.estudai.estudai.entity.Question;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.exception.AccessDeniedException;
import br.com.fundatec.estudai.estudai.exception.ResourceNotFoundException;
import br.com.fundatec.estudai.estudai.exception.UnauthenticatedUserException;
import br.com.fundatec.estudai.estudai.mapper.ListAnswerMapper;
import br.com.fundatec.estudai.estudai.config.ApplicationConstants;
import br.com.fundatec.estudai.estudai.repository.CustomListRepository;
import br.com.fundatec.estudai.estudai.repository.ListAnswerRepository;
import br.com.fundatec.estudai.estudai.repository.QuestionRepository;
import br.com.fundatec.estudai.estudai.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class ListAnswerService {

    private final ListAnswerRepository listAnswerRepository;
    private final CustomListRepository customListRepository;
    private final QuestionRepository questionRepository;
    private final StudyStreakService studyStreakService;
    private final ListAnswerMapper listAnswerMapper;
    private final UserRepository userRepository;

    @Transactional
    public ListAnswerResponse answerQuestionInList(ListAnswerRequest request, User user) {
        log.debug("Processing answer for question {} in list {} from user {}", 
                request.getQuestionId(), request.getCustomListId(), user.getEmail());
        
        validateAuthenticatedUser(user);

        CustomList customList = findListByIdOrThrow(request.getCustomListId());
        validateListOwnership(customList, user);
        
        Question question = findQuestionByIdOrThrow(request.getQuestionId());
        validateQuestionInList(question, customList);

        ListAnswer answer = findOrCreateAnswer(user, customList, question);

        // Check if this is a new answer (first time answering this question in this list)
        boolean isNewAnswer = answer.getId() == null;

        updateAnswerData(answer, request, question);
        ListAnswer savedAnswer = listAnswerRepository.save(answer);

        // Add coins if answer is correct and it's a new answer
        if (savedAnswer.getIsCorrect() != null && savedAnswer.getIsCorrect() && isNewAnswer) {
            addCoinsToUser(user, ApplicationConstants.Answers.COINS_PER_CORRECT_ANSWER);
            log.info("Added {} coins to user {} for correct answer in list", 
                    ApplicationConstants.Answers.COINS_PER_CORRECT_ANSWER, user.getEmail());
        }

        // Update user's study streak
        studyStreakService.updateStreak(user);

        log.info("Answer submitted in list: User={}, List={}, Question={}, Correct={}", 
                user.getEmail(), customList.getId(), question.getId(), savedAnswer.getIsCorrect());
        
        return listAnswerMapper.toResponseDTO(savedAnswer);
    }

    @Transactional(readOnly = true)
    public List<ListAnswerResponse> getAnswersByList(Long listId, User user) {
        log.debug("Retrieving answers for list {} by user: {}", listId, user.getEmail());
        
        validateAuthenticatedUser(user);

        CustomList customList = findListByIdOrThrow(listId);
        validateListOwnership(customList, user);

        return listAnswerRepository
                .findByUserIdAndCustomListIdOrderByAnsweredAtDesc(user.getId(), listId)
                .stream()
                .map(listAnswerMapper::toResponseDTO)
                .toList();
    }

    @Transactional(readOnly = true)
    public Long countCorrectAnswersByList(Long listId, User user) {
        validateAuthenticatedUser(user);
        CustomList customList = findListByIdOrThrow(listId);
        validateListOwnership(customList, user);
        return listAnswerRepository.countCorrectAnswersByUserAndList(user, customList);
    }

    @Transactional(readOnly = true)
    public Long countWrongAnswersByList(Long listId, User user) {
        validateAuthenticatedUser(user);
        CustomList customList = findListByIdOrThrow(listId);
        validateListOwnership(customList, user);
        return listAnswerRepository.countWrongAnswersByUserAndList(user, customList);
    }

    @Transactional(readOnly = true)
    public Long countTotalAnswersByList(Long listId, User user) {
        validateAuthenticatedUser(user);
        CustomList customList = findListByIdOrThrow(listId);
        validateListOwnership(customList, user);
        return listAnswerRepository.countTotalAnswersByUserAndList(user, customList);
    }

    private void validateAuthenticatedUser(User user) {
        if (user == null) {
            log.warn("Attempt to access list answer endpoint without authentication");
            throw new UnauthenticatedUserException("User must be authenticated to access this resource");
        }
    }

    private void validateListOwnership(CustomList list, User user) {
        if (!list.getUser().getId().equals(user.getId())) {
            log.warn("User {} attempted to access list {} owned by user {}", 
                    user.getId(), list.getId(), list.getUser().getId());
            throw new AccessDeniedException("You do not have permission to access this list");
        }
    }

    private void validateQuestionInList(Question question, CustomList customList) {
        boolean questionInList = customList.getQuestions().stream()
                .anyMatch(q -> q.getId().equals(question.getId()));
        
        if (!questionInList) {
            log.warn("Question {} is not in list {}", question.getId(), customList.getId());
            throw new ResourceNotFoundException(
                String.format("Question %d is not part of list %d", question.getId(), customList.getId())
            );
        }
    }

    private CustomList findListByIdOrThrow(Long id) {
        return customListRepository.findById(id)
                .orElseThrow(() -> {
                    log.warn("Custom list not found: ID={}", id);
                    return new ResourceNotFoundException(
                        String.format("Custom list with ID %d not found", id)
                    );
                });
    }

    private Question findQuestionByIdOrThrow(Long id) {
        return questionRepository.findById(id)
                .orElseThrow(() -> {
                    log.warn("Question not found: ID={}", id);
                    return new ResourceNotFoundException(
                        String.format("Question with ID %d not found", id)
                    );
                });
    }

    private ListAnswer findOrCreateAnswer(User user, CustomList customList, Question question) {
        return listAnswerRepository
                .findByUserIdAndCustomListIdAndQuestionId(user.getId(), customList.getId(), question.getId())
                .orElseGet(() -> {
                    log.debug("Creating new answer for user {}, list {} and question {}", 
                            user.getEmail(), customList.getId(), question.getId());
                    return createNewAnswer(user, customList, question);
                });
    }

    private ListAnswer createNewAnswer(User user, CustomList customList, Question question) {
        ListAnswer answer = new ListAnswer();
        answer.setUser(user);
        answer.setCustomList(customList);
        answer.setQuestion(question);
        return answer;
    }

    private void updateAnswerData(ListAnswer answer, ListAnswerRequest request, Question question) {
        listAnswerMapper.updateFromRequestDTO(request, answer);
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

