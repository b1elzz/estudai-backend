package br.com.fundatec.estudai.estudai.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "alternatives")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Alternative {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "question_id", nullable = false)
    private Question question;

    @Column(name = "letter", nullable = false, length = 1)
    private String letter;

    @Column(name = "text", nullable = false, columnDefinition = "TEXT")
    private String text;

    @Column(name = "file_path")
    private String filePath;

    @Column(name = "is_correct", nullable = false)
    private Boolean isCorrect = false;
}