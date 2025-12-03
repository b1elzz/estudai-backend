package br.com.fundatec.estudai.estudai.dto.response;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RewardRedemptionResponse {

    private Long id;
    private Long userId;
    private RewardResponse reward;
    private String status;
    private LocalDateTime redeemedAt;
}

