package br.com.fundatec.estudai.estudai.repository;

import br.com.fundatec.estudai.estudai.entity.StudyGoal;
import br.com.fundatec.estudai.estudai.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface StudyGoalRepository extends JpaRepository<StudyGoal, Long> {

    List<StudyGoal> findByUserOrderByCreatedAtDesc(User user);

    List<StudyGoal> findByUserIdOrderByCreatedAtDesc(Long userId);

    List<StudyGoal> findByUserAndStatusOrderByCreatedAtDesc(User user, StudyGoal.Status status);

    List<StudyGoal> findByUserIdAndStatusOrderByCreatedAtDesc(Long userId, StudyGoal.Status status);

    @Query("SELECT g FROM StudyGoal g WHERE g.user = :user AND " +
            "g.startDate <= :currentDate AND g.endDate >= :currentDate AND g.status = 'ACTIVE'")
    List<StudyGoal> findActiveGoalsByUserAndDate(@Param("user") User user,
                                                 @Param("currentDate") LocalDate currentDate);

    @Query("SELECT g FROM StudyGoal g WHERE g.user = :user AND " +
            "g.endDate < :currentDate AND g.status = 'ACTIVE'")
    List<StudyGoal> findExpiredGoalsByUserAndDate(@Param("user") User user,
                                                  @Param("currentDate") LocalDate currentDate);
}