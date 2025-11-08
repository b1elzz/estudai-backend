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

    private static final String MOCK_USER_EMAIL = "mock@estudai.com";
    private static final String MOCK_USER_PASSWORD = "Teste@123";
    private static final String MOCK_USER_NAME = "Usuario Mock Teste";
    private static final LocalDate MOCK_USER_BIRTH_DATE = LocalDate.of(2000, 1, 15);

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    /**
     * Creates mock user on application startup if it doesn't exist
     * This ensures the user is always available for testing
     */
    @PostConstruct
    public void createMockUser() {
        try {
            if (!userRepository.existsByEmail(MOCK_USER_EMAIL)) {
                log.info("Creating mock user for testing: {}", MOCK_USER_EMAIL);
                
                User mockUser = new User();
                mockUser.setEmail(MOCK_USER_EMAIL);
                mockUser.setName(MOCK_USER_NAME);
                mockUser.setPassword(passwordEncoder.encode(MOCK_USER_PASSWORD));
                mockUser.setBirthDate(MOCK_USER_BIRTH_DATE);
                mockUser.setCoins(0);
                mockUser.setStreakDays(0);
                
                userRepository.save(mockUser);
                
                log.info("✅ Mock user created successfully: {}", MOCK_USER_EMAIL);
                log.info("   Email: {}", MOCK_USER_EMAIL);
                log.info("   Password: {}", MOCK_USER_PASSWORD);
            } else {
                log.debug("Mock user already exists: {}", MOCK_USER_EMAIL);
            }
        } catch (Exception e) {
            log.error("❌ Failed to create mock user: {}", e.getMessage(), e);
        }
    }
}

