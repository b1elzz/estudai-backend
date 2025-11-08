package br.com.fundatec.estudai.estudai.repository;

import br.com.fundatec.estudai.estudai.entity.StudyStreak;
import br.com.fundatec.estudai.estudai.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface StudyStreakRepository extends JpaRepository<StudyStreak, Long> {

    Optional<StudyStreak> findByUser(User user);

    Optional<StudyStreak> findByUserId(Long userId);
}