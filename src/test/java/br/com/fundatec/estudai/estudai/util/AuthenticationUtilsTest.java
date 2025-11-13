package br.com.fundatec.estudai.estudai.util;

import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.exception.UnauthenticatedUserException;
import br.com.fundatec.estudai.estudai.service.AuthService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.security.core.Authentication;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
@DisplayName("Testes Unitários - AuthenticationUtils")
class AuthenticationUtilsTest {

    @Mock
    private AuthService authService;

    @Mock
    private Authentication authentication;

    @InjectMocks
    private AuthenticationUtils authenticationUtils;

    private User user;

    @BeforeEach
    void setUp() {
        user = new User();
        user.setId(1L);
        user.setEmail("joao@teste.com");
        user.setName("João Silva");
    }

    @Test
    @DisplayName("Deve retornar usuário quando autenticação é válida")
    void deveRetornarUsuarioQuandoAutenticacaoValida() {
        // Arrange
        String email = "joao@teste.com";
        when(authentication.isAuthenticated()).thenReturn(true);
        when(authentication.getName()).thenReturn(email);
        when(authService.getUserByEmail(email)).thenReturn(user);

        // Act
        User result = authenticationUtils.getUser(authentication);

        // Assert
        assertNotNull(result);
        assertEquals(email, result.getEmail());
        verify(authentication, times(1)).isAuthenticated();
        verify(authentication, times(1)).getName();
        verify(authService, times(1)).getUserByEmail(email);
    }

    @Test
    @DisplayName("Deve lançar exceção quando autenticação é null")
    void deveLancarExcecaoQuandoAutenticacaoNull() {
        // Act & Assert
        assertThrows(UnauthenticatedUserException.class, () -> {
            authenticationUtils.getUser(null);
        });

        verify(authService, never()).getUserByEmail(anyString());
    }

    @Test
    @DisplayName("Deve lançar exceção quando usuário não está autenticado")
    void deveLancarExcecaoQuandoUsuarioNaoAutenticado() {
        // Arrange
        when(authentication.isAuthenticated()).thenReturn(false);

        // Act & Assert
        assertThrows(UnauthenticatedUserException.class, () -> {
            authenticationUtils.getUser(authentication);
        });

        verify(authentication, times(1)).isAuthenticated();
        verify(authService, never()).getUserByEmail(anyString());
    }
}

