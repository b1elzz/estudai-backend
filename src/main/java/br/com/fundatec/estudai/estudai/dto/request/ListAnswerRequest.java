package br.com.fundatec.estudai.estudai.dto.request;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Request DTO for submitting an answer to a question within a custom list
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Schema(description = "Request to answer a question in a custom list")
public class ListAnswerRequest {

    @NotNull(message = "Custom list ID is required")
    @Schema(description = "ID of the custom list", example = "1", required = true)
    private Long customListId;

    @NotNull(message = "Question ID is required")
    @Schema(description = "ID of the question being answered", example = "1", required = true)
    private Long questionId;

    @NotNull(message = "User answer is required")
    @Pattern(regexp = "^[A-E]$", message = "Answer must be one of: A, B, C, D, or E")
    @Schema(description = "Selected alternative (A, B, C, D, or E)", example = "A", required = true)
    private String userAnswer;

    @NotNull(message = "Response time is required")
    @Min(value = 0, message = "Response time cannot be negative")
    @Max(value = 3600, message = "Response time cannot exceed 1 hour (3600 seconds)")
    @Schema(description = "Time taken to answer in seconds", example = "45", required = true, minimum = "0", maximum = "3600")
    private Integer responseTimeSeconds;
}




