package br.com.fundatec.estudai.estudai.config;

import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.repository.UserRepository;
import jakarta.annotation.PostConstruct;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import java.time.LocalDate;

/**
 * Component responsible for creating mock user for testing
 * Creates the user automatically on application startup if it doesn't exist
 */
@Slf4j
@Component
@RequiredArgsConstructor
public class MockUserInitializer {

    private static final String MOCK_USER_EMAIL = "teste@teste.com";
    private static final String MOCK_USER_EMAIL_OLD = "mock@estudai.com"; // Email antigo para compatibilidade
    private static final String MOCK_USER_PASSWORD = "Teste@123";
    private static final String MOCK_USER_NAME = "Usuario Mock Teste";
    private static final LocalDate MOCK_USER_BIRTH_DATE = LocalDate.of(2000, 1, 15);
    private static final Integer MOCK_USER_COINS = 1000;
    private static final Integer MOCK_USER_STREAK = 11;

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    /**
     * Creates mock user on application startup if it doesn't exist
     * This ensures the user is always available for testing
     * Also updates existing user with coins and streak if needed
     * Updates both new email (teste@teste.com) and old email (mock@estudai.com) for compatibility
     */
    @PostConstruct
    public void createMockUser() {
        try {
            // Criar/atualizar usuário com email novo
            createOrUpdateUser(MOCK_USER_EMAIL);
            
            // Atualizar usuário com email antigo (se existir) para compatibilidade
            userRepository.findByEmail(MOCK_USER_EMAIL_OLD).ifPresent(oldUser -> {
                oldUser.setCoins(MOCK_USER_COINS);
                oldUser.setStreakDays(MOCK_USER_STREAK);
                userRepository.save(oldUser);
                log.info("✅ Updated old mock user {} with coins: {} and streak: {}", 
                        MOCK_USER_EMAIL_OLD, MOCK_USER_COINS, MOCK_USER_STREAK);
            });
        } catch (Exception e) {
            log.error("❌ Failed to create/update mock user: {}", e.getMessage(), e);
        }
    }
    
    private void createOrUpdateUser(String email) {
        User mockUser = userRepository.findByEmail(email).orElse(null);
        
        if (mockUser == null) {
            log.info("Creating mock user for testing: {}", email);
            
            mockUser = new User();
            mockUser.setEmail(email);
            mockUser.setName(MOCK_USER_NAME);
            mockUser.setPassword(passwordEncoder.encode(MOCK_USER_PASSWORD));
            mockUser.setBirthDate(MOCK_USER_BIRTH_DATE);
            mockUser.setCoins(MOCK_USER_COINS);
            mockUser.setStreakDays(MOCK_USER_STREAK);
            
            userRepository.save(mockUser);
            
            log.info("✅ Mock user created successfully: {}", email);
            log.info("   Email: {}", email);
            log.info("   Password: {}", MOCK_USER_PASSWORD);
            log.info("   Coins: {}", MOCK_USER_COINS);
            log.info("   Streak: {}", MOCK_USER_STREAK);
        } else {
            // Atualiza coins e streak se o usuário já existir
            boolean updated = false;
            if (!MOCK_USER_COINS.equals(mockUser.getCoins())) {
                mockUser.setCoins(MOCK_USER_COINS);
                updated = true;
            }
            if (!MOCK_USER_STREAK.equals(mockUser.getStreakDays())) {
                mockUser.setStreakDays(MOCK_USER_STREAK);
                updated = true;
            }
            
            if (updated) {
                userRepository.save(mockUser);
                log.info("✅ Mock user {} updated with coins: {} and streak: {}", 
                        email, MOCK_USER_COINS, MOCK_USER_STREAK);
            } else {
                log.debug("Mock user already exists with correct values: {}", email);
            }
        }
    }
}

