package br.com.fundatec.estudai.estudai.dto.response;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Response DTO for answer statistics
 * Contains user performance metrics
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Schema(description = "User answer statistics")
public class AnswerStatisticsResponse {

    @Schema(description = "Total number of answers", example = "50")
    private Long totalAnswers;

    @Schema(description = "Number of correct answers", example = "35")
    private Long correctAnswers;

    @Schema(description = "Number of wrong answers", example = "15")
    private Long wrongAnswers;

    @Schema(description = "Accuracy rate in percentage", example = "70.0")
    private Double accuracyRate;

    @Schema(description = "Total coins earned from correct answers", example = "350")
    private Long totalCoinsEarned;

    /**
     * Calculates accuracy rate based on correct and total answers
     */
    public static Double calculateAccuracyRate(Long correct, Long total) {
        return total > 0 ? (double) correct / total * 100.0 : 0.0;
    }

    /**
     * Creates a statistics response from answer counts
     */
    public static AnswerStatisticsResponse from(Long correct, Long wrong, Long totalCoins) {
        Long total = correct + wrong;
        return AnswerStatisticsResponse.builder()
                .totalAnswers(total)
                .correctAnswers(correct)
                .wrongAnswers(wrong)
                .accuracyRate(calculateAccuracyRate(correct, total))
                .totalCoinsEarned(totalCoins != null ? totalCoins : 0L)
                .build();
    }
}

