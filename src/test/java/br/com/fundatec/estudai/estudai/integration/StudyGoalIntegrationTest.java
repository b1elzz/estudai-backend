package br.com.fundatec.estudai.estudai.integration;

import br.com.fundatec.estudai.estudai.dto.request.StudyGoalRequest;
import br.com.fundatec.estudai.estudai.entity.StudyGoal;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.repository.StudyGoalRepository;
import br.com.fundatec.estudai.estudai.repository.UserRepository;
import br.com.fundatec.estudai.estudai.service.TokenService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;

import static org.junit.jupiter.api.Assertions.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@SpringBootTest
@AutoConfigureMockMvc
@ActiveProfiles("test")
@Transactional
@DisplayName("Testes de Integração - Metas de Estudo")
class StudyGoalIntegrationTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private ObjectMapper objectMapper;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private StudyGoalRepository studyGoalRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private TokenService tokenService;

    private User user;
    private String authToken;

    @BeforeEach
    void setUp() {
        userRepository.deleteAll();
        studyGoalRepository.deleteAll();

        // Criar usuário
        user = new User();
        user.setName("João Silva");
        user.setEmail("joao@teste.com");
        user.setPassword(passwordEncoder.encode("Senha@123"));
        user.setBirthDate(LocalDate.of(2000, 1, 1));
        user = userRepository.save(user);

        // Gerar token
        authToken = tokenService.generateToken(user.getEmail());
    }

    @Test
    @DisplayName("Deve criar meta de estudo com sucesso")
    void deveCriarMetaDeEstudoComSucesso() throws Exception {
        // Arrange
        StudyGoalRequest request = new StudyGoalRequest();
        request.setTitle("Estudar Matemática");
        request.setDescription("Focar em álgebra e geometria");
        request.setStartDate(LocalDate.now());
        request.setEndDate(LocalDate.now().plusDays(30));
        request.setDailyMinutes(60);
        request.setDailyQuestions(10);
        request.setFocusSubject("matematica");

        // Act & Assert
        mockMvc.perform(post("/api/study-goals")
                        .header("Authorization", "Bearer " + authToken)
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(request)))
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.title").value("Estudar Matemática"))
                .andExpect(jsonPath("$.status").value("ACTIVE"))
                .andExpect(jsonPath("$.progressPercentage").value(0.0));

        // Verificar se meta foi salva
        var goals = studyGoalRepository.findByUserIdOrderByCreatedAtDesc(user.getId());
        assertEquals(1, goals.size());
        assertEquals("Estudar Matemática", goals.get(0).getTitle());
    }

    @Test
    @DisplayName("Deve buscar todas as metas do usuário")
    void deveBuscarTodasAsMetasDoUsuario() throws Exception {
        // Arrange - Criar múltiplas metas
        StudyGoal goal1 = new StudyGoal();
        goal1.setUser(user);
        goal1.setTitle("Meta 1");
        goal1.setStartDate(LocalDate.now());
        goal1.setEndDate(LocalDate.now().plusDays(30));
        goal1.setStatus(StudyGoal.Status.ACTIVE);
        studyGoalRepository.save(goal1);

        StudyGoal goal2 = new StudyGoal();
        goal2.setUser(user);
        goal2.setTitle("Meta 2");
        goal2.setStartDate(LocalDate.now());
        goal2.setEndDate(LocalDate.now().plusDays(60));
        goal2.setStatus(StudyGoal.Status.ACTIVE);
        studyGoalRepository.save(goal2);

        // Act & Assert
        mockMvc.perform(get("/api/study-goals")
                        .header("Authorization", "Bearer " + authToken))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$").isArray())
                .andExpect(jsonPath("$.length()").value(2));
    }

    @Test
    @DisplayName("Deve buscar apenas metas ativas")
    void deveBuscarApenasMetasAtivas() throws Exception {
        // Arrange
        StudyGoal activeGoal = new StudyGoal();
        activeGoal.setUser(user);
        activeGoal.setTitle("Meta Ativa");
        activeGoal.setStartDate(LocalDate.now());
        activeGoal.setEndDate(LocalDate.now().plusDays(30));
        activeGoal.setStatus(StudyGoal.Status.ACTIVE);
        studyGoalRepository.save(activeGoal);

        StudyGoal cancelledGoal = new StudyGoal();
        cancelledGoal.setUser(user);
        cancelledGoal.setTitle("Meta Cancelada");
        cancelledGoal.setStartDate(LocalDate.now());
        cancelledGoal.setEndDate(LocalDate.now().plusDays(30));
        cancelledGoal.setStatus(StudyGoal.Status.CANCELLED);
        studyGoalRepository.save(cancelledGoal);

        // Act & Assert
        mockMvc.perform(get("/api/study-goals/active")
                        .header("Authorization", "Bearer " + authToken))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$").isArray())
                .andExpect(jsonPath("$.length()").value(1))
                .andExpect(jsonPath("$[0].status").value("ACTIVE"));
    }

    @Test
    @DisplayName("Deve atualizar meta ativa com sucesso")
    void deveAtualizarMetaAtivaComSucesso() throws Exception {
        // Arrange - Criar meta
        StudyGoal goal = new StudyGoal();
        goal.setUser(user);
        goal.setTitle("Meta Original");
        goal.setDescription("Descrição original");
        goal.setStartDate(LocalDate.now());
        goal.setEndDate(LocalDate.now().plusDays(30));
        goal.setStatus(StudyGoal.Status.ACTIVE);
        goal = studyGoalRepository.save(goal);

        // Atualizar request
        StudyGoalRequest updateRequest = new StudyGoalRequest();
        updateRequest.setTitle("Meta Atualizada");
        updateRequest.setDescription("Nova descrição");
        updateRequest.setStartDate(LocalDate.now());
        updateRequest.setEndDate(LocalDate.now().plusDays(45));
        updateRequest.setDailyMinutes(90);
        updateRequest.setDailyQuestions(15);

        // Act & Assert
        mockMvc.perform(put("/api/study-goals/{id}", goal.getId())
                        .header("Authorization", "Bearer " + authToken)
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(updateRequest)))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.title").value("Meta Atualizada"));

        // Verificar atualização no banco
        StudyGoal updatedGoal = studyGoalRepository.findById(goal.getId()).orElseThrow();
        assertEquals("Meta Atualizada", updatedGoal.getTitle());
    }

    @Test
    @DisplayName("Deve cancelar meta com sucesso")
    void deveCancelarMetaComSucesso() throws Exception {
        // Arrange
        StudyGoal goal = new StudyGoal();
        goal.setUser(user);
        goal.setTitle("Meta para Cancelar");
        goal.setStartDate(LocalDate.now());
        goal.setEndDate(LocalDate.now().plusDays(30));
        goal.setStatus(StudyGoal.Status.ACTIVE);
        goal = studyGoalRepository.save(goal);

        // Act
        mockMvc.perform(post("/api/study-goals/{id}/cancel", goal.getId())
                        .header("Authorization", "Bearer " + authToken))
                .andExpect(status().isOk());

        // Assert
        StudyGoal cancelledGoal = studyGoalRepository.findById(goal.getId()).orElseThrow();
        assertEquals(StudyGoal.Status.CANCELLED, cancelledGoal.getStatus());
    }

    @Test
    @DisplayName("Deve retornar erro ao criar meta com duração menor que 7 dias")
    void deveRetornarErroAoCriarMetaComDuracaoMenorQue7Dias() throws Exception {
        // Arrange
        StudyGoalRequest request = new StudyGoalRequest();
        request.setTitle("Meta Inválida");
        request.setStartDate(LocalDate.now());
        request.setEndDate(LocalDate.now().plusDays(5)); // Menos de 7 dias
        request.setDailyMinutes(60);
        request.setDailyQuestions(10);

        // Act & Assert
        mockMvc.perform(post("/api/study-goals")
                        .header("Authorization", "Bearer " + authToken)
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(request)))
                .andExpect(status().isBadRequest());
    }
}

