package br.com.fundatec.estudai.estudai.dto.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class StudyGoalRequest {

    private String title;
    private String description;
    private LocalDate startDate;
    private LocalDate endDate;
    private Integer dailyMinutes;
    private Integer dailyQuestions;
    private String focusSubject;
}