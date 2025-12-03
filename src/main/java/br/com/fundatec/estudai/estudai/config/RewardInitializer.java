package br.com.fundatec.estudai.estudai.config;

import br.com.fundatec.estudai.estudai.entity.Reward;
import br.com.fundatec.estudai.estudai.repository.RewardRepository;
import jakarta.annotation.PostConstruct;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

/**
 * Component responsible for initializing rewards in the database
 * Creates default rewards on application startup if they don't exist
 */
@Slf4j
@Component
@RequiredArgsConstructor
public class RewardInitializer {

    private final RewardRepository rewardRepository;

    /**
     * Creates default rewards on application startup if they don't exist
     */
    @PostConstruct
    public void initializeRewards() {
        try {
            if (rewardRepository.count() == 0) {
                log.info("Creating default rewards...");

                // Recompensas baseadas no design da loja
                createReward("Curso Online", 
                    "Curso online preparatorio para o enem", 
                    1100, 
                    Reward.Category.ELETRONICOS, 
                    null);

                createReward("Notebook Lenovo", 
                    "Notebook lenovo IdeaPad 3i, Intel Core i5, 8GB RAM, 256GB SSD", 
                    2500, 
                    Reward.Category.ELETRONICOS, 
                    null);

                createReward("Livros", 
                    "Livros para ajudar no desenvolvimento da leitura", 
                    550, 
                    Reward.Category.MATERIAL_ESCOLAR, 
                    null);

                createReward("Kit Escolar", 
                    "Mochila, Cadernos, Canetas, Lápis e livros", 
                    1000, 
                    Reward.Category.MATERIAL_ESCOLAR, 
                    null);

                createReward("Tablet", 
                    "Tablet Samsung 1GB de memória RAM e processador Quad-Core", 
                    2000, 
                    Reward.Category.ELETRONICOS, 
                    null);

                createReward("Mesa de estudos", 
                    "Uma mesa para auxiliar em sua organização", 
                    1400, 
                    Reward.Category.MATERIAL_ESCOLAR, 
                    null);

                log.info("✅ Default rewards created successfully");
            } else {
                log.debug("Rewards already exist, skipping initialization");
            }
        } catch (Exception e) {
            log.error("❌ Failed to create default rewards: {}", e.getMessage(), e);
        }
    }

    /**
     * Helper method to create a reward
     */
    private void createReward(String title, String description, Integer cost, 
                             Reward.Category category, String imageUrl) {
        Reward reward = new Reward();
        reward.setTitle(title);
        reward.setDescription(description);
        reward.setCost(cost);
        reward.setCategory(category);
        reward.setImageUrl(imageUrl);
        reward.setActive(true);
        reward.setCreatedAt(LocalDateTime.now());
        reward.setUpdatedAt(LocalDateTime.now());
        
        rewardRepository.save(reward);
        log.debug("Created reward: {}", title);
    }
}

