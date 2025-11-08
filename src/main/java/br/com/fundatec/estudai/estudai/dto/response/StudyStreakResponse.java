package br.com.fundatec.estudai.estudai.dto.response;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class StudyStreakResponse {

    private Long id;
    private Integer consecutiveDays;
    private LocalDate lastStudyDay;
    private Integer longestStreak;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
}