package br.com.fundatec.estudai.estudai.exception.handler;

import br.com.fundatec.estudai.estudai.dto.response.ErrorResponse;
import br.com.fundatec.estudai.estudai.dto.response.FieldErrorResponse;
import br.com.fundatec.estudai.estudai.exception.*;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.ExampleObject;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@RestControllerAdvice
@Tag(name = "Error Handling", description = "Centralized API error handling")
public class GlobalExceptionHandler {

    @Operation(summary = "Handle email already registered",
            responses = @ApiResponse(responseCode = "409",
                    content = @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ErrorResponse.class),
                            examples = @ExampleObject(value = """
                                    {
                                        "timestamp": "2024-01-15T14:30:45.123Z",
                                        "code": "EMAIL_ALREADY_REGISTERED",
                                        "message": "Email is already registered in the system"
                                    }""")
                    )
            ))
    @ExceptionHandler(EmailAlreadyRegisteredException.class)
    public ResponseEntity<ErrorResponse> handleEmailAlreadyRegistered(EmailAlreadyRegisteredException ex) {
        return buildErrorResponse(HttpStatus.CONFLICT, "EMAIL_ALREADY_REGISTERED", ex.getMessage());
    }

    @Operation(summary = "Handle invalid email domain",
            responses = @ApiResponse(responseCode = "400",
                    content = @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ErrorResponse.class),
                            examples = @ExampleObject(value = """
                                    {
                                        "timestamp": "2024-01-15T14:31:22.456Z",
                                        "code": "INVALID_EMAIL_DOMAIN",
                                        "message": "Email domain not allowed",
                                        "detail": "Valid domains: gmail.com, estudante.rs.gov.br"
                                    }""")
                    )
            ))
    @ExceptionHandler(InvalidDomainException.class)
    public ResponseEntity<ErrorResponse> handleInvalidDomain(InvalidDomainException ex) {
        String detail = "Valid domains: " + String.join(", ", ex.getValidDomains());
        return buildErrorResponse(HttpStatus.BAD_REQUEST, "INVALID_EMAIL_DOMAIN", ex.getMessage(), detail);
    }

    @Operation(summary = "Handle authentication errors",
            responses = {
                    @ApiResponse(responseCode = "401", description = "Invalid credentials",
                            content = @Content(mediaType = "application/json",
                                    schema = @Schema(implementation = ErrorResponse.class),
                                    examples = {
                                            @ExampleObject(name = "User not found", value = """
                                                    {
                                                        "code": "USER_NOT_FOUND",
                                                        "message": "User not found"
                                                    }"""),
                                            @ExampleObject(name = "Invalid password", value = """
                                                    {
                                                        "code": "INVALID_PASSWORD", 
                                                        "message": "Invalid password"
                                                    }""")
                                    }
                            )
                    )
            }
    )
    @ExceptionHandler({UserNotFoundException.class, InvalidPasswordException.class})
    public ResponseEntity<ErrorResponse> handleAuthExceptions(RuntimeException ex) {
        String code = ex instanceof UserNotFoundException ? "USER_NOT_FOUND" : "INVALID_PASSWORD";
        return buildErrorResponse(HttpStatus.UNAUTHORIZED, code, ex.getMessage());
    }

    @Operation(summary = "Handle validation errors",
            responses = @ApiResponse(responseCode = "400",
                    content = @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ErrorResponse.class),
                            examples = @ExampleObject(value = """
                                    {
                                        "timestamp": "2024-01-15T14:32:10.789Z",
                                        "code": "VALIDATION_ERROR",
                                        "message": "Validation failed",
                                        "fieldErrors": [
                                            {
                                                "field": "email",
                                                "message": "must be a valid email address"
                                            },
                                            {
                                                "field": "password", 
                                                "message": "size must be between 8 and 20"
                                            }
                                        ]
                                    }""")
                    )
            )
    )
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ResponseEntity<ErrorResponse> handleValidationErrors(MethodArgumentNotValidException ex) {
        List<FieldErrorResponse> errors = ex.getBindingResult().getFieldErrors()
                .stream()
                .map(error -> new FieldErrorResponse(
                        error.getField(),
                        error.getDefaultMessage(),
                        error.getRejectedValue() != null ? error.getRejectedValue().toString() : null
                ))
                .collect(Collectors.toList());

        return ResponseEntity
                .status(HttpStatus.BAD_REQUEST)
                .body(new ErrorResponse("VALIDATION_ERROR", "Validation failed", null));
    }

    @Operation(summary = "Handle unauthenticated user",
            responses = @ApiResponse(responseCode = "401",
                    content = @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ErrorResponse.class),
                            examples = @ExampleObject(value = """
                                    {
                                        "timestamp": "2024-01-15T14:33:15.123Z",
                                        "code": "UNAUTHENTICATED_USER",
                                        "message": "User not authenticated"
                                    }""")
                    )
            ))
    @ExceptionHandler(UnauthenticatedUserException.class)
    public ResponseEntity<ErrorResponse> handleUnauthenticatedUser(UnauthenticatedUserException ex) {
        return buildErrorResponse(HttpStatus.UNAUTHORIZED, "UNAUTHENTICATED_USER", ex.getMessage());
    }

    @Operation(summary = "Handle access denied",
            responses = @ApiResponse(responseCode = "403",
                    content = @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ErrorResponse.class),
                            examples = @ExampleObject(value = """
                                    {
                                        "timestamp": "2024-01-15T14:34:20.456Z",
                                        "code": "ACCESS_DENIED",
                                        "message": "Access denied"
                                    }""")
                    )
            ))
    @ExceptionHandler(AccessDeniedException.class)
    public ResponseEntity<ErrorResponse> handleAccessDenied(AccessDeniedException ex) {
        return buildErrorResponse(HttpStatus.FORBIDDEN, "ACCESS_DENIED", ex.getMessage());
    }

    @Operation(summary = "Handle resource not found",
            responses = @ApiResponse(responseCode = "404",
                    content = @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ErrorResponse.class),
                            examples = @ExampleObject(value = """
                                    {
                                        "timestamp": "2024-01-15T14:35:25.789Z",
                                        "code": "RESOURCE_NOT_FOUND",
                                        "message": "Resource not found"
                                    }""")
                    )
            ))
    @ExceptionHandler(ResourceNotFoundException.class)
    public ResponseEntity<ErrorResponse> handleResourceNotFound(ResourceNotFoundException ex) {
        return buildErrorResponse(HttpStatus.NOT_FOUND, "RESOURCE_NOT_FOUND", ex.getMessage());
    }

    @Operation(summary = "Handle invalid token",
            responses = @ApiResponse(responseCode = "401",
                    content = @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ErrorResponse.class),
                            examples = @ExampleObject(value = """
                                    {
                                        "timestamp": "2024-01-15T14:36:30.123Z",
                                        "code": "INVALID_TOKEN",
                                        "message": "Invalid token"
                                    }""")
                    )
            ))
    @ExceptionHandler(InvalidTokenException.class)
    public ResponseEntity<ErrorResponse> handleInvalidToken(InvalidTokenException ex) {
        return buildErrorResponse(HttpStatus.UNAUTHORIZED, "INVALID_TOKEN", ex.getMessage());
    }

    @Operation(summary = "Handle email sending errors",
            responses = @ApiResponse(responseCode = "502",
                    content = @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ErrorResponse.class),
                            examples = @ExampleObject(value = """
                                    {
                                        "timestamp": "2024-01-15T14:37:35.456Z",
                                        "code": "EMAIL_SENDING_ERROR",
                                        "message": "Failed to send email"
                                    }""")
                    )
            ))
    @ExceptionHandler(EmailSendingException.class)
    public ResponseEntity<ErrorResponse> handleEmailSendingError(EmailSendingException ex) {
        return buildErrorResponse(HttpStatus.BAD_GATEWAY, "EMAIL_SENDING_ERROR", ex.getMessage());
    }

    @Operation(summary = "Handle invalid recovery code",
            responses = @ApiResponse(responseCode = "400",
                    content = @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ErrorResponse.class),
                            examples = @ExampleObject(value = """
                                    {
                                        "timestamp": "2024-01-15T14:38:40.789Z",
                                        "code": "INVALID_RECOVERY_CODE",
                                        "message": "Invalid or expired recovery code"
                                    }""")
                    )
            ))
    @ExceptionHandler(InvalidCodeException.class)
    public ResponseEntity<ErrorResponse> handleInvalidCode(InvalidCodeException ex) {
        return buildErrorResponse(HttpStatus.BAD_REQUEST, "INVALID_RECOVERY_CODE", ex.getMessage());
    }

    @Operation(summary = "Handle invalid date range",
            responses = @ApiResponse(responseCode = "400",
                    content = @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ErrorResponse.class),
                            examples = @ExampleObject(value = """
                                    {
                                        "timestamp": "2024-01-15T14:40:00.123Z",
                                        "code": "INVALID_DATE_RANGE",
                                        "message": "Start date must be before end date"
                                    }""")
                    )
            ))
    @ExceptionHandler(br.com.fundatec.estudai.estudai.exception.InvalidDateRangeException.class)
    public ResponseEntity<ErrorResponse> handleInvalidDateRange(br.com.fundatec.estudai.estudai.exception.InvalidDateRangeException ex) {
        log.warn("Invalid date range: {}", ex.getMessage());
        return buildErrorResponse(HttpStatus.BAD_REQUEST, "INVALID_DATE_RANGE", ex.getMessage());
    }

    @Operation(summary = "Handle invalid goal duration",
            responses = @ApiResponse(responseCode = "400",
                    content = @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ErrorResponse.class),
                            examples = @ExampleObject(value = """
                                    {
                                        "timestamp": "2024-01-15T14:41:00.456Z",
                                        "code": "INVALID_GOAL_DURATION",
                                        "message": "Goal duration must be between 7 and 365 days",
                                        "detail": "Current duration: 3 days"
                                    }""")
                    )
            ))
    @ExceptionHandler(br.com.fundatec.estudai.estudai.exception.InvalidGoalDurationException.class)
    public ResponseEntity<ErrorResponse> handleInvalidGoalDuration(br.com.fundatec.estudai.estudai.exception.InvalidGoalDurationException ex) {
        log.warn("Invalid goal duration: {} - Actual: {} days, Min: {} days, Max: {} days", 
                ex.getMessage(), ex.getActualDays(), ex.getMinDays(), ex.getMaxDays());
        String detail = String.format("Current duration: %d days (Min: %d, Max: %d)", 
                ex.getActualDays(), ex.getMinDays(), ex.getMaxDays());
        return buildErrorResponse(HttpStatus.BAD_REQUEST, "INVALID_GOAL_DURATION", ex.getMessage(), detail);
    }

    @Operation(summary = "Handle invalid goal state",
            responses = @ApiResponse(responseCode = "400",
                    content = @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ErrorResponse.class),
                            examples = @ExampleObject(value = """
                                    {
                                        "timestamp": "2024-01-15T14:42:00.789Z",
                                        "code": "INVALID_GOAL_STATE",
                                        "message": "Only active goals can be updated",
                                        "detail": "Current status: COMPLETED, Required status: ACTIVE"
                                    }""")
                    )
            ))
    @ExceptionHandler(br.com.fundatec.estudai.estudai.exception.InvalidGoalStateException.class)
    public ResponseEntity<ErrorResponse> handleInvalidGoalState(br.com.fundatec.estudai.estudai.exception.InvalidGoalStateException ex) {
        log.warn("Invalid goal state: {} - Current: {}, Required: {}", 
                ex.getMessage(), ex.getCurrentStatus(), ex.getRequiredStatus());
        String detail = String.format("Current status: %s, Required status: %s", 
                ex.getCurrentStatus(), ex.getRequiredStatus());
        return buildErrorResponse(HttpStatus.BAD_REQUEST, "INVALID_GOAL_STATE", ex.getMessage(), detail);
    }

    @Operation(summary = "Handle generic runtime exceptions",
            responses = @ApiResponse(responseCode = "400",
                    content = @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ErrorResponse.class),
                            examples = @ExampleObject(value = """
                                    {
                                        "timestamp": "2024-01-15T14:43:00.123Z",
                                        "code": "BAD_REQUEST",
                                        "message": "Invalid request"
                                    }""")
                    )
            ))
    @ExceptionHandler(RuntimeException.class)
    public ResponseEntity<ErrorResponse> handleRuntimeException(RuntimeException ex) {
        log.error("Runtime exception occurred: {}", ex.getMessage(), ex);
        return buildErrorResponse(HttpStatus.BAD_REQUEST, "BAD_REQUEST", ex.getMessage());
    }

    @Operation(summary = "Handle generic exceptions",
            responses = @ApiResponse(responseCode = "500",
                    content = @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ErrorResponse.class),
                            examples = @ExampleObject(value = """
                                    {
                                        "timestamp": "2024-01-15T14:39:45.123Z",
                                        "code": "INTERNAL_SERVER_ERROR",
                                        "message": "An unexpected error occurred"
                                    }""")
                    )
            ))
    @ExceptionHandler(Exception.class)
    public ResponseEntity<ErrorResponse> handleGenericException(Exception ex) {
        log.error("Unexpected error occurred: ", ex);
        return buildErrorResponse(HttpStatus.INTERNAL_SERVER_ERROR, "INTERNAL_SERVER_ERROR",
                "An unexpected error occurred", ex.getClass().getSimpleName() + ": " + ex.getMessage());
    }

    private ResponseEntity<ErrorResponse> buildErrorResponse(HttpStatus status, String code, String message) {
        return buildErrorResponse(status, code, message, null);
    }

    private ResponseEntity<ErrorResponse> buildErrorResponse(HttpStatus status, String code, String message, String detail) {
        return ResponseEntity
                .status(status)
                .body(new ErrorResponse(code, message, detail));
    }
}