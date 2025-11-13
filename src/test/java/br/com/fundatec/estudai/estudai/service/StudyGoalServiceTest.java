package br.com.fundatec.estudai.estudai.service;

import br.com.fundatec.estudai.estudai.dto.request.StudyGoalRequest;
import br.com.fundatec.estudai.estudai.dto.response.StudyGoalResponse;
import br.com.fundatec.estudai.estudai.entity.StudyGoal;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.exception.AccessDeniedException;
import br.com.fundatec.estudai.estudai.exception.InvalidDateRangeException;
import br.com.fundatec.estudai.estudai.exception.InvalidGoalDurationException;
import br.com.fundatec.estudai.estudai.exception.InvalidGoalStateException;
import br.com.fundatec.estudai.estudai.exception.ResourceNotFoundException;
import br.com.fundatec.estudai.estudai.exception.UnauthenticatedUserException;
import br.com.fundatec.estudai.estudai.mapper.StudyGoalMapper;
import br.com.fundatec.estudai.estudai.repository.StudyGoalRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
@DisplayName("Testes Unitários - StudyGoalService")
class StudyGoalServiceTest {

    @Mock
    private StudyGoalRepository studyGoalRepository;

    @Mock
    private StudyGoalMapper studyGoalMapper;

    @InjectMocks
    private StudyGoalService studyGoalService;

    private User user;
    private StudyGoalRequest goalRequest;
    private StudyGoal goal;
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

        goal = new StudyGoal();
        goal.setId(1L);
        goal.setUser(user);
        goal.setTitle("Estudar Matemática");
        goal.setStatus(StudyGoal.Status.ACTIVE);
        goal.setStartDate(LocalDate.now());
        goal.setEndDate(LocalDate.now().plusDays(30));
        goal.setProgressPercentage(0.0);

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
    void deveCriarMetaDeEstudoComSucesso() {
        // Arrange
        when(studyGoalMapper.toEntity(goalRequest)).thenReturn(goal);
        when(studyGoalRepository.save(any(StudyGoal.class))).thenReturn(goal);
        when(studyGoalMapper.toResponseDTO(goal)).thenReturn(goalResponse);

        // Act
        StudyGoalResponse result = studyGoalService.createGoal(goalRequest, user);

        // Assert
        assertNotNull(result);
        assertEquals("Estudar Matemática", result.getTitle());
        verify(studyGoalRepository, times(1)).save(any(StudyGoal.class));
    }

    @Test
    @DisplayName("Deve lançar exceção quando usuário não autenticado")
    void deveLancarExcecaoQuandoUsuarioNaoAutenticado() {
        // Act & Assert
        assertThrows(UnauthenticatedUserException.class, () -> {
            studyGoalService.createGoal(goalRequest, null);
        });

        verify(studyGoalRepository, never()).save(any());
    }

    @Test
    @DisplayName("Deve lançar exceção quando data inicial é após data final")
    void deveLancarExcecaoQuandoDataInicialAposDataFinal() {
        // Arrange
        goalRequest.setStartDate(LocalDate.now().plusDays(10));
        goalRequest.setEndDate(LocalDate.now());

        // Act & Assert
        assertThrows(InvalidDateRangeException.class, () -> {
            studyGoalService.createGoal(goalRequest, user);
        });
    }

    @Test
    @DisplayName("Deve lançar exceção quando duração é menor que 7 dias")
    void deveLancarExcecaoQuandoDuracaoMenorQue7Dias() {
        // Arrange
        goalRequest.setStartDate(LocalDate.now());
        goalRequest.setEndDate(LocalDate.now().plusDays(5));

        // Act & Assert
        assertThrows(InvalidGoalDurationException.class, () -> {
            studyGoalService.createGoal(goalRequest, user);
        });
    }

    @Test
    @DisplayName("Deve lançar exceção quando duração é maior que 365 dias")
    void deveLancarExcecaoQuandoDuracaoMaiorQue365Dias() {
        // Arrange
        goalRequest.setStartDate(LocalDate.now());
        goalRequest.setEndDate(LocalDate.now().plusDays(400));

        // Act & Assert
        assertThrows(InvalidGoalDurationException.class, () -> {
            studyGoalService.createGoal(goalRequest, user);
        });
    }

