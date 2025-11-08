package br.com.fundatec.estudai.estudai.dto.response;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "Login successful response")
public record LoginResponse(
        @Schema(description = "JWT authentication token", example = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...")
        String token,

        @Schema(description = "User name", example = "John Doe")
        String name,

        @Schema(description = "Consecutive access days", example = "5")
        Integer streakDays,

        @Schema(description = "Accumulated virtual coins", example = "100")
        Integer coins
) {}