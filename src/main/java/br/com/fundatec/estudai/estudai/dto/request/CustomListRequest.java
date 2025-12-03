package br.com.fundatec.estudai.estudai.dto.request;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Positive;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CustomListRequest {

    @NotBlank(message = "List name is required")
    @Size(max = 255, message = "Name must not exceed 255 characters")
    private String name;

    @Size(max = 1000, message = "Description must not exceed 1000 characters")
    private String description;

    @Positive(message = "Filter year must be positive")
    private Integer filterYear;

    @NotBlank(message = "Filter subject is required")
    @Size(max = 50, message = "Subject must not exceed 50 characters")
    private String filterSubject;

    @Positive(message = "Questions count must be positive")
    private Integer questionsCount;

    private Boolean includeAnswered = false;

    private List<Long> questionIds;
}