package br.com.fundatec.estudai.estudai.integration;

import br.com.fundatec.estudai.estudai.entity.Question;
import br.com.fundatec.estudai.estudai.entity.QuestionAnswer;
import br.com.fundatec.estudai.estudai.entity.StudyStreak;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.repository.QuestionAnswerRepository;
import br.com.fundatec.estudai.estudai.repository.QuestionRepository;
import br.com.fundatec.estudai.estudai.repository.StudyStreakRepository;
import br.com.fundatec.estudai.estudai.repository.UserRepository;
import br.com.fundatec.estudai.estudai.service.StudyStreakService;
import br.com.fundatec.estudai.estudai.service.TokenService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.time.LocalDateTime;

import static org.junit.jupiter.api.Assertions.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@SpringBootTest
@AutoConfigureMockMvc
@ActiveProfiles("test")
@Transactional
@DisplayName("Testes de Integração - Study Streak")
class StudyStreakIntegrationTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private StudyStreakRepository studyStreakRepository;

    @Autowired
    private QuestionRepository questionRepository;

    @Autowired
    private QuestionAnswerRepository questionAnswerRepository;

    @Autowired
    private StudyStreakService studyStreakService;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private TokenService tokenService;

    private User user;
    private String authToken;
    private Question question;

    @BeforeEach
    void setUp() {
        userRepository.deleteAll();
        studyStreakRepository.deleteAll();
        questionRepository.deleteAll();
        questionAnswerRepository.deleteAll();

        // Criar usuário
        user = new User();
        user.setName("João Silva");
        user.setEmail("joao@teste.com");
        user.setPassword(passwordEncoder.encode("Senha@123"));
        user.setBirthDate(LocalDate.of(2000, 1, 1));
        user = userRepository.save(user);

        // Gerar token
        authToken = tokenService.generateToken(user.getEmail());

        // Criar questão
        question = new Question();
        question.setTitle("Questão Teste");
        question.setIndex(1);
        question.setYear(2023);
        question.setSubject("matematica");
        question.setCorrectAlternative("A");
        question = questionRepository.save(question);
    }

    @Test
    @DisplayName("Deve criar streak inicial quando usuário responde primeira questão")
    void deveCriarStreakInicialQuandoUsuarioRespondePrimeiraQuestao() {
        // Arrange
        QuestionAnswer answer = new QuestionAnswer();
        answer.setUser(user);
        answer.setQuestion(question);
        answer.setUserAnswer("A");
        answer.setIsCorrect(true);
        answer.setAnsweredAt(LocalDateTime.now());
        questionAnswerRepository.save(answer);

        // Act
        studyStreakService.updateStreak(user);

        // Assert
        StudyStreak streak = studyStreakRepository.findByUser(user).orElse(null);
        assertNotNull(streak);
        assertEquals(1, streak.getConsecutiveDays());
        assertEquals(LocalDate.now(), streak.getLastStudyDay());
    }

    @Test
    @DisplayName("Deve incrementar streak em dias consecutivos")
    void deveIncrementarStreakEmDiasConsecutivos() {
        // Arrange - Criar streak inicial
        StudyStreak streak = new StudyStreak();
        streak.setUser(user);
        streak.setConsecutiveDays(5);
        streak.setLastStudyDay(LocalDate.now().minusDays(1));
        streak.setLongestStreak(5);
        studyStreakRepository.save(streak);

        // Criar resposta de hoje
        QuestionAnswer answer = new QuestionAnswer();
        answer.setUser(user);
        answer.setQuestion(question);
        answer.setUserAnswer("A");
        answer.setIsCorrect(true);
        answer.setAnsweredAt(LocalDateTime.now());
        questionAnswerRepository.save(answer);

        // Act
        studyStreakService.updateStreak(user);

        // Assert
        StudyStreak updatedStreak = studyStreakRepository.findByUser(user).orElseThrow();
        assertEquals(6, updatedStreak.getConsecutiveDays());
        assertEquals(LocalDate.now(), updatedStreak.getLastStudyDay());
    }

    @Test
    @DisplayName("Deve resetar streak quando não estuda por mais de 1 dia")
    void deveResetarStreakQuandoNaoEstudaPorMaisDe1Dia() {
        // Arrange
        StudyStreak streak = new StudyStreak();
        streak.setUser(user);
        streak.setConsecutiveDays(5);
        streak.setLastStudyDay(LocalDate.now().minusDays(2)); // 2 dias sem estudar
        streak.setLongestStreak(5);
        studyStreakRepository.save(streak);

        // Act
        studyStreakService.updateStreak(user);

        // Assert
        StudyStreak updatedStreak = studyStreakRepository.findByUser(user).orElseThrow();
        assertEquals(0, updatedStreak.getConsecutiveDays());
    }

    @Test
    @DisplayName("Deve buscar streak do usuário via API")
    void deveBuscarStreakDoUsuarioViaAPI() throws Exception {
        // Arrange
        StudyStreak streak = new StudyStreak();
        streak.setUser(user);
        streak.setConsecutiveDays(7);
        streak.setLastStudyDay(LocalDate.now());
        streak.setLongestStreak(10);
        studyStreakRepository.save(streak);

        // Act & Assert
        mockMvc.perform(get("/api/study-streak")
                        .header("Authorization", "Bearer " + authToken))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.consecutiveDays").value(7))
                .andExpect(jsonPath("$.longestStreak").value(10));
    }

    @Test
    @DisplayName("Deve resetar streak via API")
    void deveResetarStreakViaAPI() throws Exception {
        // Arrange
        StudyStreak streak = new StudyStreak();
        streak.setUser(user);
        streak.setConsecutiveDays(10);
        streak.setLastStudyDay(LocalDate.now());
        streak.setLongestStreak(10);
        studyStreakRepository.save(streak);

        // Act
        mockMvc.perform(post("/api/study-streak/reset")
                        .header("Authorization", "Bearer " + authToken))
                .andExpect(status().isOk());

        // Assert
        StudyStreak resetStreak = studyStreakRepository.findByUser(user).orElseThrow();
        assertEquals(0, resetStreak.getConsecutiveDays());
        assertNull(resetStreak.getLastStudyDay());
    }

    @Test
    @DisplayName("Deve atualizar longest streak quando necessário")
    void deveAtualizarLongestStreakQuandoNecessario() {
        // Arrange
        StudyStreak streak = new StudyStreak();
        streak.setUser(user);
        streak.setConsecutiveDays(9);
        streak.setLastStudyDay(LocalDate.now().minusDays(1));
        streak.setLongestStreak(9);
        studyStreakRepository.save(streak);

        QuestionAnswer answer = new QuestionAnswer();
        answer.setUser(user);
        answer.setQuestion(question);
        answer.setUserAnswer("A");
        answer.setIsCorrect(true);
        answer.setAnsweredAt(LocalDateTime.now());
        questionAnswerRepository.save(answer);

        // Act
        studyStreakService.updateStreak(user);

        // Assert
        StudyStreak updatedStreak = studyStreakRepository.findByUser(user).orElseThrow();
        assertEquals(10, updatedStreak.getConsecutiveDays());
        assertEquals(10, updatedStreak.getLongestStreak());
    }
}

