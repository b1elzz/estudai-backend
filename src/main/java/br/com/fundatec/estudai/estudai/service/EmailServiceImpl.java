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
@RequiredArgsConstructor
public class EmailServiceImpl implements EmailService {

    private static final String RECOVERY_TEMPLATE = "email/password-recovery";
    private static final String REWARD_REDEMPTION_TEMPLATE = "email/reward-redemption";
    private static final String LOGO_PNG_PATH = "templates/email/assets/modelo 1-Photoroom 1.png";
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
            log.debug("Attempting to send recovery email to: {} from: {}", toEmail, fromEmail);
            MimeMessage message = createRecoveryMessage(toEmail, recoveryCode, userName);
            mailSender.send(message);
            log.info("Recovery email sent successfully to: {}", toEmail);
        } catch (EmailSendingException e) {
            log.error("Email sending exception for: {} - {}", toEmail, e.getMessage(), e);
            throw e;
        } catch (jakarta.mail.AuthenticationFailedException e) {
            log.error("Email authentication failed. Check EMAIL_USERNAME and EMAIL_PASSWORD for: {}", fromEmail, e);
            throw new EmailSendingException("Email authentication failed. Please check email credentials.", e);
        } catch (jakarta.mail.MessagingException e) {
            log.error("Email messaging error for: {} - {}", toEmail, e.getMessage(), e);
            throw new EmailSendingException("Failed to send recovery email to: " + toEmail + ". Error: " + e.getMessage(), e);
        } catch (Exception e) {
            log.error("Unexpected error sending recovery email to: {}", toEmail, e);
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
            addLogoImage(helper);
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

    private void addLogoImage(MimeMessageHelper helper) {
        try {
            ClassPathResource logoImage = new ClassPathResource(LOGO_PNG_PATH);
            if (logoImage.exists()) {
                helper.addInline("logo", logoImage, "image/png");
                log.debug("Logo PNG added to email");
            } else {
                log.warn("Logo PNG not found at: {}", LOGO_PNG_PATH);
            }
        } catch (Exception e) {
            log.warn("Could not add logo PNG to email", e);
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

    @Override
    public void sendRewardRedemptionEmail(String toEmail, String userName, String rewardTitle,
                                         String rewardDescription, Integer rewardCost, Long redemptionId) {
        try {
            validateEmail(toEmail);
            MimeMessage message = createRedemptionMessage(toEmail, userName, rewardTitle, 
                                                         rewardDescription, rewardCost, redemptionId);
            mailSender.send(message);
            log.info("Reward redemption email sent successfully to: {}", toEmail);
        } catch (EmailSendingException e) {
            throw e;
        } catch (Exception e) {
            log.error("Failed to send reward redemption email to: {}", toEmail, e);
            throw new EmailSendingException("Failed to send reward redemption email to: " + toEmail, e);
        }
    }

    private MimeMessage createRedemptionMessage(String toEmail, String userName, String rewardTitle,
                                                String rewardDescription, Integer rewardCost, Long redemptionId) {
        try {
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, StandardCharsets.UTF_8.name());

            configureSender(helper);
            helper.setTo(toEmail);
            helper.setSubject("🎉 Resgate Confirmado - Estudai");
            
            Context context = new Context();
            context.setVariable("userName", userName != null ? userName : "Estudante");
            context.setVariable("rewardTitle", rewardTitle);
            context.setVariable("rewardDescription", rewardDescription != null ? rewardDescription : "");
            context.setVariable("rewardCost", rewardCost != null ? rewardCost : 0);
            context.setVariable("redemptionId", redemptionId != null ? redemptionId : 0);

            String htmlContent = templateEngine.process(REWARD_REDEMPTION_TEMPLATE, context);
            helper.setText(htmlContent, true);
            
            addLogoImage(helper);

            return message;
        } catch (Exception e) {
            throw new EmailSendingException("Failed to create redemption email message", e);
        }
    }
}