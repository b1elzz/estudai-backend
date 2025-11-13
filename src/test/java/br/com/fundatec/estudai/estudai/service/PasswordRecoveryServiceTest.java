package br.com.fundatec.estudai.estudai.service;

import br.com.fundatec.estudai.estudai.dto.request.PasswordRecoveryRequest;
import br.com.fundatec.estudai.estudai.entity.PasswordRecovery;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.exception.InvalidCodeException;
import br.com.fundatec.estudai.estudai.exception.InvalidEmailException;
import br.com.fundatec.estudai.estudai.exception.InvalidPasswordException;
import br.com.fundatec.estudai.estudai.exception.UserNotFoundException;
import br.com.fundatec.estudai.estudai.repository.PasswordRecoveryRepository;
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
import java.time.LocalDateTime;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
@DisplayName("Testes Unitários - PasswordRecoveryService")
class PasswordRecoveryServiceTest {

    @Mock
    private PasswordRecoveryRepository passwordRecoveryRepository;

    @Mock
    private EmailService emailService;

    @Mock
    private UserRepository userRepository;

    @Mock
    private PasswordEncoder passwordEncoder;

    @InjectMocks
    private PasswordRecoveryService passwordRecoveryService;

    private User user;
    private PasswordRecovery passwordRecovery;
    private PasswordRecoveryRequest recoveryRequest;

    @BeforeEach
    void setUp() {
        user = new User();
        user.setId(1L);
        user.setName("João Silva");
        user.setEmail("joao@teste.com");
        user.setPassword("oldPassword");
        user.setBirthDate(LocalDate.of(2000, 1, 1));

        passwordRecovery = new PasswordRecovery();
        passwordRecovery.setId(1L);
        passwordRecovery.setEmail("joao@teste.com");
        passwordRecovery.setCode("123456");
        passwordRecovery.setExpirationDate(LocalDateTime.now().plusHours(1));
        passwordRecovery.setUsed(false);

        recoveryRequest = new PasswordRecoveryRequest();
        recoveryRequest.setCode("123456");
        recoveryRequest.setNewPassword("NovaSenha@123");
    }

    @Test
    @DisplayName("Deve solicitar recuperação de senha com sucesso")
    void deveSolicitarRecuperacaoDeSenhaComSucesso() {
        // Arrange
        String email = "joao@teste.com";
        when(userRepository.findByEmail(email)).thenReturn(Optional.of(user));
        doNothing().when(passwordRecoveryRepository).deleteByEmail(email);
        when(passwordRecoveryRepository.save(any(PasswordRecovery.class))).thenReturn(passwordRecovery);
        doNothing().when(emailService).sendRecoveryEmail(anyString(), anyString(), anyString());

        // Act
        assertDoesNotThrow(() -> {
            passwordRecoveryService.requestPasswordRecovery(email);
        });

        // Assert
        verify(userRepository, times(1)).findByEmail(email);
        verify(passwordRecoveryRepository, times(1)).deleteByEmail(email);
        verify(passwordRecoveryRepository, times(1)).save(any(PasswordRecovery.class));
        verify(emailService, times(1)).sendRecoveryEmail(anyString(), anyString(), anyString());
    }

    @Test
    @DisplayName("Deve lançar exceção quando email inválido")
    void deveLancarExcecaoQuandoEmailInvalido() {
        // Arrange
        String invalidEmail = "email-invalido";

        // Act & Assert
        assertThrows(InvalidEmailException.class, () -> {
            passwordRecoveryService.requestPasswordRecovery(invalidEmail);
        });

        verify(userRepository, never()).findByEmail(anyString());
    }

    @Test
    @DisplayName("Deve lançar exceção quando usuário não encontrado")
    void deveLancarExcecaoQuandoUsuarioNaoEncontrado() {
        // Arrange
        String email = "naoexiste@teste.com";
        when(userRepository.findByEmail(email)).thenReturn(Optional.empty());

        // Act & Assert
        assertThrows(UserNotFoundException.class, () -> {
            passwordRecoveryService.requestPasswordRecovery(email);
        });

        verify(userRepository, times(1)).findByEmail(email);
    }

