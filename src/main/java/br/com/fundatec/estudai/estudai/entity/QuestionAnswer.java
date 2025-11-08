package br.com.fundatec.estudai.estudai.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Entity
@Table(name = "question_answers")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class QuestionAnswer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "question_id", nullable = false)
    private Question question;

    @Column(name = "user_answer", length = 1)
    private String userAnswer;

    @Column(name = "is_correct")
    private Boolean isCorrect;

    @Column(name = "response_time_seconds")
    private Integer responseTimeSeconds;

    @Column(name = "answered_at")
    private LocalDateTime answeredAt;


    @PrePersist
    protected void onCreate() {
        answeredAt = LocalDateTime.now();
    }
}