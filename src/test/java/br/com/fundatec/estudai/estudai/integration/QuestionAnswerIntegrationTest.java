package br.com.fundatec.estudai.estudai.integration;

import br.com.fundatec.estudai.estudai.dto.request.QuestionAnswerRequest;
import br.com.fundatec.estudai.estudai.entity.Alternative;
import br.com.fundatec.estudai.estudai.entity.Question;
import br.com.fundatec.estudai.estudai.entity.QuestionAnswer;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.repository.QuestionAnswerRepository;
import br.com.fundatec.estudai.estudai.repository.QuestionRepository;
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
import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@SpringBootTest
@AutoConfigureMockMvc
@ActiveProfiles("test")
@Transactional
@DisplayName("Testes de Integração - Questões e Respostas")
class QuestionAnswerIntegrationTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private ObjectMapper objectMapper;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private QuestionRepository questionRepository;

    @Autowired
    private QuestionAnswerRepository questionAnswerRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private TokenService tokenService;

    private User user;
    private Question question;
    private String authToken;

    @BeforeEach
    void setUp() {
        userRepository.deleteAll();
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
        question.setTitle("Questão Teste ENEM 2023");
        question.setIndex(1);
        question.setYear(2023);
        question.setSubject("matematica");
        question.setContext("Contexto da questão");
        question.setCorrectAlternative("A");
        question.setAlternativesIntroduction("Escolha a alternativa correta");

        // Criar alternativas
        List<Alternative> alternatives = new ArrayList<>();
        for (char letter = 'A'; letter <= 'E'; letter++) {
            Alternative alt = new Alternative();
            alt.setLetter(String.valueOf(letter));
            alt.setText("Alternativa " + letter);
            alt.setQuestion(question);
            alternatives.add(alt);
        }
        question.setAlternatives(alternatives);
        question = questionRepository.save(question);
    }

    @Test
    @DisplayName("Deve responder questão corretamente e atualizar streak")
    void deveResponderQuestaoCorretamenteEAtualizarStreak() throws Exception {
        // Arrange
        QuestionAnswerRequest request = new QuestionAnswerRequest();
        request.setQuestionId(question.getId());
        request.setUserAnswer("A");
        request.setResponseTimeSeconds(30);

        // Act
        mockMvc.perform(post("/api/answers")
                        .header("Authorization", "Bearer " + authToken)
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(request)))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.isCorrect").value(true))
                .andExpect(jsonPath("$.userAnswer").value("A"))
                .andExpect(jsonPath("$.questionId").value(question.getId()));

        // Assert - Verificar se resposta foi salva
        List<QuestionAnswer> answers = questionAnswerRepository.findByUserIdOrderByAnsweredAtDesc(user.getId());
        assertEquals(1, answers.size());
        assertTrue(answers.get(0).getIsCorrect());
        assertEquals("A", answers.get(0).getUserAnswer());
    }

    @Test
    @DisplayName("Deve responder questão incorretamente")
    void deveResponderQuestaoIncorretamente() throws Exception {
        // Arrange
        QuestionAnswerRequest request = new QuestionAnswerRequest();
        request.setQuestionId(question.getId());
        request.setUserAnswer("B");
        request.setResponseTimeSeconds(30);

        // Act
        mockMvc.perform(post("/api/answers")
                        .header("Authorization", "Bearer " + authToken)
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(request)))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.isCorrect").value(false))
                .andExpect(jsonPath("$.userAnswer").value("B"));

        // Assert
        List<QuestionAnswer> answers = questionAnswerRepository.findByUserIdOrderByAnsweredAtDesc(user.getId());
        assertEquals(1, answers.size());
        assertFalse(answers.get(0).getIsCorrect());
    }

    @Test
    @DisplayName("Deve buscar todas as respostas do usuário")
    void deveBuscarTodasAsRespostasDoUsuario() throws Exception {
        // Arrange - Criar múltiplas respostas
        QuestionAnswer answer1 = new QuestionAnswer();
        answer1.setUser(user);
        answer1.setQuestion(question);
        answer1.setUserAnswer("A");
        answer1.setIsCorrect(true);
        answer1.setResponseTimeSeconds(30);
        questionAnswerRepository.save(answer1);

        Question question2 = new Question();
        question2.setTitle("Questão 2");
        question2.setIndex(2);
        question2.setYear(2023);
        question2.setSubject("portugues");
        question2.setCorrectAlternative("B");
        question2 = questionRepository.save(question2);

        QuestionAnswer answer2 = new QuestionAnswer();
        answer2.setUser(user);
        answer2.setQuestion(question2);
        answer2.setUserAnswer("B");
        answer2.setIsCorrect(true);
        answer2.setResponseTimeSeconds(25);
        questionAnswerRepository.save(answer2);

        // Act & Assert
        mockMvc.perform(get("/api/answers")
                        .header("Authorization", "Bearer " + authToken))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$").isArray())
                .andExpect(jsonPath("$.length()").value(2));
    }

    @Test
    @DisplayName("Deve retornar estatísticas corretas")
    void deveRetornarEstatisticasCorretas() throws Exception {
        // Arrange - Criar respostas corretas e incorretas
        QuestionAnswer answer1 = new QuestionAnswer();
        answer1.setUser(user);
        answer1.setQuestion(question);
        answer1.setUserAnswer("A");
        answer1.setIsCorrect(true);
        answer1.setResponseTimeSeconds(30);
        questionAnswerRepository.save(answer1);

        Question question2 = new Question();
        question2.setTitle("Questão 2");
        question2.setIndex(2);
        question2.setYear(2023);
        question2.setSubject("portugues");
        question2.setCorrectAlternative("A");
        question2 = questionRepository.save(question2);

        QuestionAnswer answer2 = new QuestionAnswer();
        answer2.setUser(user);
        answer2.setQuestion(question2);
        answer2.setUserAnswer("B");
        answer2.setIsCorrect(false);
        answer2.setResponseTimeSeconds(25);
        questionAnswerRepository.save(answer2);

        // Act & Assert
        mockMvc.perform(get("/api/answers/statistics")
                        .header("Authorization", "Bearer " + authToken))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.correctAnswers").value(1))
                .andExpect(jsonPath("$.wrongAnswers").value(1))
                .andExpect(jsonPath("$.totalCoinsEarned").value(10))
                .andExpect(jsonPath("$.accuracyRate").value(50.0));
    }

    @Test
    @DisplayName("Deve retornar erro 401 quando não autenticado")
    void deveRetornarErro401QuandoNaoAutenticado() throws Exception {
        // Arrange
        QuestionAnswerRequest request = new QuestionAnswerRequest();
        request.setQuestionId(question.getId());
        request.setUserAnswer("A");
        request.setResponseTimeSeconds(30);

        // Act & Assert
        mockMvc.perform(post("/api/answers")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(request)))
                .andExpect(status().isUnauthorized());
    }
}

