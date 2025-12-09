package br.com.fundatec.estudai.estudai.dto.response;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ListAnswerResponse {

    private Long id;
    private Long customListId;
    private Long questionId;
    private String userAnswer;
    private String correctAnswer;
    private Boolean isCorrect;
    private Integer responseTimeSeconds;
    private LocalDateTime answeredAt;
}




