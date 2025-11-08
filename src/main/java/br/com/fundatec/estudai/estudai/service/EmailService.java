package br.com.fundatec.estudai.estudai.service;

public interface EmailService {
    void sendRecoveryEmail(String toEmail, String recoveryCode, String userName);
}