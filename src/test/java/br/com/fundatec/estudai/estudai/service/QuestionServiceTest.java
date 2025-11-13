package br.com.fundatec.estudai.estudai.service;

import br.com.fundatec.estudai.estudai.dto.response.QuestionResponse;
import br.com.fundatec.estudai.estudai.entity.Question;
import br.com.fundatec.estudai.estudai.entity.QuestionAnswer;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.exception.ResourceNotFoundException;
import br.com.fundatec.estudai.estudai.mapper.QuestionMapper;
import br.com.fundatec.estudai.estudai.repository.QuestionAnswerRepository;
import br.com.fundatec.estudai.estudai.repository.QuestionRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
@DisplayName("Testes Unitários - QuestionService")
class QuestionServiceTest {

    @Mock
    private QuestionRepository questionRepository;

    @Mock
    private QuestionAnswerRepository questionAnswerRepository;

    @Mock
    private QuestionMapper questionMapper;

    @InjectMocks
    private QuestionService questionService;

    private Question question;
    private QuestionResponse questionResponse;
    private User user;

    @BeforeEach
    void setUp() {
        question = new Question();
        question.setId(1L);
        question.setTitle("Questão Teste");
        question.setYear(2023);
        question.setSubject("matematica");
        question.setCorrectAlternative("A");

        questionResponse = new QuestionResponse();
        questionResponse.setId(1L);
        questionResponse.setTitle("Questão Teste");
        questionResponse.setIndex(1);
        questionResponse.setYear(2023);
        questionResponse.setSubject("matematica");
        questionResponse.setCorrectAlternative("A");

        user = new User();
        user.setId(1L);
        user.setEmail("joao@teste.com");
    }

    @Test
    @DisplayName("Deve buscar questões sem filtros com sucesso")
    void deveBuscarQuestoesSemFiltrosComSucesso() {
        // Arrange
        List<Question> questions = Arrays.asList(question);
        when(questionRepository.findRandom(10)).thenReturn(questions);
        when(questionMapper.toResponseDTO(any(Question.class))).thenReturn(questionResponse);

        // Act
        List<QuestionResponse> result = questionService.getQuestions(null, null, 10, false, null);

        // Assert
        assertNotNull(result);
        assertEquals(1, result.size());
        verify(questionRepository, times(1)).findRandom(10);
        verify(questionMapper, times(1)).toResponseDTO(any(Question.class));
    }

    @Test
    @DisplayName("Deve buscar questões por matéria com sucesso")
    void deveBuscarQuestoesPorMateriaComSucesso() {
        // Arrange
        String subject = "matematica";
        List<Question> questions = Arrays.asList(question);
        when(questionRepository.findRandomBySubject(subject, 10)).thenReturn(questions);
        when(questionMapper.toResponseDTO(any(Question.class))).thenReturn(questionResponse);

        // Act
        List<QuestionResponse> result = questionService.getQuestions(subject, null, 10, false, null);

        // Assert
        assertNotNull(result);
        assertEquals(1, result.size());
        verify(questionRepository, times(1)).findRandomBySubject(subject, 10);
    }

    @Test
    @DisplayName("Deve buscar questões por ano com sucesso")
    void deveBuscarQuestoesPorAnoComSucesso() {
        // Arrange
        Integer year = 2023;
        List<Question> questions = Arrays.asList(question);
        when(questionRepository.findRandomByYear(year, 10)).thenReturn(questions);
        when(questionMapper.toResponseDTO(any(Question.class))).thenReturn(questionResponse);

        // Act
        List<QuestionResponse> result = questionService.getQuestions(null, year, 10, false, null);

        // Assert
        assertNotNull(result);
        assertEquals(1, result.size());
        verify(questionRepository, times(1)).findRandomByYear(year, 10);
    }

    @Test
    @DisplayName("Deve buscar questões por matéria e ano com sucesso")
    void deveBuscarQuestoesPorMateriaEAnoComSucesso() {
        // Arrange
        String subject = "matematica";
        Integer year = 2023;
        List<Question> questions = Arrays.asList(question);
        when(questionRepository.findRandomBySubjectAndYear(subject, year, 10)).thenReturn(questions);
        when(questionMapper.toResponseDTO(any(Question.class))).thenReturn(questionResponse);

        // Act
        List<QuestionResponse> result = questionService.getQuestions(subject, year, 10, false, null);

        // Assert
        assertNotNull(result);
        assertEquals(1, result.size());
        verify(questionRepository, times(1)).findRandomBySubjectAndYear(subject, year, 10);
    }

