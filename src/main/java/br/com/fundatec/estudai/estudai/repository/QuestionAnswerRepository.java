package br.com.fundatec.estudai.estudai.repository;

import br.com.fundatec.estudai.estudai.entity.Question;
import br.com.fundatec.estudai.estudai.entity.QuestionAnswer;
import br.com.fundatec.estudai.estudai.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@Repository
public interface QuestionAnswerRepository extends JpaRepository<QuestionAnswer, Long> {

    List<QuestionAnswer> findByUserOrderByAnsweredAtDesc(User user);

    List<QuestionAnswer> findByUserIdOrderByAnsweredAtDesc(Long userId);

    Optional<QuestionAnswer> findByUserAndQuestion(User user, Question question);

    Optional<QuestionAnswer> findByUserIdAndQuestionId(Long userId, Long questionId);

    @Query("SELECT r FROM QuestionAnswer r WHERE r.user = :user AND " +
            "r.answeredAt >= :startDate AND r.answeredAt <= :endDate")
    List<QuestionAnswer> findByUserAndPeriod(@Param("user") User user,
                                             @Param("startDate") LocalDateTime startDate,
                                             @Param("endDate") LocalDateTime endDate);

    @Query("SELECT COUNT(r) FROM QuestionAnswer r WHERE r.user = :user AND r.isCorrect = true")
    Long countCorrectAnswersByUser(@Param("user") User user);

    @Query("SELECT COUNT(r) FROM QuestionAnswer r WHERE r.user = :user AND r.isCorrect = false")
    Long countWrongAnswersByUser(@Param("user") User user);

    @Query("SELECT COUNT(r) FROM QuestionAnswer r WHERE r.user = :user AND " +
            "DATE(r.answeredAt) = :date")
    Long countAnswersByUserAndDate(@Param("user") User user,
                                   @Param("date") java.time.LocalDate date);
}