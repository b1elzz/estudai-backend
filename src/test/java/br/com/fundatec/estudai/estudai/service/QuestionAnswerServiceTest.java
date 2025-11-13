package br.com.fundatec.estudai.estudai.service;

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
import br.com.fundatec.estudai.estudai.repository.QuestionAnswerRepository;
import br.com.fundatec.estudai.estudai.repository.QuestionRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
@DisplayName("Testes Unitários - QuestionAnswerService")
class QuestionAnswerServiceTest {

    @Mock
    private QuestionAnswerRepository questionAnswerRepository;

    @Mock
    private QuestionRepository questionRepository;

    @Mock
    private StudyStreakService studyStreakService;

    @Mock
    private QuestionAnswerMapper questionAnswerMapper;

    @InjectMocks
    private QuestionAnswerService questionAnswerService;

    private User user;
    private Question question;
    private QuestionAnswerRequest answerRequest;
    private QuestionAnswer answer;
    private QuestionAnswerResponse answerResponse;

    @BeforeEach
    void setUp() {
        user = new User();
        user.setId(1L);
        user.setEmail("joao@teste.com");

        question = new Question();
        question.setId(1L);
        question.setTitle("Questão Teste");
        question.setCorrectAlternative("A");

        answerRequest = new QuestionAnswerRequest();
        answerRequest.setQuestionId(1L);
        answerRequest.setUserAnswer("A");
        answerRequest.setResponseTimeSeconds(30);

        answer = new QuestionAnswer();
        answer.setId(1L);
        answer.setUser(user);
        answer.setQuestion(question);
        answer.setUserAnswer("A");
        answer.setIsCorrect(true);
        answer.setResponseTimeSeconds(30);
        answer.setAnsweredAt(LocalDateTime.now());

        answerResponse = new QuestionAnswerResponse();
        answerResponse.setId(1L);
        answerResponse.setQuestionId(1L);
        answerResponse.setUserAnswer("A");
        answerResponse.setIsCorrect(true);
        answerResponse.setResponseTimeSeconds(30);
        answerResponse.setAnsweredAt(LocalDateTime.now());
    }

    @Test
    @DisplayName("Deve responder questão corretamente com sucesso")
    void deveResponderQuestaoCorretamenteComSucesso() {
        // Arrange
        when(questionRepository.findById(1L)).thenReturn(Optional.of(question));
        when(questionAnswerRepository.findByUserIdAndQuestionId(user.getId(), 1L))
                .thenReturn(Optional.empty());
        when(questionAnswerRepository.save(any(QuestionAnswer.class))).thenReturn(answer);
        when(questionAnswerMapper.toResponseDTO(any(QuestionAnswer.class))).thenReturn(answerResponse);
        doNothing().when(studyStreakService).updateStreak(user);

        // Act
        QuestionAnswerResponse result = questionAnswerService.answerQuestion(answerRequest, user);

        // Assert
        assertNotNull(result);
        assertTrue(result.getIsCorrect());
        verify(questionRepository, times(1)).findById(1L);
        verify(questionAnswerRepository, times(1)).findByUserIdAndQuestionId(user.getId(), 1L);
        verify(questionAnswerRepository, times(1)).save(any(QuestionAnswer.class));
        verify(studyStreakService, times(1)).updateStreak(user);
    }

    @Test
    @DisplayName("Deve responder questão incorretamente")
    void deveResponderQuestaoIncorretamente() {
        // Arrange
        answerRequest.setUserAnswer("B");
        answer.setIsCorrect(false);
        when(questionRepository.findById(1L)).thenReturn(Optional.of(question));
        when(questionAnswerRepository.findByUserIdAndQuestionId(user.getId(), 1L))
                .thenReturn(Optional.empty());
        when(questionAnswerRepository.save(any(QuestionAnswer.class))).thenReturn(answer);
        when(questionAnswerMapper.toResponseDTO(any(QuestionAnswer.class))).thenReturn(answerResponse);
        doNothing().when(studyStreakService).updateStreak(user);

        // Act
        QuestionAnswerResponse result = questionAnswerService.answerQuestion(answerRequest, user);

        // Assert
        assertNotNull(result);
        verify(questionAnswerRepository, times(1)).save(any(QuestionAnswer.class));
    }

    @Test
    @DisplayName("Deve lançar exceção quando usuário não autenticado")
    void deveLancarExcecaoQuandoUsuarioNaoAutenticado() {
        // Act & Assert
        assertThrows(UnauthenticatedUserException.class, () -> {
            questionAnswerService.answerQuestion(answerRequest, null);
        });

        verify(questionRepository, never()).findById(any());
    }

