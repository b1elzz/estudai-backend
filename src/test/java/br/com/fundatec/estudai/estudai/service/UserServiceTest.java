package br.com.fundatec.estudai.estudai.service;

import br.com.fundatec.estudai.estudai.dto.request.RegisterRequest;
import br.com.fundatec.estudai.estudai.dto.response.UserResponse;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.exception.EmailAlreadyRegisteredException;
import br.com.fundatec.estudai.estudai.exception.UserNotFoundException;
import br.com.fundatec.estudai.estudai.mapper.UserMapper;
import br.com.fundatec.estudai.estudai.repository.UserRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.time.LocalDate;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
@DisplayName("Testes Unitários - UserService")
class UserServiceTest {

    @Mock
    private UserRepository userRepository;

    @Mock
    private PasswordEncoder passwordEncoder;

    @Mock
    private UserMapper userMapper;

    @InjectMocks
    private UserService userService;

    private RegisterRequest registerRequest;
    private User user;
    private UserResponse userResponse;

    @BeforeEach
    void setUp() {
        registerRequest = new RegisterRequest(
                "João Silva",
                "joao@teste.com",
                "Senha@123",
                LocalDate.of(2000, 1, 1)
        );

        user = new User();
        user.setId(1L);
        user.setName("João Silva");
        user.setEmail("joao@teste.com");
        user.setPassword("encodedPassword");
        user.setBirthDate(LocalDate.of(2000, 1, 1));

        userResponse = new UserResponse(
                1L,
                "João Silva",
                "joao@teste.com",
                LocalDate.of(2000, 1, 1),
                null
        );
    }

    @Test
    @DisplayName("Deve registrar novo usuário com sucesso")
    void deveRegistrarNovoUsuarioComSucesso() {
        // Arrange
        when(userRepository.existsByEmail(registerRequest.email())).thenReturn(false);
        when(passwordEncoder.encode(registerRequest.password())).thenReturn("encodedPassword");
        when(userRepository.save(any(User.class))).thenReturn(user);
        when(userMapper.toResponseDTO(any(User.class))).thenReturn(userResponse);

        // Act
        UserResponse response = userService.registerUser(registerRequest);

        // Assert
        assertNotNull(response);
        assertEquals("João Silva", response.name());
        assertEquals("joao@teste.com", response.email());
        verify(userRepository, times(1)).existsByEmail(registerRequest.email());
        verify(passwordEncoder, times(1)).encode(registerRequest.password());
        verify(userRepository, times(1)).save(any(User.class));
        verify(userMapper, times(1)).toResponseDTO(any(User.class));
    }

    @Test
    @DisplayName("Deve lançar exceção quando email já está registrado")
    void deveLancarExcecaoQuandoEmailJaRegistrado() {
        // Arrange
        when(userRepository.existsByEmail(registerRequest.email())).thenReturn(true);

        // Act & Assert
        assertThrows(EmailAlreadyRegisteredException.class, () -> {
            userService.registerUser(registerRequest);
        });

        verify(userRepository, times(1)).existsByEmail(registerRequest.email());
        verify(userRepository, never()).save(any(User.class));
    }

    @Test
    @DisplayName("Deve buscar usuário por email com sucesso")
    void deveBuscarUsuarioPorEmailComSucesso() {
        // Arrange
        String email = "joao@teste.com";
        when(userRepository.findByEmail(email)).thenReturn(Optional.of(user));

        // Act
        User result = userService.getUserByEmail(email);

        // Assert
        assertNotNull(result);
        assertEquals(email, result.getEmail());
        verify(userRepository, times(1)).findByEmail(email);
    }

    @Test
    @DisplayName("Deve lançar exceção quando usuário não encontrado por email")
    void deveLancarExcecaoQuandoUsuarioNaoEncontrado() {
        // Arrange
        String email = "naoexiste@teste.com";
        when(userRepository.findByEmail(email)).thenReturn(Optional.empty());

        // Act & Assert
        assertThrows(UserNotFoundException.class, () -> {
            userService.getUserByEmail(email);
        });

        verify(userRepository, times(1)).findByEmail(email);
    }

    @Test
    @DisplayName("Deve retornar UserResponse por email com sucesso")
    void deveRetornarUserResponsePorEmailComSucesso() {
        // Arrange
        String email = "joao@teste.com";
        when(userRepository.findByEmail(email)).thenReturn(Optional.of(user));
        when(userMapper.toResponseDTO(user)).thenReturn(userResponse);

        // Act
        UserResponse result = userService.getUserResponseByEmail(email);

        // Assert
        assertNotNull(result);
        assertEquals("João Silva", result.name());
        assertEquals("joao@teste.com", result.email());
        verify(userRepository, times(1)).findByEmail(email);
        verify(userMapper, times(1)).toResponseDTO(user);
    }
}

