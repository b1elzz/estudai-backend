package br.com.fundatec.estudai.estudai.dto.request;

import br.com.fundatec.estudai.estudai.entity.Reward;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RewardRequest {

    @NotBlank(message = "Title is required")
    private String title;

    private String description;

    @NotNull(message = "Cost is required")
    @Positive(message = "Cost must be positive")
    private Integer cost;

    @NotNull(message = "Category is required")
    private Reward.Category category;

    private String imageUrl;

    private Boolean active = true;
}