    @Test
    @DisplayName("Deve validar código de recuperação válido")
    void deveValidarCodigoDeRecuperacaoValido() {
        // Arrange
        String code = "123456";
        when(passwordRecoveryRepository.findByCode(code)).thenReturn(Optional.of(passwordRecovery));

        // Act
        assertDoesNotThrow(() -> {
            passwordRecoveryService.validateRecoveryCode(code);
        });

        // Assert
        verify(passwordRecoveryRepository, times(1)).findByCode(code);
    }

    @Test
    @DisplayName("Deve lançar exceção quando código não encontrado")
    void deveLancarExcecaoQuandoCodigoNaoEncontrado() {
        // Arrange
        String code = "000000";
        when(passwordRecoveryRepository.findByCode(code)).thenReturn(Optional.empty());

        // Act & Assert
        assertThrows(InvalidCodeException.class, () -> {
            passwordRecoveryService.validateRecoveryCode(code);
        });

        verify(passwordRecoveryRepository, times(1)).findByCode(code);
    }

    @Test
    @DisplayName("Deve lançar exceção quando código já foi usado")
    void deveLancarExcecaoQuandoCodigoJaFoiUsado() {
        // Arrange
        String code = "123456";
        passwordRecovery.setUsed(true);
        when(passwordRecoveryRepository.findByCode(code)).thenReturn(Optional.of(passwordRecovery));

        // Act & Assert
        assertThrows(InvalidCodeException.class, () -> {
            passwordRecoveryService.validateRecoveryCode(code);
        });

        verify(passwordRecoveryRepository, times(1)).findByCode(code);
    }

    @Test
    @DisplayName("Deve lançar exceção quando código expirado")
    void deveLancarExcecaoQuandoCodigoExpirado() {
        // Arrange
        String code = "123456";
        passwordRecovery.setExpirationDate(LocalDateTime.now().minusHours(2));
        when(passwordRecoveryRepository.findByCode(code)).thenReturn(Optional.of(passwordRecovery));

        // Act & Assert
        assertThrows(InvalidCodeException.class, () -> {
            passwordRecoveryService.validateRecoveryCode(code);
        });

        verify(passwordRecoveryRepository, times(1)).findByCode(code);
    }

    @Test
    @DisplayName("Deve resetar senha com sucesso")
    void deveResetarSenhaComSucesso() {
        // Arrange
        when(passwordRecoveryRepository.findByCode(recoveryRequest.getCode()))
                .thenReturn(Optional.of(passwordRecovery));
        when(userRepository.findByEmail(passwordRecovery.getEmail()))
                .thenReturn(Optional.of(user));
        when(passwordEncoder.encode(recoveryRequest.getNewPassword()))
                .thenReturn("encodedNewPassword");
        when(userRepository.save(any(User.class))).thenReturn(user);
        when(passwordRecoveryRepository.save(any(PasswordRecovery.class)))
                .thenReturn(passwordRecovery);

        // Act
        assertDoesNotThrow(() -> {
            passwordRecoveryService.resetPassword(recoveryRequest);
        });

        // Assert
        verify(passwordRecoveryRepository, times(2)).findByCode(recoveryRequest.getCode());
        verify(userRepository, times(1)).findByEmail(passwordRecovery.getEmail());
        verify(passwordEncoder, times(1)).encode(recoveryRequest.getNewPassword());
        verify(userRepository, times(1)).save(user);
        verify(passwordRecoveryRepository, times(1)).save(passwordRecovery);
        assertTrue(passwordRecovery.isUsed());
    }

    @Test
    @DisplayName("Deve lançar exceção quando nova senha é muito curta")
    void deveLancarExcecaoQuandoNovaSenhaMuitoCurta() {
        // Arrange
        PasswordRecoveryRequest invalidRequest = new PasswordRecoveryRequest();
        invalidRequest.setCode("123456");
        invalidRequest.setNewPassword("123");

        // Act & Assert
        assertThrows(InvalidPasswordException.class, () -> {
            passwordRecoveryService.resetPassword(invalidRequest);
        });
    }
}

