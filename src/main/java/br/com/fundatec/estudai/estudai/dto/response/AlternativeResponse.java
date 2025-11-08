package br.com.fundatec.estudai.estudai.dto.response;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AlternativeResponse {

    private Long id;
    private String letter;
    private String text;
    private String filePath;
    private Boolean isCorrect;
}