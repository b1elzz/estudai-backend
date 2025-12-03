package br.com.fundatec.estudai.estudai.service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@Profile("dev")
@ConditionalOnProperty(name = "estudai.email.use-real-email", havingValue = "false", matchIfMissing = true)
public class EmailServiceMock implements EmailService {

    @Override
    public void sendRecoveryEmail(String toEmail, String recoveryCode, String userName) {
        log.info("""
            📧 [MOCK] Password Recovery Email
            ─────────────────────────────────
            To: {}
            User: {}
            Recovery Code: {}
            ─────────────────────────────────
            """, toEmail, userName, recoveryCode);
    }

    @Override
    public void sendRewardRedemptionEmail(String toEmail, String userName, String rewardTitle,
                                         String rewardDescription, Integer rewardCost, Long redemptionId) {
        log.info("""
            📧 [MOCK] Reward Redemption Email
            ─────────────────────────────────
            To: {}
            User: {}
            Reward: {}
            Description: {}
            Cost: {} moedas
            Redemption ID: {}
            ─────────────────────────────────
            """, toEmail, userName, rewardTitle, rewardDescription, rewardCost, redemptionId);
    }
}