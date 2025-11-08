package br.com.fundatec.estudai.estudai.service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@Profile("dev")
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
}