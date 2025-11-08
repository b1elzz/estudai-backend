package br.com.fundatec.estudai.estudai.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.List;

@Entity
@Table(name = "questions")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Question {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 255)
    private String title;

    @Column(nullable = false)
    private Integer index;

    @Column(nullable = false)
    private Integer year;

    @Column(nullable = false, length = 50)
    private String subject;

    @Column(length = 20)
    private String language;

    @Column(columnDefinition = "TEXT")
    private String context;

    @Column(name = "alternatives_introduction", columnDefinition = "TEXT")
    private String alternativesIntroduction;

    @Column(name = "correct_alternative", nullable = false, length = 1)
    private String correctAlternative;

    @Column(columnDefinition = "TEXT[]")
    private String[] files;

    @Column(name = "knowledge_area", length = 100)
    private String knowledgeArea;

    @Column(name = "area_code", length = 50)
    private String areaCode;

    @Column(name = "created_at")
    private LocalDateTime createdAt;

    @OneToMany(mappedBy = "question", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Alternative> alternatives;

    @PrePersist
    protected void onCreate() {
        createdAt = LocalDateTime.now();
    }
}