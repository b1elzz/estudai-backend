package br.com.fundatec.estudai.estudai.dto.response;

import io.swagger.v3.oas.annotations.media.Schema;

import java.time.LocalDateTime;
import java.util.List;

@Schema(description = "Standard error response for API")
public record ErrorResponse(
        @Schema(description = "Error timestamp", example = "2024-01-15T14:30:45.123Z")
        LocalDateTime timestamp,

        @Schema(description = "Error code for programmatic handling", example = "EMAIL_ALREADY_REGISTERED")
        String code,

        @Schema(description = "User-friendly error message", example = "The provided email is already registered")
        String message,

        @Schema(description = "Technical details (optional)", example = "Unique constraint violation: email")
        String detail,

        @Schema(description = "List of validation errors (optional)")
        List<FieldErrorResponse> fieldErrors
) {
    public ErrorResponse(String code, String message) {
        this(LocalDateTime.now(), code, message, null, null);
    }

    public ErrorResponse(String code, String message, String detail) {
        this(LocalDateTime.now(), code, message, detail, null);
    }

}