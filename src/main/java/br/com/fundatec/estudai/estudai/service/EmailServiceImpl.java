package br.com.fundatec.estudai.estudai.service;

import br.com.fundatec.estudai.estudai.exception.EmailSendingException;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Profile;
import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

import java.nio.charset.StandardCharsets;

@Slf4j
@Service
@Profile("!dev")
@RequiredArgsConstructor
public class EmailServiceImpl implements EmailService {

    private static final String RECOVERY_TEMPLATE = "email/password-recovery";
    private static final String MASCOT_IMAGE_PATH = "static/images/mascot.png";

    private final JavaMailSender mailSender;
    private final TemplateEngine templateEngine;

    @Value("${spring.mail.username}")
    private String fromEmail;

    @Value("${estudai.email.sender-name:Estudai Team}")
    private String senderName;

    @Override
    public void sendRecoveryEmail(String toEmail, String recoveryCode, String userName) {
        try {
            validateEmail(toEmail);
            MimeMessage message = createRecoveryMessage(toEmail, recoveryCode, userName);
            mailSender.send(message);
            log.info("Recovery email sent successfully to: {}", toEmail);
        } catch (EmailSendingException e) {
            throw e;
        } catch (Exception e) {
            log.error("Failed to send recovery email to: {}", toEmail, e);
            throw new EmailSendingException("Failed to send recovery email to: " + toEmail, e);
        }
    }

    private MimeMessage createRecoveryMessage(String toEmail, String recoveryCode, String userName) {
        try {
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, StandardCharsets.UTF_8.name());

            configureSender(helper);
            configureRecipient(helper, toEmail);
            addContent(helper, recoveryCode, userName);
            addMascotImage(helper);

            return message;
        } catch (Exception e) {
            throw new EmailSendingException("Failed to create email message", e);
        }
    }

    private void validateEmail(String email) {
        if (email == null || !email.matches("^[\\w-.]+@([\\w-]+\\.)+[\\w-]{2,4}$")) {
            throw new EmailSendingException("Invalid email address: " + email);
        }
    }

    private void configureSender(MimeMessageHelper helper) {
        try {
            helper.setFrom(new InternetAddress(fromEmail, senderName));
        } catch (Exception e) {
            throw new EmailSendingException("Failed to configure email sender", e);
        }
    }

    private void configureRecipient(MimeMessageHelper helper, String toEmail) {
        try {
            helper.setTo(toEmail);
            helper.setSubject("🔐 Password Recovery - Estudai");
        } catch (Exception e) {
            throw new EmailSendingException("Failed to configure email recipient", e);
        }
    }

    private void addContent(MimeMessageHelper helper, String recoveryCode, String userName) {
        try {
            Context context = new Context();
            context.setVariable("recoveryCode", recoveryCode);
            context.setVariable("userName", userName != null ? userName : "Student");

            String htmlContent = templateEngine.process(RECOVERY_TEMPLATE, context);
            helper.setText(htmlContent, true);
        } catch (Exception e) {
            throw new EmailSendingException("Failed to add email content", e);
        }
    }

    private void addMascotImage(MimeMessageHelper helper) {
        try {
            ClassPathResource mascotImage = new ClassPathResource(MASCOT_IMAGE_PATH);
            if (mascotImage.exists()) {
                helper.addInline("mascot", mascotImage);
            }
        } catch (Exception e) {
            log.warn("Could not add mascot image to email", e);
        }
    }
}