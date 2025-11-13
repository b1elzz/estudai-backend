package br.com.fundatec.estudai.estudai.controller;

import br.com.fundatec.estudai.estudai.dto.request.LoginRequest;
import br.com.fundatec.estudai.estudai.dto.request.RegisterRequest;
import br.com.fundatec.estudai.estudai.dto.response.LoginResponse;
import br.com.fundatec.estudai.estudai.dto.response.UserResponse;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.mapper.AuthMapper;
import br.com.fundatec.estudai.estudai.service.AuthService;
import br.com.fundatec.estudai.estudai.service.PasswordRecoveryService;
import br.com.fundatec.estudai.estudai.service.UserService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;

import java.time.LocalDate;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@WebMvcTest(AuthController.class)
@DisplayName("Testes Unitários - AuthController")
class AuthControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private ObjectMapper objectMapper;

    @MockBean
    private AuthService authService;

    @MockBean
    private UserService userService;

    @MockBean
    private PasswordRecoveryService passwordRecoveryService;

    @MockBean
    private AuthMapper authMapper;

    private RegisterRequest registerRequest;
    private LoginRequest loginRequest;
    private User user;
    private UserResponse userResponse;
    private LoginResponse loginResponse;

    @BeforeEach
    void setUp() {
        registerRequest = new RegisterRequest(
                "João Silva",
                "joao@teste.com",
                "Senha@123",
                LocalDate.of(2000, 1, 1)
        );

        loginRequest = new LoginRequest("joao@teste.com", "Senha@123");

        user = new User();
        user.setId(1L);
        user.setName("João Silva");
        user.setEmail("joao@teste.com");
        user.setStreakDays(5);
        user.setCoins(100);

        userResponse = new UserResponse(
                1L, "João Silva", "joao@teste.com",
                LocalDate.of(2000, 1, 1), null
        );

        loginResponse = new LoginResponse("jwt-token-123", "João Silva", 5, 100);
    }

    @Test
    @DisplayName("Deve fazer login com sucesso")
    void deveFazerLoginComSucesso() throws Exception {
        // Arrange
        String token = "jwt-token-123";
        when(authService.authenticateUser(loginRequest)).thenReturn(token);
        when(authService.getUserByEmail(loginRequest.email())).thenReturn(user);
        when(authMapper.toLoginResponse(user, token)).thenReturn(loginResponse);

        // Act & Assert
        mockMvc.perform(post("/auth/login")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(loginRequest)))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.token").value("jwt-token-123"))
                .andExpect(jsonPath("$.name").value("João Silva"))
                .andExpect(jsonPath("$.streakDays").value(5))
                .andExpect(jsonPath("$.coins").value(100));

        verify(authService, times(1)).authenticateUser(loginRequest);
        verify(authService, times(1)).getUserByEmail(loginRequest.email());
    }

    @Test
    @DisplayName("Deve registrar novo usuário com sucesso")
    void deveRegistrarNovoUsuarioComSucesso() throws Exception {
        // Arrange
        when(userService.registerUser(registerRequest)).thenReturn(userResponse);

        // Act & Assert
        mockMvc.perform(post("/auth/register")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(registerRequest)))
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.name").value("João Silva"))
                .andExpect(jsonPath("$.email").value("joao@teste.com"));

        verify(userService, times(1)).registerUser(registerRequest);
    }

    @Test
    @DisplayName("Deve retornar erro 400 quando dados de registro inválidos")
    void deveRetornarErro400QuandoDadosRegistroInvalidos() throws Exception {
        // Arrange
        RegisterRequest invalidRequest = new RegisterRequest(
                "", // Nome vazio
                "email-invalido", // Email inválido
                "123", // Senha muito curta
                null // Data nula
        );

        // Act & Assert
        mockMvc.perform(post("/auth/register")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(invalidRequest)))
                .andExpect(status().isBadRequest());

        verify(userService, never()).registerUser(any());
    }

    @Test
    @DisplayName("Deve solicitar recuperação de senha com sucesso")
    void deveSolicitarRecuperacaoDeSenhaComSucesso() throws Exception {
        // Arrange
        String email = "joao@teste.com";
        doNothing().when(passwordRecoveryService).requestPasswordRecovery(email);

        // Act & Assert
        mockMvc.perform(post("/auth/request-password-reset")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content("{\"email\": \"" + email + "\"}"))
                .andExpect(status().isOk());

        verify(passwordRecoveryService, times(1)).requestPasswordRecovery(email);
    }
}

