package br.com.fundatec.estudai.estudai.service;

import br.com.fundatec.estudai.estudai.dto.response.StudyStreakResponse;
import br.com.fundatec.estudai.estudai.entity.StudyStreak;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.mapper.StudyStreakMapper;
import br.com.fundatec.estudai.estudai.repository.QuestionAnswerRepository;
import br.com.fundatec.estudai.estudai.repository.StudyStreakRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.time.LocalDate;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
@DisplayName("Testes Unitários - StudyStreakService")
class StudyStreakServiceTest {

    @Mock
    private StudyStreakRepository studyStreakRepository;

    @Mock
    private QuestionAnswerRepository questionAnswerRepository;

    @Mock
    private StudyStreakMapper studyStreakMapper;

    @InjectMocks
    private StudyStreakService studyStreakService;

    private User user;
    private StudyStreak streak;
    private StudyStreakResponse streakResponse;

    @BeforeEach
    void setUp() {
        user = new User();
        user.setId(1L);
        user.setEmail("joao@teste.com");

        streak = new StudyStreak();
        streak.setId(1L);
        streak.setUser(user);
        streak.setConsecutiveDays(5);
        streak.setLongestStreak(7);
        streak.setLastStudyDay(LocalDate.now().minusDays(1));

        streakResponse = new StudyStreakResponse();
        streakResponse.setId(1L);
        streakResponse.setConsecutiveDays(5);
        streakResponse.setLongestStreak(7);
        streakResponse.setLastStudyDay(LocalDate.now().minusDays(1));
    }

    @Test
    @DisplayName("Deve buscar streak do usuário com sucesso")
    void deveBuscarStreakDoUsuarioComSucesso() {
        // Arrange
        when(studyStreakRepository.findByUser(user)).thenReturn(Optional.of(streak));
        when(studyStreakMapper.toResponseDTO(streak)).thenReturn(streakResponse);

        // Act
        StudyStreakResponse result = studyStreakService.getUserStreak(user);

        // Assert
        assertNotNull(result);
        assertEquals(5, result.getConsecutiveDays());
        verify(studyStreakRepository, times(1)).findByUser(user);
    }

    @Test
    @DisplayName("Deve criar novo streak quando não existe")
    void deveCriarNovoStreakQuandoNaoExiste() {
        // Arrange
        when(studyStreakRepository.findByUser(user)).thenReturn(Optional.empty());
        when(studyStreakRepository.save(any(StudyStreak.class))).thenReturn(streak);
        when(studyStreakMapper.toResponseDTO(any(StudyStreak.class))).thenReturn(streakResponse);

        // Act
        StudyStreakResponse result = studyStreakService.getUserStreak(user);

        // Assert
        assertNotNull(result);
        verify(studyStreakRepository, times(1)).save(any(StudyStreak.class));
    }

    @Test
    @DisplayName("Deve retornar streak vazio quando usuário é null")
    void deveRetornarStreakVazioQuandoUsuarioNull() {
        // Act
        StudyStreakResponse result = studyStreakService.getUserStreak(null);

        // Assert
        assertNotNull(result);
        assertEquals(0, result.getConsecutiveDays());
        assertEquals(0L, result.getId());
    }

    @Test
    @DisplayName("Deve incrementar streak quando estudou hoje")
    void deveIncrementarStreakQuandoEstudouHoje() {
        // Arrange
        LocalDate today = LocalDate.now();
        streak.setLastStudyDay(today.minusDays(1));
        when(studyStreakRepository.findByUser(user)).thenReturn(Optional.of(streak));
        when(questionAnswerRepository.countAnswersByUserAndDate(user, today)).thenReturn(1L);
        when(studyStreakRepository.save(streak)).thenReturn(streak);

        // Act
        studyStreakService.updateStreak(user);

        // Assert
        assertEquals(6, streak.getConsecutiveDays());
        assertEquals(today, streak.getLastStudyDay());
        verify(studyStreakRepository, times(1)).save(streak);
    }

    @Test
    @DisplayName("Deve resetar streak quando não estudou por mais de 1 dia")
    void deveResetarStreakQuandoNaoEstudouPorMaisDe1Dia() {
        // Arrange
        LocalDate today = LocalDate.now();
        streak.setLastStudyDay(today.minusDays(2));
        when(studyStreakRepository.findByUser(user)).thenReturn(Optional.of(streak));
        when(questionAnswerRepository.countAnswersByUserAndDate(user, today)).thenReturn(0L);
        when(studyStreakRepository.save(streak)).thenReturn(streak);

        // Act
        studyStreakService.updateStreak(user);

        // Assert
        assertEquals(0, streak.getConsecutiveDays());
        verify(studyStreakRepository, times(1)).save(streak);
    }

    @Test
    @DisplayName("Deve atualizar longest streak quando necessário")
    void deveAtualizarLongestStreakQuandoNecessario() {
        // Arrange
        LocalDate today = LocalDate.now();
        streak.setConsecutiveDays(6);
        streak.setLongestStreak(6);
        streak.setLastStudyDay(today.minusDays(1));
        when(studyStreakRepository.findByUser(user)).thenReturn(Optional.of(streak));
        when(questionAnswerRepository.countAnswersByUserAndDate(user, today)).thenReturn(1L);
        when(studyStreakRepository.save(streak)).thenReturn(streak);

        // Act
        studyStreakService.updateStreak(user);

        // Assert
        assertEquals(7, streak.getConsecutiveDays());
        assertEquals(7, streak.getLongestStreak());
    }

    @Test
    @DisplayName("Deve resetar streak manualmente")
    void deveResetarStreakManualmente() {
        // Arrange
        when(studyStreakRepository.findByUser(user)).thenReturn(Optional.of(streak));
        when(studyStreakRepository.save(streak)).thenReturn(streak);

        // Act
        studyStreakService.resetStreak(user);

        // Assert
        assertEquals(0, streak.getConsecutiveDays());
        assertNull(streak.getLastStudyDay());
        verify(studyStreakRepository, times(1)).save(streak);
    }

    @Test
    @DisplayName("Não deve fazer nada quando usuário é null no updateStreak")
    void naoDeveFazerNadaQuandoUsuarioNullNoUpdateStreak() {
        // Act
        studyStreakService.updateStreak(null);

        // Assert
        verify(studyStreakRepository, never()).findByUser(any());
        verify(studyStreakRepository, never()).save(any());
    }

    @Test
    @DisplayName("Não deve fazer nada quando usuário é null no resetStreak")
    void naoDeveFazerNadaQuandoUsuarioNullNoResetStreak() {
        // Act
        studyStreakService.resetStreak(null);

        // Assert
        verify(studyStreakRepository, never()).findByUser(any());
        verify(studyStreakRepository, never()).save(any());
    }
}

