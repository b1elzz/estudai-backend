package br.com.fundatec.estudai.estudai.controller;

import br.com.fundatec.estudai.estudai.dto.response.StudyStreakResponse;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.service.StudyStreakService;
import br.com.fundatec.estudai.estudai.util.AuthenticationUtils;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;

import java.time.LocalDate;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@WebMvcTest(StudyStreakController.class)
@DisplayName("Testes Unitários - StudyStreakController")
class StudyStreakControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private StudyStreakService studyStreakService;

    @MockBean
    private AuthenticationUtils authenticationUtils;

    private User user;
    private StudyStreakResponse streakResponse;

    @BeforeEach
    void setUp() {
        user = new User();
        user.setId(1L);
        user.setEmail("joao@teste.com");

        streakResponse = new StudyStreakResponse();
        streakResponse.setId(1L);
        streakResponse.setConsecutiveDays(5);
        streakResponse.setLongestStreak(7);
        streakResponse.setLastStudyDay(LocalDate.now().minusDays(1));
    }

    @Test
    @DisplayName("Deve buscar streak do usuário com sucesso")
    @WithMockUser(username = "joao@teste.com")
    void deveBuscarStreakDoUsuarioComSucesso() throws Exception {
        // Arrange
        when(authenticationUtils.getUser(any())).thenReturn(user);
        when(studyStreakService.getUserStreak(user)).thenReturn(streakResponse);

        // Act & Assert
        mockMvc.perform(get("/study-streak"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.consecutiveDays").value(5))
                .andExpect(jsonPath("$.longestStreak").value(7));

        verify(studyStreakService, times(1)).getUserStreak(user);
    }

    @Test
    @DisplayName("Deve resetar streak com sucesso")
    @WithMockUser(username = "joao@teste.com")
    void deveResetarStreakComSucesso() throws Exception {
        // Arrange
        when(authenticationUtils.getUser(any())).thenReturn(user);
        doNothing().when(studyStreakService).resetStreak(user);

        // Act & Assert
        mockMvc.perform(post("/study-streak/reset"))
                .andExpect(status().isOk());

        verify(studyStreakService, times(1)).resetStreak(user);
    }
}

