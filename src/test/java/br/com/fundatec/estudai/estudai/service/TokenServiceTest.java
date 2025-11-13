package br.com.fundatec.estudai.estudai.service;

import br.com.fundatec.estudai.estudai.exception.InvalidTokenException;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.test.util.ReflectionTestUtils;

import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(MockitoExtension.class)
@DisplayName("Testes Unitários - TokenService")
class TokenServiceTest {

    @InjectMocks
    private TokenService tokenService;

    private static final String TEST_SECRET = "dGVzdFNlY3JldEtleUZvckpXVFRva2VuU2VydmljZVRlc3Q="; // Base64 encoded
    private static final long TEST_EXPIRATION = 86400000L; // 24 horas

    @BeforeEach
    void setUp() {
        ReflectionTestUtils.setField(tokenService, "secret", TEST_SECRET);
        ReflectionTestUtils.setField(tokenService, "expirationMs", TEST_EXPIRATION);
        tokenService.init();
    }

    @Test
    @DisplayName("Deve gerar token JWT com sucesso")
    void deveGerarTokenJWTComSucesso() {
        // Arrange
        String email = "joao@teste.com";

        // Act
        String token = tokenService.generateToken(email);

        // Assert
        assertNotNull(token);
        assertFalse(token.isEmpty());
        assertTrue(token.split("\\.").length == 3); // JWT tem 3 partes separadas por ponto
    }

    @Test
    @DisplayName("Deve validar token válido com sucesso")
    void deveValidarTokenValidoComSucesso() {
        // Arrange
        String email = "joao@teste.com";
        String token = tokenService.generateToken(email);

        // Act
        boolean isValid = tokenService.validateToken(token);

        // Assert
        assertTrue(isValid);
    }

    @Test
    @DisplayName("Deve extrair email de token válido com sucesso")
    void deveExtrairEmailDeTokenValidoComSucesso() {
        // Arrange
        String email = "joao@teste.com";
        String token = tokenService.generateToken(email);

        // Act
        String extractedEmail = tokenService.getEmailFromToken(token);

        // Assert
        assertNotNull(extractedEmail);
        assertEquals(email, extractedEmail);
    }

    @Test
    @DisplayName("Deve lançar exceção quando token é nulo")
    void deveLancarExcecaoQuandoTokenNulo() {
        // Act & Assert
        assertThrows(InvalidTokenException.class, () -> {
            tokenService.validateToken(null);
        });
    }

    @Test
    @DisplayName("Deve lançar exceção quando token é vazio")
    void deveLancarExcecaoQuandoTokenVazio() {
        // Act & Assert
        assertThrows(InvalidTokenException.class, () -> {
            tokenService.validateToken("");
        });
    }

    @Test
    @DisplayName("Deve lançar exceção quando token é inválido")
    void deveLancarExcecaoQuandoTokenInvalido() {
        // Arrange
        String invalidToken = "token.invalido.aqui";

        // Act & Assert
        assertThrows(InvalidTokenException.class, () -> {
            tokenService.validateToken(invalidToken);
        });
    }

    @Test
    @DisplayName("Deve lançar exceção ao extrair email de token inválido")
    void deveLancarExcecaoAoExtrairEmailDeTokenInvalido() {
        // Arrange
        String invalidToken = "token.invalido.aqui";

        // Act & Assert
        assertThrows(InvalidTokenException.class, () -> {
            tokenService.getEmailFromToken(invalidToken);
        });
    }

    @Test
    @DisplayName("Deve gerar tokens diferentes para emails diferentes")
    void deveGerarTokensDiferentesParaEmailsDiferentes() {
        // Arrange
        String email1 = "joao@teste.com";
        String email2 = "maria@teste.com";

        // Act
        String token1 = tokenService.generateToken(email1);
        String token2 = tokenService.generateToken(email2);

        // Assert
        assertNotEquals(token1, token2);
    }
}

