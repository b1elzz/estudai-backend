package br.com.fundatec.estudai.estudai.exception.handler;

import br.com.fundatec.estudai.estudai.dto.response.ErrorResponse;
import br.com.fundatec.estudai.estudai.entity.StudyGoal;
import br.com.fundatec.estudai.estudai.exception.*;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
@DisplayName("Testes Unitários - GlobalExceptionHandler")
class GlobalExceptionHandlerTest {

    @InjectMocks
    private GlobalExceptionHandler globalExceptionHandler;

    @Test
    @DisplayName("Deve tratar EmailAlreadyRegisteredException")
    void deveTratarEmailAlreadyRegisteredException() {
        // Arrange
        EmailAlreadyRegisteredException ex = new EmailAlreadyRegisteredException();

        // Act
        ResponseEntity<ErrorResponse> response = globalExceptionHandler.handleEmailAlreadyRegistered(ex);

        // Assert
        assertEquals(HttpStatus.CONFLICT, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals("EMAIL_ALREADY_REGISTERED", response.getBody().code());
    }

    @Test
    @DisplayName("Deve tratar InvalidDomainException")
    void deveTratarInvalidDomainException() {
        // Arrange
        List<String> validDomains = List.of("gmail.com", "test.com");
        InvalidDomainException ex = new InvalidDomainException(validDomains);

        // Act
        ResponseEntity<ErrorResponse> response = globalExceptionHandler.handleInvalidDomain(ex);

        // Assert
        assertEquals(HttpStatus.BAD_REQUEST, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals("INVALID_EMAIL_DOMAIN", response.getBody().code());
        assertNotNull(response.getBody().detail());
    }

    @Test
    @DisplayName("Deve tratar UserNotFoundException")
    void deveTratarUserNotFoundException() {
        // Arrange
        UserNotFoundException ex = new UserNotFoundException();

        // Act
        ResponseEntity<ErrorResponse> response = globalExceptionHandler.handleAuthExceptions(ex);

        // Assert
        assertEquals(HttpStatus.UNAUTHORIZED, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals("USER_NOT_FOUND", response.getBody().code());
    }

    @Test
    @DisplayName("Deve tratar InvalidPasswordException")
    void deveTratarInvalidPasswordException() {
        // Arrange
        InvalidPasswordException ex = new InvalidPasswordException();

        // Act
        ResponseEntity<ErrorResponse> response = globalExceptionHandler.handleAuthExceptions(ex);

        // Assert
        assertEquals(HttpStatus.UNAUTHORIZED, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals("INVALID_PASSWORD", response.getBody().code());
    }

    @Test
    @DisplayName("Deve tratar UnauthenticatedUserException")
    void deveTratarUnauthenticatedUserException() {
        // Arrange
        UnauthenticatedUserException ex = new UnauthenticatedUserException("User not authenticated");

        // Act
        ResponseEntity<ErrorResponse> response = globalExceptionHandler.handleUnauthenticatedUser(ex);

        // Assert
        assertEquals(HttpStatus.UNAUTHORIZED, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals("UNAUTHENTICATED_USER", response.getBody().code());
    }

    @Test
    @DisplayName("Deve tratar AccessDeniedException")
    void deveTratarAccessDeniedException() {
        // Arrange
        AccessDeniedException ex = new AccessDeniedException("Access denied");

        // Act
        ResponseEntity<ErrorResponse> response = globalExceptionHandler.handleAccessDenied(ex);

        // Assert
        assertEquals(HttpStatus.FORBIDDEN, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals("ACCESS_DENIED", response.getBody().code());
    }

    @Test
    @DisplayName("Deve tratar ResourceNotFoundException")
    void deveTratarResourceNotFoundException() {
        // Arrange
        ResourceNotFoundException ex = new ResourceNotFoundException("Resource not found");

        // Act
        ResponseEntity<ErrorResponse> response = globalExceptionHandler.handleResourceNotFound(ex);

        // Assert
        assertEquals(HttpStatus.NOT_FOUND, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals("RESOURCE_NOT_FOUND", response.getBody().code());
    }

    @Test
    @DisplayName("Deve tratar InvalidTokenException")
    void deveTratarInvalidTokenException() {
        // Arrange
        InvalidTokenException ex = new InvalidTokenException("Invalid token");

        // Act
        ResponseEntity<ErrorResponse> response = globalExceptionHandler.handleInvalidToken(ex);

        // Assert
        assertEquals(HttpStatus.UNAUTHORIZED, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals("INVALID_TOKEN", response.getBody().code());
    }

    @Test
    @DisplayName("Deve tratar EmailSendingException")
    void deveTratarEmailSendingException() {
        // Arrange
        EmailSendingException ex = new EmailSendingException("Failed to send email");

        // Act
        ResponseEntity<ErrorResponse> response = globalExceptionHandler.handleEmailSendingError(ex);

        // Assert
        assertEquals(HttpStatus.BAD_GATEWAY, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals("EMAIL_SENDING_ERROR", response.getBody().code());
    }

    @Test
    @DisplayName("Deve tratar InvalidCodeException")
    void deveTratarInvalidCodeException() {
        // Arrange
        InvalidCodeException ex = new InvalidCodeException();

        // Act
        ResponseEntity<ErrorResponse> response = globalExceptionHandler.handleInvalidCode(ex);

        // Assert
        assertEquals(HttpStatus.BAD_REQUEST, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals("INVALID_RECOVERY_CODE", response.getBody().code());
    }

    @Test
    @DisplayName("Deve tratar InvalidDateRangeException")
    void deveTratarInvalidDateRangeException() {
        // Arrange
        InvalidDateRangeException ex = new InvalidDateRangeException("Invalid date range");

        // Act
        ResponseEntity<ErrorResponse> response = globalExceptionHandler.handleInvalidDateRange(ex);

        // Assert
        assertEquals(HttpStatus.BAD_REQUEST, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals("INVALID_DATE_RANGE", response.getBody().code());
    }

    @Test
    @DisplayName("Deve tratar InvalidGoalDurationException")
    void deveTratarInvalidGoalDurationException() {
        // Arrange
        InvalidGoalDurationException ex = new InvalidGoalDurationException(
                "Invalid duration", 5L, 7L, 365L
        );

        // Act
        ResponseEntity<ErrorResponse> response = globalExceptionHandler.handleInvalidGoalDuration(ex);

        // Assert
        assertEquals(HttpStatus.BAD_REQUEST, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals("INVALID_GOAL_DURATION", response.getBody().code());
        assertNotNull(response.getBody().detail());
    }

    @Test
    @DisplayName("Deve tratar InvalidGoalStateException")
    void deveTratarInvalidGoalStateException() {
        // Arrange
        StudyGoal.Status completed = StudyGoal.Status.COMPLETED;
        StudyGoal.Status active = StudyGoal.Status.ACTIVE;
        InvalidGoalStateException ex = new InvalidGoalStateException(
                "Invalid state", completed, active
        );

        // Act
        ResponseEntity<ErrorResponse> response = globalExceptionHandler.handleInvalidGoalState(ex);

        // Assert
        assertEquals(HttpStatus.BAD_REQUEST, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals("INVALID_GOAL_STATE", response.getBody().code());
        assertNotNull(response.getBody().detail());
    }

    @Test
    @DisplayName("Deve tratar RuntimeException genérica")
    void deveTratarRuntimeExceptionGenerica() {
        // Arrange
        RuntimeException ex = new RuntimeException("Generic runtime error");

        // Act
        ResponseEntity<ErrorResponse> response = globalExceptionHandler.handleRuntimeException(ex);

        // Assert
        assertEquals(HttpStatus.BAD_REQUEST, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals("BAD_REQUEST", response.getBody().code());
    }

    @Test
    @DisplayName("Deve tratar Exception genérica")
    void deveTratarExceptionGenerica() {
        // Arrange
        Exception ex = new Exception("Unexpected error");

        // Act
        ResponseEntity<ErrorResponse> response = globalExceptionHandler.handleGenericException(ex);

        // Assert
        assertEquals(HttpStatus.INTERNAL_SERVER_ERROR, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals("INTERNAL_SERVER_ERROR", response.getBody().code());
        assertNotNull(response.getBody().detail());
    }

    @Test
    @DisplayName("Deve tratar MethodArgumentNotValidException")
    void deveTratarMethodArgumentNotValidException() {
        // Arrange
        MethodArgumentNotValidException ex = mock(MethodArgumentNotValidException.class);
        BindingResult bindingResult = mock(BindingResult.class);
        
        List<FieldError> fieldErrors = new ArrayList<>();
        FieldError fieldError1 = new FieldError("object", "email", "invalid", false, null, null, "must be a valid email");
        FieldError fieldError2 = new FieldError("object", "password", "123", false, null, null, "size must be between 8 and 20");
        fieldErrors.add(fieldError1);
        fieldErrors.add(fieldError2);
        
        when(ex.getBindingResult()).thenReturn(bindingResult);
        when(bindingResult.getFieldErrors()).thenReturn(fieldErrors);

        // Act
        ResponseEntity<ErrorResponse> response = globalExceptionHandler.handleValidationErrors(ex);

        // Assert
        assertEquals(HttpStatus.BAD_REQUEST, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals("VALIDATION_ERROR", response.getBody().code());
    }
}

