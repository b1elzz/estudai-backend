package br.com.fundatec.estudai.estudai.dto.response;

import io.swagger.v3.oas.annotations.media.Schema;

import java.time.LocalDate;

@Schema(description = "User data response")
public record UserResponse(
        @Schema(description = "User ID", example = "1")
        Long id,

        @Schema(description = "Full name", example = "John Doe")
        String name,

        @Schema(description = "Registered email", example = "john@student.com")
        String email,

        @Schema(description = "Birth date", example = "2005-03-15")
        LocalDate birthDate,

        @Schema(description = "Registration date", example = "2024-01-15T10:30:00")
        String createdAt
) {}