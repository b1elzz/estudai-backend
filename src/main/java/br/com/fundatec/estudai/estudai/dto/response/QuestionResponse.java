package br.com.fundatec.estudai.estudai.dto.response;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class QuestionResponse {

    private Long id;
    private String title;
    private Integer index;
    private Integer year;
    private String subject;
    private String language;
    private String context;
    private String alternativesIntroduction;
    private String correctAlternative;
    private String[] files;
    private String knowledgeArea;
    private String areaCode;
    private LocalDateTime createdAt;
    private List<AlternativeResponse> alternatives;
}