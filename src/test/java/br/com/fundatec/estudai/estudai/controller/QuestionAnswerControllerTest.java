package br.com.fundatec.estudai.estudai.controller;

import br.com.fundatec.estudai.estudai.dto.request.QuestionAnswerRequest;
import br.com.fundatec.estudai.estudai.dto.response.AnswerStatisticsResponse;
import br.com.fundatec.estudai.estudai.dto.response.QuestionAnswerResponse;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.service.QuestionAnswerService;
import br.com.fundatec.estudai.estudai.util.AuthenticationUtils;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;

import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@WebMvcTest(QuestionAnswerController.class)
@DisplayName("Testes Unitários - QuestionAnswerController")
class QuestionAnswerControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private ObjectMapper objectMapper;

    @MockBean
    private QuestionAnswerService questionAnswerService;

    @MockBean
    private AuthenticationUtils authenticationUtils;

    private User user;
    private QuestionAnswerRequest answerRequest;
    private QuestionAnswerResponse answerResponse;
    private AnswerStatisticsResponse statisticsResponse;

    @BeforeEach
    void setUp() {
        user = new User();
        user.setId(1L);
        user.setEmail("joao@teste.com");

        answerRequest = new QuestionAnswerRequest();
        answerRequest.setQuestionId(1L);
        answerRequest.setUserAnswer("A");
        answerRequest.setResponseTimeSeconds(30);

        answerResponse = new QuestionAnswerResponse();
        answerResponse.setId(1L);
        answerResponse.setQuestionId(1L);
        answerResponse.setUserAnswer("A");
        answerResponse.setIsCorrect(true);
        answerResponse.setResponseTimeSeconds(30);
        answerResponse.setAnsweredAt(LocalDateTime.now());

        statisticsResponse = AnswerStatisticsResponse.from(5L, 3L, 50L);
    }

    @Test
    @DisplayName("Deve responder questão com sucesso")
    @WithMockUser(username = "joao@teste.com")
    void deveResponderQuestaoComSucesso() throws Exception {
        // Arrange
        when(authenticationUtils.getUser(any())).thenReturn(user);
        when(questionAnswerService.answerQuestion(answerRequest, user)).thenReturn(answerResponse);

        // Act & Assert
        mockMvc.perform(post("/answers")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(answerRequest)))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.isCorrect").value(true))
                .andExpect(jsonPath("$.userAnswer").value("A"));

        verify(questionAnswerService, times(1)).answerQuestion(answerRequest, user);
    }

    @Test
    @DisplayName("Deve buscar respostas do usuário com sucesso")
    @WithMockUser(username = "joao@teste.com")
    void deveBuscarRespostasDoUsuarioComSucesso() throws Exception {
        // Arrange
        List<QuestionAnswerResponse> answers = Arrays.asList(answerResponse);
        when(authenticationUtils.getUser(any())).thenReturn(user);
        when(questionAnswerService.getUserAnswers(user)).thenReturn(answers);

        // Act & Assert
        mockMvc.perform(get("/answers"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$").isArray())
                .andExpect(jsonPath("$[0].id").value(1L));

        verify(questionAnswerService, times(1)).getUserAnswers(user);
    }

    @Test
    @DisplayName("Deve buscar resposta por ID com sucesso")
    @WithMockUser(username = "joao@teste.com")
    void deveBuscarRespostaPorIDComSucesso() throws Exception {
        // Arrange
        Long answerId = 1L;
        when(authenticationUtils.getUser(any())).thenReturn(user);
        when(questionAnswerService.getAnswerById(answerId, user)).thenReturn(answerResponse);

        // Act & Assert
        mockMvc.perform(get("/answers/{id}", answerId))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id").value(1L));

        verify(questionAnswerService, times(1)).getAnswerById(answerId, user);
    }

    @Test
    @DisplayName("Deve buscar estatísticas com sucesso")
    @WithMockUser(username = "joao@teste.com")
    void deveBuscarEstatisticasComSucesso() throws Exception {
        // Arrange
        when(authenticationUtils.getUser(any())).thenReturn(user);
        when(questionAnswerService.getStatistics(user)).thenReturn(statisticsResponse);

        // Act & Assert
        mockMvc.perform(get("/answers/statistics"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.correctAnswers").value(5L))
                .andExpect(jsonPath("$.wrongAnswers").value(3L))
                .andExpect(jsonPath("$.totalCoinsEarned").value(50L));

        verify(questionAnswerService, times(1)).getStatistics(user);
    }

    @Test
    @DisplayName("Deve retornar erro 400 quando dados inválidos")
    @WithMockUser(username = "joao@teste.com")
    void deveRetornarErro400QuandoDadosInvalidos() throws Exception {
        // Arrange
        QuestionAnswerRequest invalidRequest = new QuestionAnswerRequest();
        invalidRequest.setQuestionId(null);
        invalidRequest.setUserAnswer("Z"); // Alternativa inválida
        invalidRequest.setResponseTimeSeconds(-1);

        when(authenticationUtils.getUser(any())).thenReturn(user);

        // Act & Assert
        mockMvc.perform(post("/answers")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(invalidRequest)))
                .andExpect(status().isBadRequest());

        verify(questionAnswerService, never()).answerQuestion(any(), any());
    }
}