    @Test
    @DisplayName("Deve buscar metas do usuário com sucesso")
    void deveBuscarMetasDoUsuarioComSucesso() {
        // Arrange
        List<StudyGoal> goals = Arrays.asList(goal);
        when(studyGoalRepository.findByUserIdOrderByCreatedAtDesc(user.getId())).thenReturn(goals);
        when(studyGoalMapper.toResponseDTO(any(StudyGoal.class))).thenReturn(goalResponse);

        // Act
        List<StudyGoalResponse> result = studyGoalService.getUserGoals(user);

        // Assert
        assertNotNull(result);
        assertEquals(1, result.size());
        verify(studyGoalRepository, times(1)).findByUserIdOrderByCreatedAtDesc(user.getId());
    }

    @Test
    @DisplayName("Deve buscar apenas metas ativas do usuário")
    void deveBuscarApenasMetasAtivasDoUsuario() {
        // Arrange
        List<StudyGoal> goals = Arrays.asList(goal);
        when(studyGoalRepository.findByUserIdAndStatusOrderByCreatedAtDesc(
                user.getId(), StudyGoal.Status.ACTIVE)).thenReturn(goals);
        when(studyGoalMapper.toResponseDTO(any(StudyGoal.class))).thenReturn(goalResponse);

        // Act
        List<StudyGoalResponse> result = studyGoalService.getActiveGoals(user);

        // Assert
        assertNotNull(result);
        assertEquals(1, result.size());
        verify(studyGoalRepository, times(1))
                .findByUserIdAndStatusOrderByCreatedAtDesc(user.getId(), StudyGoal.Status.ACTIVE);
    }

    @Test
    @DisplayName("Deve atualizar meta ativa com sucesso")
    void deveAtualizarMetaAtivaComSucesso() {
        // Arrange
        Long goalId = 1L;
        goalRequest.setTitle("Meta Atualizada");
        when(studyGoalRepository.findById(goalId)).thenReturn(Optional.of(goal));
        doNothing().when(studyGoalMapper).updateEntityFromDTO(goalRequest, goal);
        when(studyGoalRepository.save(goal)).thenReturn(goal);
        when(studyGoalMapper.toResponseDTO(goal)).thenReturn(goalResponse);

        // Act
        StudyGoalResponse result = studyGoalService.updateGoal(goalId, goalRequest, user);

        // Assert
        assertNotNull(result);
        verify(studyGoalRepository, times(1)).findById(goalId);
        verify(studyGoalMapper, times(1)).updateEntityFromDTO(goalRequest, goal);
        verify(studyGoalRepository, times(1)).save(goal);
    }

    @Test
    @DisplayName("Deve lançar exceção ao atualizar meta não ativa")
    void deveLancarExcecaoAoAtualizarMetaNaoAtiva() {
        // Arrange
        Long goalId = 1L;
        goal.setStatus(StudyGoal.Status.COMPLETED);
        when(studyGoalRepository.findById(goalId)).thenReturn(Optional.of(goal));

        // Act & Assert
        assertThrows(InvalidGoalStateException.class, () -> {
            studyGoalService.updateGoal(goalId, goalRequest, user);
        });
    }

    @Test
    @DisplayName("Deve cancelar meta com sucesso")
    void deveCancelarMetaComSucesso() {
        // Arrange
        Long goalId = 1L;
        when(studyGoalRepository.findById(goalId)).thenReturn(Optional.of(goal));
        when(studyGoalRepository.save(goal)).thenReturn(goal);

        // Act
        assertDoesNotThrow(() -> {
            studyGoalService.cancelGoal(goalId, user);
        });

        // Assert
        assertEquals(StudyGoal.Status.CANCELLED, goal.getStatus());
        verify(studyGoalRepository, times(1)).save(goal);
    }

    @Test
    @DisplayName("Deve lançar exceção quando meta não encontrada")
    void deveLancarExcecaoQuandoMetaNaoEncontrada() {
        // Arrange
        Long goalId = 999L;
        when(studyGoalRepository.findById(goalId)).thenReturn(Optional.empty());

        // Act & Assert
        assertThrows(ResourceNotFoundException.class, () -> {
            studyGoalService.getGoalById(goalId, user);
        });
    }

    @Test
    @DisplayName("Deve lançar exceção quando usuário não é dono da meta")
    void deveLancarExcecaoQuandoUsuarioNaoEDonoDaMeta() {
        // Arrange
        Long goalId = 1L;
        User otherUser = new User();
        otherUser.setId(2L);
        goal.setUser(otherUser);
        when(studyGoalRepository.findById(goalId)).thenReturn(Optional.of(goal));

        // Act & Assert
        assertThrows(AccessDeniedException.class, () -> {
            studyGoalService.getGoalById(goalId, user);
        });
    }
}

