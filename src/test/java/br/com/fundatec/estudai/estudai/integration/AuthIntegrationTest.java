package br.com.fundatec.estudai.estudai.integration;

import br.com.fundatec.estudai.estudai.dto.request.LoginRequest;
import br.com.fundatec.estudai.estudai.dto.request.RegisterRequest;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.repository.UserRepository;
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
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@SpringBootTest
@AutoConfigureMockMvc
@ActiveProfiles("test")
@Transactional
@DisplayName("Testes de Integração - Autenticação")
class AuthIntegrationTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private ObjectMapper objectMapper;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @BeforeEach
    void setUp() {
        userRepository.deleteAll();
    }

    @Test
    @DisplayName("Deve registrar e autenticar usuário com sucesso")
    void deveRegistrarEAutenticarUsuarioComSucesso() throws Exception {
        // Arrange - Registrar usuário
        RegisterRequest registerRequest = new RegisterRequest(
                "João Silva",
                "joao@teste.com",
                "Senha@123",
                LocalDate.of(2000, 1, 1)
        );

        // Act & Assert - Registro
        mockMvc.perform(post("/api/auth/register")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(registerRequest)))
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.name").value("João Silva"))
                .andExpect(jsonPath("$.email").value("joao@teste.com"));

        // Verificar se usuário foi salvo no banco
        User savedUser = userRepository.findByEmail("joao@teste.com").orElse(null);
        assertNotNull(savedUser);
        assertEquals("João Silva", savedUser.getName());
        assertTrue(passwordEncoder.matches("Senha@123", savedUser.getPassword()));

        // Act & Assert - Login
        LoginRequest loginRequest = new LoginRequest("joao@teste.com", "Senha@123");

        mockMvc.perform(post("/api/auth/login")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(loginRequest)))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.token").exists())
                .andExpect(jsonPath("$.token").isNotEmpty())
                .andExpect(jsonPath("$.name").value("João Silva"));
    }

    @Test
    @DisplayName("Deve retornar erro ao tentar registrar email duplicado")
    void deveRetornarErroAoRegistrarEmailDuplicado() throws Exception {
        // Arrange - Criar usuário existente
        User existingUser = new User();
        existingUser.setName("Usuário Existente");
        existingUser.setEmail("existente@teste.com");
        existingUser.setPassword(passwordEncoder.encode("Senha@123"));
        existingUser.setBirthDate(LocalDate.of(2000, 1, 1));
        userRepository.save(existingUser);

        // Act & Assert
        RegisterRequest registerRequest = new RegisterRequest(
                "Novo Usuário",
                "existente@teste.com",
                "Senha@123",
                LocalDate.of(2000, 1, 1)
        );

        mockMvc.perform(post("/api/auth/register")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(registerRequest)))
                .andExpect(status().isBadRequest());
    }

    @Test
    @DisplayName("Deve retornar erro ao fazer login com credenciais inválidas")
    void deveRetornarErroAoFazerLoginComCredenciaisInvalidas() throws Exception {
        // Arrange - Criar usuário
        User user = new User();
        user.setName("João Silva");
        user.setEmail("joao@teste.com");
        user.setPassword(passwordEncoder.encode("Senha@123"));
        user.setBirthDate(LocalDate.of(2000, 1, 1));
        userRepository.save(user);

        // Act & Assert - Senha incorreta
        LoginRequest loginRequest = new LoginRequest("joao@teste.com", "SenhaErrada@123");

        mockMvc.perform(post("/api/auth/login")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(loginRequest)))
                .andExpect(status().isUnauthorized());
    }

    @Test
    @DisplayName("Deve retornar erro ao fazer login com usuário inexistente")
    void deveRetornarErroAoFazerLoginComUsuarioInexistente() throws Exception {
        // Act & Assert
        LoginRequest loginRequest = new LoginRequest("naoexiste@teste.com", "Senha@123");

        mockMvc.perform(post("/api/auth/login")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(loginRequest)))
                .andExpect(status().isNotFound());
    }
}

