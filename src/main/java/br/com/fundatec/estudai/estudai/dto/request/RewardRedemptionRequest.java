package br.com.fundatec.estudai.estudai.dto.request;

import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RewardRedemptionRequest {

    @NotNull(message = "Reward ID is required")
    private Long rewardId;
}

