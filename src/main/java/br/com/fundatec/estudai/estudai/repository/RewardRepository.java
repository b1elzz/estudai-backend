package br.com.fundatec.estudai.estudai.repository;

import br.com.fundatec.estudai.estudai.entity.Reward;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RewardRepository extends JpaRepository<Reward, Long> {

    List<Reward> findByActiveTrueOrderByCreatedAtDesc();

    List<Reward> findByCategoryAndActiveTrueOrderByCreatedAtDesc(Reward.Category category);

    List<Reward> findByActiveTrueAndCategoryInOrderByCreatedAtDesc(List<Reward.Category> categories);
}

