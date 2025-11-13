package br.com.fundatec.estudai.estudai.controller;

import br.com.fundatec.estudai.estudai.dto.request.StudyGoalRequest;
import br.com.fundatec.estudai.estudai.dto.response.StudyGoalResponse;
import br.com.fundatec.estudai.estudai.entity.StudyGoal;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.service.StudyGoalService;
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

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@WebMvcTest(StudyGoalController.class)
@DisplayName("Testes Unitários - StudyGoalController")
class StudyGoalControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private ObjectMapper objectMapper;

    @MockBean
    private StudyGoalService studyGoalService;

    @MockBean
    private AuthenticationUtils authenticationUtils;

    private User user;
    private StudyGoalRequest goalRequest;
    private StudyGoalResponse goalResponse;

    @BeforeEach
    void setUp() {
        user = new User();
        user.setId(1L);
        user.setEmail("joao@teste.com");

        goalRequest = new StudyGoalRequest();
        goalRequest.setTitle("Estudar Matemática");
        goalRequest.setDescription("Focar em álgebra");
        goalRequest.setStartDate(LocalDate.now());
        goalRequest.setEndDate(LocalDate.now().plusDays(30));
        goalRequest.setDailyMinutes(60);
        goalRequest.setDailyQuestions(10);
        goalRequest.setFocusSubject("matematica");

        goalResponse = new StudyGoalResponse();
        goalResponse.setId(1L);
        goalResponse.setTitle("Estudar Matemática");
        goalResponse.setDescription("Focar em álgebra");
        goalResponse.setStartDate(LocalDate.now());
        goalResponse.setEndDate(LocalDate.now().plusDays(30));
        goalResponse.setDailyMinutes(60);
        goalResponse.setDailyQuestions(10);
        goalResponse.setFocusSubject("matematica");
        goalResponse.setStatus(StudyGoal.Status.ACTIVE.name());
        goalResponse.setProgressPercentage(0.0);
        goalResponse.setCreatedAt(LocalDateTime.now());
        goalResponse.setUpdatedAt(LocalDateTime.now());
    }

    @Test
    @DisplayName("Deve criar meta de estudo com sucesso")
    @WithMockUser(username = "joao@teste.com")
    void deveCriarMetaDeEstudoComSucesso() throws Exception {
        // Arrange
        when(authenticationUtils.getUser(any())).thenReturn(user);
        when(studyGoalService.createGoal(goalRequest, user)).thenReturn(goalResponse);

        // Act & Assert
        mockMvc.perform(post("/study-goals")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(goalRequest)))
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.title").value("Estudar Matemática"))
                .andExpect(jsonPath("$.status").value("ACTIVE"));

        verify(studyGoalService, times(1)).createGoal(goalRequest, user);
    }

    @Test
    @DisplayName("Deve buscar metas do usuário com sucesso")
    @WithMockUser(username = "joao@teste.com")
    void deveBuscarMetasDoUsuarioComSucesso() throws Exception {
        // Arrange
        List<StudyGoalResponse> goals = Arrays.asList(goalResponse);
        when(authenticationUtils.getUser(any())).thenReturn(user);
        when(studyGoalService.getUserGoals(user)).thenReturn(goals);

        // Act & Assert
        mockMvc.perform(get("/study-goals"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$").isArray())
                .andExpect(jsonPath("$[0].title").value("Estudar Matemática"));

        verify(studyGoalService, times(1)).getUserGoals(user);
    }

    @Test
    @DisplayName("Deve buscar apenas metas ativas")
    @WithMockUser(username = "joao@teste.com")
    void deveBuscarApenasMetasAtivas() throws Exception {
        // Arrange
        List<StudyGoalResponse> goals = Arrays.asList(goalResponse);
        when(authenticationUtils.getUser(any())).thenReturn(user);
        when(studyGoalService.getActiveGoals(user)).thenReturn(goals);

        // Act & Assert
        mockMvc.perform(get("/study-goals/active"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$").isArray());

        verify(studyGoalService, times(1)).getActiveGoals(user);
    }

    @Test
    @DisplayName("Deve atualizar meta com sucesso")
    @WithMockUser(username = "joao@teste.com")
    void deveAtualizarMetaComSucesso() throws Exception {
        // Arrange
        Long goalId = 1L;
        goalRequest.setTitle("Meta Atualizada");
        goalResponse.setTitle("Meta Atualizada");
        when(authenticationUtils.getUser(any())).thenReturn(user);
        when(studyGoalService.updateGoal(goalId, goalRequest, user)).thenReturn(goalResponse);

        // Act & Assert
        mockMvc.perform(put("/study-goals/{id}", goalId)
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(goalRequest)))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.title").value("Meta Atualizada"));

        verify(studyGoalService, times(1)).updateGoal(goalId, goalRequest, user);
    }

    @Test
    @DisplayName("Deve cancelar meta com sucesso")
    @WithMockUser(username = "joao@teste.com")
    void deveCancelarMetaComSucesso() throws Exception {
        // Arrange
        Long goalId = 1L;
        when(authenticationUtils.getUser(any())).thenReturn(user);
        doNothing().when(studyGoalService).cancelGoal(goalId, user);

        // Act & Assert
        mockMvc.perform(post("/study-goals/{id}/cancel", goalId))
                .andExpect(status().isOk());

        verify(studyGoalService, times(1)).cancelGoal(goalId, user);
    }
}

