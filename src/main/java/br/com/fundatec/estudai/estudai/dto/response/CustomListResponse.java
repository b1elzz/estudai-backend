package br.com.fundatec.estudai.estudai.dto.response;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@JsonInclude(JsonInclude.Include.NON_NULL)
public class CustomListResponse {

    private Long id;
    private String name;
    private String description;
    private Integer filterYear;
    private String filterSubject;
    private Integer questionsCount;
    private Boolean includeAnswered;
    private List<QuestionResponse> questions;
    private Long correctAnswers;
    private Long wrongAnswers;
    private Long totalAnswers;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
}