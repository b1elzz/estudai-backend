package br.com.fundatec.estudai.estudai.controller;

import br.com.fundatec.estudai.estudai.dto.request.RewardRedemptionRequest;
import br.com.fundatec.estudai.estudai.dto.request.RewardRequest;
import br.com.fundatec.estudai.estudai.dto.response.RewardRedemptionResponse;
import br.com.fundatec.estudai.estudai.dto.response.RewardResponse;
import br.com.fundatec.estudai.estudai.entity.Reward;
import br.com.fundatec.estudai.estudai.entity.RewardRedemption;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.service.RewardService;
import br.com.fundatec.estudai.estudai.util.AuthenticationUtils;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/rewards")
@RequiredArgsConstructor
@Tag(name = "Rewards", description = "Reward store management endpoints")
@SecurityRequirement(name = "bearerAuth")
public class RewardController {

    private final RewardService rewardService;
    private final AuthenticationUtils authenticationUtils;

    @GetMapping
    @Operation(summary = "Get all active rewards", description = "Get all active rewards from the store")
    public ResponseEntity<List<RewardResponse>> getAllRewards() {
        List<RewardResponse> rewards = rewardService.getAllRewards();
        return ResponseEntity.ok(rewards);
    }

    @GetMapping("/category/{category}")
    @Operation(summary = "Get rewards by category", description = "Get rewards filtered by category (TODOS, ELETRONICOS, MATERIAL_ESCOLAR)")
    public ResponseEntity<List<RewardResponse>> getRewardsByCategory(
            @PathVariable("category") Reward.Category category) {
        List<RewardResponse> rewards = rewardService.getRewardsByCategory(category);
        return ResponseEntity.ok(rewards);
    }

    @GetMapping("/{id}")
    @Operation(summary = "Get reward by ID", description = "Get specific reward by ID")
    public ResponseEntity<RewardResponse> getRewardById(@PathVariable("id") Long id) {
        RewardResponse reward = rewardService.getRewardById(id);
        return ResponseEntity.ok(reward);
    }

    @PostMapping
    @Operation(summary = "Create reward", description = "Create a new reward (admin operation)")
    public ResponseEntity<RewardResponse> createReward(
            @RequestBody @Valid RewardRequest request) {
        RewardResponse reward = rewardService.createReward(request);
        return ResponseEntity.status(HttpStatus.CREATED).body(reward);
    }

    @PutMapping("/{id}")
    @Operation(summary = "Update reward", description = "Update an existing reward (admin operation)")
    public ResponseEntity<RewardResponse> updateReward(
            @PathVariable("id") Long id,
            @RequestBody @Valid RewardRequest request) {
        RewardResponse reward = rewardService.updateReward(id, request);
        return ResponseEntity.ok(reward);
    }

    @PostMapping("/redeem")
    @Operation(summary = "Redeem reward", description = "Redeem a reward using user's coins")
    public ResponseEntity<RewardRedemptionResponse> redeemReward(
            @RequestBody @Valid RewardRedemptionRequest request,
            Authentication authentication) {
        User user = authenticationUtils.getUser(authentication);
        RewardRedemptionResponse redemption = rewardService.redeemReward(request, user);
        return ResponseEntity.status(HttpStatus.CREATED).body(redemption);
    }

    @GetMapping("/my-redemptions")
    @Operation(summary = "Get user redemptions", description = "Get all redemptions from logged user")
    public ResponseEntity<List<RewardRedemptionResponse>> getUserRedemptions(
            Authentication authentication) {
        User user = authenticationUtils.getUser(authentication);
        List<RewardRedemptionResponse> redemptions = rewardService.getUserRedemptions(user);
        return ResponseEntity.ok(redemptions);
    }

    @PutMapping("/redemptions/{id}/status")
    @Operation(summary = "Update redemption status", description = "Update redemption status (admin operation)")
    public ResponseEntity<RewardRedemptionResponse> updateRedemptionStatus(
            @PathVariable("id") Long redemptionId,
            @RequestParam("status") RewardRedemption.Status status) {
        RewardRedemptionResponse redemption = rewardService.updateRedemptionStatus(redemptionId, status);
        return ResponseEntity.ok(redemption);
    }
}

