package br.com.fundatec.estudai.estudai.integration;

import br.com.fundatec.estudai.estudai.dto.request.PasswordRecoveryRequest;
import br.com.fundatec.estudai.estudai.entity.PasswordRecovery;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.repository.PasswordRecoveryRepository;
import br.com.fundatec.estudai.estudai.repository.UserRepository;
import br.com.fundatec.estudai.estudai.service.PasswordRecoveryService;
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
import java.time.LocalDateTime;

import static org.junit.jupiter.api.Assertions.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@SpringBootTest
@AutoConfigureMockMvc
@ActiveProfiles("test")
@Transactional
@DisplayName("Testes de Integração - Recuperação de Senha")
class PasswordRecoveryIntegrationTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private ObjectMapper objectMapper;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordRecoveryRepository passwordRecoveryRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    private User user;

    @BeforeEach
    void setUp() {
        userRepository.deleteAll();
        passwordRecoveryRepository.deleteAll();

        // Criar usuário
        user = new User();
        user.setName("João Silva");
        user.setEmail("joao@teste.com");
        user.setPassword(passwordEncoder.encode("SenhaAntiga@123"));
        user.setBirthDate(LocalDate.of(2000, 1, 1));
        user = userRepository.save(user);
    }

    @Test
    @DisplayName("Deve solicitar recuperação de senha e resetar com sucesso")
    void deveSolicitarRecuperacaoDeSenhaEResetarComSucesso() throws Exception {
        // Arrange - Solicitar recuperação
        String email = user.getEmail();

        // Act - Solicitar recuperação
        mockMvc.perform(post("/api/auth/request-password-reset")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content("{\"email\": \"" + email + "\"}"))
                .andExpect(status().isOk());

        // Assert - Verificar se código foi criado
        PasswordRecovery recovery = passwordRecoveryRepository.findByEmail(email)
                .stream()
                .findFirst()
                .orElse(null);
        assertNotNull(recovery);
        assertNotNull(recovery.getCode());
        assertFalse(recovery.isUsed());

        // Act - Resetar senha
        PasswordRecoveryRequest resetRequest = new PasswordRecoveryRequest();
        resetRequest.setCode(recovery.getCode());
        resetRequest.setNewPassword("NovaSenha@123");

        mockMvc.perform(post("/api/auth/reset-password")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(resetRequest)))
                .andExpect(status().isOk());

        // Assert - Verificar se senha foi alterada
        User updatedUser = userRepository.findByEmail(email).orElseThrow();
        assertTrue(passwordEncoder.matches("NovaSenha@123", updatedUser.getPassword()));
        assertFalse(passwordEncoder.matches("SenhaAntiga@123", updatedUser.getPassword()));

        // Verificar se código foi marcado como usado
        PasswordRecovery usedRecovery = passwordRecoveryRepository.findByCode(recovery.getCode()).orElse(null);
        assertNotNull(usedRecovery);
        assertTrue(usedRecovery.isUsed());
    }

    @Test
    @DisplayName("Deve retornar erro ao usar código inválido")
    void deveRetornarErroAoUsarCodigoInvalido() throws Exception {
        // Arrange
        PasswordRecoveryRequest request = new PasswordRecoveryRequest();
        request.setCode("000000");
        request.setNewPassword("NovaSenha@123");

        // Act & Assert
        mockMvc.perform(post("/api/auth/reset-password")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(request)))
                .andExpect(status().isBadRequest());
    }

    @Test
    @DisplayName("Deve retornar erro ao usar código expirado")
    void deveRetornarErroAoUsarCodigoExpirado() throws Exception {
        // Arrange - Criar código expirado
        PasswordRecovery expiredRecovery = new PasswordRecovery();
        expiredRecovery.setEmail(user.getEmail());
        expiredRecovery.setCode("123456");
        expiredRecovery.setExpirationDate(LocalDateTime.now().minusHours(2));
        expiredRecovery.setUsed(false);
        passwordRecoveryRepository.save(expiredRecovery);

        // Act & Assert
        PasswordRecoveryRequest request = new PasswordRecoveryRequest();
        request.setCode("123456");
        request.setNewPassword("NovaSenha@123");

        mockMvc.perform(post("/api/auth/reset-password")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(request)))
                .andExpect(status().isBadRequest());
    }

    @Test
    @DisplayName("Deve retornar erro ao solicitar recuperação para email inexistente")
    void deveRetornarErroAoSolicitarRecuperacaoParaEmailInexistente() throws Exception {
        // Act & Assert
        mockMvc.perform(post("/api/auth/request-password-reset")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content("{\"email\": \"naoexiste@teste.com\"}"))
                .andExpect(status().isNotFound());
    }
}

