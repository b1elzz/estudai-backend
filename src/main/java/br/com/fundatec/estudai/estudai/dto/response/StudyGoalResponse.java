package br.com.fundatec.estudai.estudai.dto.response;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class StudyGoalResponse {

    private Long id;
    private String title;
    private String description;
    private LocalDate startDate;
    private LocalDate endDate;
    private Integer dailyMinutes;
    private Integer dailyQuestions;
    private String focusSubject;
    private String status;
    private Double progressPercentage;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
}