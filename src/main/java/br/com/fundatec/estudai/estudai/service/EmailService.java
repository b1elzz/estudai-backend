package br.com.fundatec.estudai.estudai.service;

public interface EmailService {
    void sendRecoveryEmail(String toEmail, String recoveryCode, String userName);
    
    void sendRewardRedemptionEmail(String toEmail, String userName, String rewardTitle, 
                                   String rewardDescription, Integer rewardCost, Long redemptionId);
}