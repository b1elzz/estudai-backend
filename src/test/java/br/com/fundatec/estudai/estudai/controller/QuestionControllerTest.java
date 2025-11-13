package br.com.fundatec.estudai.estudai.controller;

import br.com.fundatec.estudai.estudai.dto.response.QuestionResponse;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.service.QuestionService;
import br.com.fundatec.estudai.estudai.util.AuthenticationUtils;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;

import java.util.Arrays;
import java.util.List;

import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@WebMvcTest(QuestionController.class)
@DisplayName("Testes Unitários - QuestionController")
class QuestionControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private QuestionService questionService;

    @MockBean
    private AuthenticationUtils authenticationUtils;

    private QuestionResponse questionResponse;
    private List<QuestionResponse> questionResponses;

    @BeforeEach
    void setUp() {
        questionResponse = new QuestionResponse();
        questionResponse.setId(1L);
        questionResponse.setTitle("Questão Teste");
        questionResponse.setIndex(1);
        questionResponse.setYear(2023);
        questionResponse.setSubject("matematica");
        questionResponse.setCorrectAlternative("A");

        questionResponses = Arrays.asList(questionResponse);
    }

    @Test
    @DisplayName("Deve buscar questões sem filtros com sucesso")
    void deveBuscarQuestoesSemFiltrosComSucesso() throws Exception {
        // Arrange
        when(questionService.getQuestions(null, null, null, null, null))
                .thenReturn(questionResponses);

        // Act & Assert
        mockMvc.perform(get("/questions"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$").isArray())
                .andExpect(jsonPath("$[0].id").value(1L))
                .andExpect(jsonPath("$[0].title").value("Questão Teste"));

        verify(questionService, times(1)).getQuestions(null, null, null, null, null);
    }

    @Test
    @DisplayName("Deve buscar questões com filtro de matéria")
    void deveBuscarQuestoesComFiltroDeMateria() throws Exception {
        // Arrange
        String subject = "matematica";
        when(questionService.getQuestions(eq(subject), isNull(), isNull(), isNull(), isNull()))
                .thenReturn(questionResponses);

        // Act & Assert
        mockMvc.perform(get("/questions")
                        .param("subject", subject))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$").isArray());

        verify(questionService, times(1)).getQuestions(eq(subject), isNull(), isNull(), isNull(), isNull());
    }

    @Test
    @DisplayName("Deve buscar questão por ID com sucesso")
    void deveBuscarQuestaoPorIDComSucesso() throws Exception {
        // Arrange
        Long questionId = 1L;
        when(questionService.getQuestionById(questionId)).thenReturn(questionResponse);

        // Act & Assert
        mockMvc.perform(get("/questions/{id}", questionId))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id").value(1L))
                .andExpect(jsonPath("$.title").value("Questão Teste"));

        verify(questionService, times(1)).getQuestionById(questionId);
    }

    @Test
    @DisplayName("Deve retornar lista de matérias disponíveis")
    void deveRetornarListaDeMateriasDisponiveis() throws Exception {
        // Arrange
        List<String> subjects = Arrays.asList("matematica", "portugues", "historia");
        when(questionService.getSubjects()).thenReturn(subjects);

        // Act & Assert
        mockMvc.perform(get("/questions/subjects"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$").isArray())
                .andExpect(jsonPath("$[0]").value("matematica"));

        verify(questionService, times(1)).getSubjects();
    }

    @Test
    @DisplayName("Deve retornar lista de anos disponíveis")
    void deveRetornarListaDeAnosDisponiveis() throws Exception {
        // Arrange
        List<Integer> years = Arrays.asList(2022, 2023);
        when(questionService.getYears()).thenReturn(years);

        // Act & Assert
        mockMvc.perform(get("/questions/years"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$").isArray())
                .andExpect(jsonPath("$[0]").value(2022));

        verify(questionService, times(1)).getYears();
    }

    @Test
    @DisplayName("Deve buscar questões com usuário autenticado")
    @WithMockUser(username = "joao@teste.com")
    void deveBuscarQuestoesComUsuarioAutenticado() throws Exception {
        // Arrange
        User user = new User();
        user.setId(1L);
        user.setEmail("joao@teste.com");
        when(authenticationUtils.getUser(any())).thenReturn(user);
        when(questionService.getQuestions(any(), any(), any(), any(), eq(user)))
                .thenReturn(questionResponses);

        // Act & Assert
        mockMvc.perform(get("/questions"))
                .andExpect(status().isOk());

        verify(questionService, times(1)).getQuestions(any(), any(), any(), any(), eq(user));
    }
}

