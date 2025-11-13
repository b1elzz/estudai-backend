package br.com.fundatec.estudai.estudai.service;

import br.com.fundatec.estudai.estudai.dto.request.LoginRequest;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.exception.InvalidPasswordException;
import br.com.fundatec.estudai.estudai.exception.UserNotFoundException;
import br.com.fundatec.estudai.estudai.repository.UserRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.time.LocalDate;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
@DisplayName("Testes Unitários - AuthService")
class AuthServiceTest {

    @Mock
    private UserRepository userRepository;

    @Mock
    private PasswordEncoder passwordEncoder;

    @Mock
    private TokenService tokenService;

    @InjectMocks
    private AuthService authService;

    private User user;
    private LoginRequest loginRequest;

    @BeforeEach
    void setUp() {
        user = new User();
        user.setId(1L);
        user.setName("João Silva");
        user.setEmail("joao@teste.com");
        user.setPassword("$2a$10$encodedPasswordHash");
        user.setBirthDate(LocalDate.of(2000, 1, 1));

        loginRequest = new LoginRequest("joao@teste.com", "Senha@123");
    }

    @Test
    @DisplayName("Deve autenticar usuário com sucesso")
    void deveAutenticarUsuarioComSucesso() {
        // Arrange
        String token = "jwt-token-123";
        when(userRepository.findByEmail(loginRequest.email())).thenReturn(Optional.of(user));
        when(passwordEncoder.matches(loginRequest.password(), user.getPassword())).thenReturn(true);
        when(tokenService.generateToken(user.getEmail())).thenReturn(token);

        // Act
        String result = authService.authenticateUser(loginRequest);

        // Assert
        assertNotNull(result);
        assertEquals(token, result);
        verify(userRepository, times(1)).findByEmail(loginRequest.email());
        verify(passwordEncoder, times(1)).matches(loginRequest.password(), user.getPassword());
        verify(tokenService, times(1)).generateToken(user.getEmail());
    }

    @Test
    @DisplayName("Deve lançar exceção quando usuário não encontrado")
    void deveLancarExcecaoQuandoUsuarioNaoEncontrado() {
        // Arrange
        when(userRepository.findByEmail(loginRequest.email())).thenReturn(Optional.empty());

        // Act & Assert
        assertThrows(UserNotFoundException.class, () -> {
            authService.authenticateUser(loginRequest);
        });

        verify(userRepository, times(1)).findByEmail(loginRequest.email());
        verify(passwordEncoder, never()).matches(anyString(), anyString());
        verify(tokenService, never()).generateToken(anyString());
    }

    @Test
    @DisplayName("Deve lançar exceção quando senha incorreta")
    void deveLancarExcecaoQuandoSenhaIncorreta() {
        // Arrange
        when(userRepository.findByEmail(loginRequest.email())).thenReturn(Optional.of(user));
        when(passwordEncoder.matches(loginRequest.password(), user.getPassword())).thenReturn(false);

        // Act & Assert
        assertThrows(InvalidPasswordException.class, () -> {
            authService.authenticateUser(loginRequest);
        });

        verify(userRepository, times(1)).findByEmail(loginRequest.email());
        verify(passwordEncoder, times(1)).matches(loginRequest.password(), user.getPassword());
        verify(tokenService, never()).generateToken(anyString());
    }

    @Test
    @DisplayName("Deve carregar UserDetails por username com sucesso")
    void deveCarregarUserDetailsPorUsernameComSucesso() {
        // Arrange
        String email = "joao@teste.com";
        when(userRepository.findByEmail(email)).thenReturn(Optional.of(user));

        // Act
        UserDetails userDetails = authService.loadUserByUsername(email);

        // Assert
        assertNotNull(userDetails);
        assertEquals(email, userDetails.getUsername());
        assertEquals(user.getPassword(), userDetails.getPassword());
        assertTrue(userDetails.getAuthorities().stream()
                .anyMatch(a -> a.getAuthority().equals("ROLE_USER")));
        verify(userRepository, times(1)).findByEmail(email);
    }

    @Test
    @DisplayName("Deve lançar UsernameNotFoundException quando usuário não encontrado")
    void deveLancarUsernameNotFoundExceptionQuandoUsuarioNaoEncontrado() {
        // Arrange
        String email = "naoexiste@teste.com";
        when(userRepository.findByEmail(email)).thenReturn(Optional.empty());

        // Act & Assert
        assertThrows(UsernameNotFoundException.class, () -> {
            authService.loadUserByUsername(email);
        });

        verify(userRepository, times(1)).findByEmail(email);
    }

    @Test
    @DisplayName("Deve criar novo usuário via Google quando não existe")
    void deveCriarNovoUsuarioViaGoogleQuandoNaoExiste() {
        // Arrange
        String email = "google@teste.com";
        String name = "Google User";
        when(userRepository.findByEmail(email)).thenReturn(Optional.empty());
        when(passwordEncoder.encode(anyString())).thenReturn("encodedPassword");
        when(userRepository.save(any(User.class))).thenReturn(user);

        // Act
        User result = authService.getOrCreateUserViaGoogle(email, name);

        // Assert
        assertNotNull(result);
        verify(userRepository, times(1)).findByEmail(email);
        verify(userRepository, times(1)).save(any(User.class));
        verify(passwordEncoder, times(1)).encode(anyString());
    }

    @Test
    @DisplayName("Deve retornar usuário existente via Google")
    void deveRetornarUsuarioExistenteViaGoogle() {
        // Arrange
        String email = "joao@teste.com";
        String name = "João Silva";
        when(userRepository.findByEmail(email)).thenReturn(Optional.of(user));

        // Act
        User result = authService.getOrCreateUserViaGoogle(email, name);

        // Assert
        assertNotNull(result);
        assertEquals(user, result);
        verify(userRepository, times(1)).findByEmail(email);
        verify(userRepository, never()).save(any(User.class));
    }
}

