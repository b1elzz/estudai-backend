package br.com.fundatec.estudai.estudai.dto.response;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "Field validation error detail")
public record FieldErrorResponse(
        @Schema(description = "Field name with error", example = "email")
        String field,

        @Schema(description = "Error message", example = "must be a valid email address")
        String message,

        @Schema(description = "Rejected value (optional)", example = "invalid.email")
        String rejectedValue
) {
    public FieldErrorResponse(String field, String message) {
        this(field, message, null);
    }
}