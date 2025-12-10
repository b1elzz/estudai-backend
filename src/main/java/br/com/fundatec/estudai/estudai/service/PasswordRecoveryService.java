package br.com.fundatec.estudai.estudai.service;

import br.com.fundatec.estudai.estudai.dto.request.PasswordRecoveryRequest;
import br.com.fundatec.estudai.estudai.entity.PasswordRecovery;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.exception.InvalidCodeException;
import br.com.fundatec.estudai.estudai.exception.InvalidEmailException;
import br.com.fundatec.estudai.estudai.exception.InvalidPasswordException;
import br.com.fundatec.estudai.estudai.exception.UserNotFoundException;
import br.com.fundatec.estudai.estudai.repository.PasswordRecoveryRepository;
import br.com.fundatec.estudai.estudai.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.Random;

@Slf4j
@Service
@RequiredArgsConstructor
public class PasswordRecoveryService {

    private static final int MIN_PASSWORD_LENGTH = 8;

    private final PasswordRecoveryRepository passwordRecoveryRepository;
    private final EmailService emailService;
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    @Transactional
    public void requestPasswordRecovery(String email) {
        validateEmail(email);

        User user = userRepository.findByEmail(email)
                .orElseThrow(UserNotFoundException::new);

        passwordRecoveryRepository.deleteByEmail(email);

        String code = generateRecoveryCode();
        PasswordRecovery recovery = new PasswordRecovery();
        recovery.setEmail(email);
        recovery.setCode(code);
        recovery.setExpirationDate(LocalDateTime.now().plusHours(1));
        passwordRecoveryRepository.save(recovery);

        // Envia email de forma assíncrona para não bloquear a requisição
        try {
            emailService.sendRecoveryEmail(email, code, user.getName());
        } catch (Exception e) {
            // Log do erro mas não falha a requisição - código já foi salvo
            log.error("Failed to send recovery email to: {}. Code: {}", email, code, e);
            // Não relança a exceção para não quebrar o fluxo
        }
    }

    @Transactional
    public void validateRecoveryCode(String code) {
        PasswordRecovery recovery = passwordRecoveryRepository.findByCode(code)
                .orElseThrow(InvalidCodeException::new);

        if (recovery.isUsed() || recovery.getExpirationDate().isBefore(LocalDateTime.now())) {
            throw new InvalidCodeException();
        }
    }

    @Transactional
    public void resetPassword(PasswordRecoveryRequest request) {
        validateRecoveryCode(request.getCode());
        validatePassword(request.getNewPassword());

        PasswordRecovery recovery = passwordRecoveryRepository.findByCode(request.getCode())
                .orElseThrow(InvalidCodeException::new);

        User user = userRepository.findByEmail(recovery.getEmail())
                .orElseThrow(UserNotFoundException::new);

        user.setPassword(passwordEncoder.encode(request.getNewPassword()));
        userRepository.save(user);

        recovery.setUsed(true);
        passwordRecoveryRepository.save(recovery);
    }

    private String generateRecoveryCode() {
        return String.format("%06d", new Random().nextInt(999999));
    }

    private void validateEmail(String email) {
        if (email == null || !email.matches("^[\\w-.]+@([\\w-]+\\.)+[\\w-]{2,4}$")) {
            throw new InvalidEmailException("Invalid email format");
        }
    }

    private void validatePassword(String password) {
        if (password == null || password.length() < MIN_PASSWORD_LENGTH) {
            throw new InvalidPasswordException("Password must be at least " + MIN_PASSWORD_LENGTH + " characters");
        }
    }
}