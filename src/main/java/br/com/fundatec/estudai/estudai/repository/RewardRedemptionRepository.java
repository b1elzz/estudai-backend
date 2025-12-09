package br.com.fundatec.estudai.estudai.repository;

import br.com.fundatec.estudai.estudai.entity.RewardRedemption;
import br.com.fundatec.estudai.estudai.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface RewardRedemptionRepository extends JpaRepository<RewardRedemption, Long> {

    List<RewardRedemption> findByUserIdOrderByRedeemedAtDesc(Long userId);

    List<RewardRedemption> findByUserOrderByRedeemedAtDesc(User user);

    Optional<RewardRedemption> findByUserIdAndRewardId(Long userId, Long rewardId);

    boolean existsByUserIdAndRewardId(Long userId, Long rewardId);
}