    @Test
    @DisplayName("Deve lançar exceção quando questão não encontrada")
    void deveLancarExcecaoQuandoQuestaoNaoEncontrada() {
        // Arrange
        when(questionRepository.findById(1L)).thenReturn(Optional.empty());

        // Act & Assert
        assertThrows(ResourceNotFoundException.class, () -> {
            questionAnswerService.answerQuestion(answerRequest, user);
        });

        verify(questionRepository, times(1)).findById(1L);
    }

    @Test
    @DisplayName("Deve buscar respostas do usuário com sucesso")
    void deveBuscarRespostasDoUsuarioComSucesso() {
        // Arrange
        List<QuestionAnswer> answers = Arrays.asList(answer);
        when(questionAnswerRepository.findByUserIdOrderByAnsweredAtDesc(user.getId()))
                .thenReturn(answers);
        when(questionAnswerMapper.toResponseDTO(any(QuestionAnswer.class))).thenReturn(answerResponse);

        // Act
        List<QuestionAnswerResponse> result = questionAnswerService.getUserAnswers(user);

        // Assert
        assertNotNull(result);
        assertEquals(1, result.size());
        verify(questionAnswerRepository, times(1)).findByUserIdOrderByAnsweredAtDesc(user.getId());
    }

    @Test
    @DisplayName("Deve retornar lista vazia quando usuário é null")
    void deveRetornarListaVaziaQuandoUsuarioNull() {
        // Act
        List<QuestionAnswerResponse> result = questionAnswerService.getUserAnswers(null);

        // Assert
        assertNotNull(result);
        assertTrue(result.isEmpty());
        verify(questionAnswerRepository, never()).findByUserIdOrderByAnsweredAtDesc(any());
    }

    @Test
    @DisplayName("Deve buscar resposta por ID com sucesso")
    void deveBuscarRespostaPorIDComSucesso() {
        // Arrange
        Long answerId = 1L;
        when(questionAnswerRepository.findById(answerId)).thenReturn(Optional.of(answer));
        when(questionAnswerMapper.toResponseDTO(answer)).thenReturn(answerResponse);

        // Act
        QuestionAnswerResponse result = questionAnswerService.getAnswerById(answerId, user);

        // Assert
        assertNotNull(result);
        assertEquals(answerId, result.getId());
        verify(questionAnswerRepository, times(1)).findById(answerId);
    }

    @Test
    @DisplayName("Deve lançar exceção quando resposta não encontrada")
    void deveLancarExcecaoQuandoRespostaNaoEncontrada() {
        // Arrange
        Long answerId = 999L;
        when(questionAnswerRepository.findById(answerId)).thenReturn(Optional.empty());

        // Act & Assert
        assertThrows(ResourceNotFoundException.class, () -> {
            questionAnswerService.getAnswerById(answerId, user);
        });
    }

    @Test
    @DisplayName("Deve lançar exceção quando usuário não é dono da resposta")
    void deveLancarExcecaoQuandoUsuarioNaoEDonoDaResposta() {
        // Arrange
        Long answerId = 1L;
        User otherUser = new User();
        otherUser.setId(2L);
        answer.setUser(otherUser);
        when(questionAnswerRepository.findById(answerId)).thenReturn(Optional.of(answer));

        // Act & Assert
        assertThrows(AccessDeniedException.class, () -> {
            questionAnswerService.getAnswerById(answerId, user);
        });
    }

    @Test
    @DisplayName("Deve calcular estatísticas corretamente")
    void deveCalcularEstatisticasCorretamente() {
        // Arrange
        when(questionAnswerRepository.countCorrectAnswersByUser(user)).thenReturn(5L);
        when(questionAnswerRepository.countWrongAnswersByUser(user)).thenReturn(3L);

        // Act
        AnswerStatisticsResponse result = questionAnswerService.getStatistics(user);

        // Assert
        assertNotNull(result);
        assertEquals(5L, result.getCorrectAnswers());
        assertEquals(3L, result.getWrongAnswers());
        assertEquals(50L, result.getTotalCoinsEarned()); // 5 * 10
        verify(questionAnswerRepository, times(1)).countCorrectAnswersByUser(user);
        verify(questionAnswerRepository, times(1)).countWrongAnswersByUser(user);
    }

    @Test
    @DisplayName("Deve retornar estatísticas vazias quando usuário é null")
    void deveRetornarEstatisticasVaziasQuandoUsuarioNull() {
        // Act
        AnswerStatisticsResponse result = questionAnswerService.getStatistics(null);

        // Assert
        assertNotNull(result);
        assertEquals(0L, result.getCorrectAnswers());
        assertEquals(0L, result.getWrongAnswers());
        assertEquals(0L, result.getTotalCoinsEarned());
    }
}