    @Test
    @DisplayName("Deve filtrar questões já respondidas quando includeAnswered é false")
    void deveFiltrarQuestoesJaRespondidas() {
        // Arrange
        List<Question> questions = Arrays.asList(question);
        QuestionAnswer answer = new QuestionAnswer();
        answer.setQuestion(question);
        when(questionRepository.findRandom(10)).thenReturn(questions);
        when(questionAnswerRepository.findByUserIdOrderByAnsweredAtDesc(user.getId()))
                .thenReturn(Arrays.asList(answer));
        when(questionMapper.toResponseDTO(any(Question.class))).thenReturn(questionResponse);

        // Act
        List<QuestionResponse> result = questionService.getQuestions(null, null, 10, false, user);

        // Assert
        assertNotNull(result);
        assertEquals(0, result.size()); // Questão foi filtrada
        verify(questionAnswerRepository, times(1)).findByUserIdOrderByAnsweredAtDesc(user.getId());
    }

    @Test
    @DisplayName("Deve usar limite padrão quando limit é null")
    void deveUsarLimitePadraoQuandoLimitNull() {
        // Arrange
        List<Question> questions = Arrays.asList(question);
        when(questionRepository.findRandom(10)).thenReturn(questions);
        when(questionMapper.toResponseDTO(any(Question.class))).thenReturn(questionResponse);

        // Act
        questionService.getQuestions(null, null, null, false, null);

        // Assert
        verify(questionRepository, times(1)).findRandom(10);
    }

    @Test
    @DisplayName("Deve limitar a 100 questões quando limit excede máximo")
    void deveLimitarA100QuestoesQuandoLimitExcedeMaximo() {
        // Arrange
        List<Question> questions = Arrays.asList(question);
        when(questionRepository.findRandom(100)).thenReturn(questions);
        when(questionMapper.toResponseDTO(any(Question.class))).thenReturn(questionResponse);

        // Act
        questionService.getQuestions(null, null, 200, false, null);

        // Assert
        verify(questionRepository, times(1)).findRandom(100);
    }

    @Test
    @DisplayName("Deve buscar questão por ID com sucesso")
    void deveBuscarQuestaoPorIDComSucesso() {
        // Arrange
        Long questionId = 1L;
        when(questionRepository.findById(questionId)).thenReturn(Optional.of(question));
        when(questionMapper.toResponseDTO(question)).thenReturn(questionResponse);

        // Act
        QuestionResponse result = questionService.getQuestionById(questionId);

        // Assert
        assertNotNull(result);
        assertEquals(questionId, result.getId());
        verify(questionRepository, times(1)).findById(questionId);
        verify(questionMapper, times(1)).toResponseDTO(question);
    }

    @Test
    @DisplayName("Deve lançar exceção quando questão não encontrada")
    void deveLancarExcecaoQuandoQuestaoNaoEncontrada() {
        // Arrange
        Long questionId = 999L;
        when(questionRepository.findById(questionId)).thenReturn(Optional.empty());

        // Act & Assert
        assertThrows(ResourceNotFoundException.class, () -> {
            questionService.getQuestionById(questionId);
        });

        verify(questionRepository, times(1)).findById(questionId);
    }

    @Test
    @DisplayName("Deve retornar lista de matérias disponíveis")
    void deveRetornarListaDeMateriasDisponiveis() {
        // Arrange
        List<String> subjects = Arrays.asList("matematica", "portugues", "historia");
        when(questionRepository.findDistinctSubjects()).thenReturn(subjects);

        // Act
        List<String> result = questionService.getSubjects();

        // Assert
        assertNotNull(result);
        assertEquals(3, result.size());
        assertTrue(result.contains("matematica"));
        verify(questionRepository, times(1)).findDistinctSubjects();
    }

    @Test
    @DisplayName("Deve retornar lista de anos disponíveis")
    void deveRetornarListaDeAnosDisponiveis() {
        // Arrange
        List<Integer> years = Arrays.asList(2022, 2023);
        when(questionRepository.findDistinctYears()).thenReturn(years);

        // Act
        List<Integer> result = questionService.getYears();

        // Assert
        assertNotNull(result);
        assertEquals(2, result.size());
        assertTrue(result.contains(2023));
        verify(questionRepository, times(1)).findDistinctYears();
    }
}

