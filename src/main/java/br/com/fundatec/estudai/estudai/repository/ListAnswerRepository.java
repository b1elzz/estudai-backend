package br.com.fundatec.estudai.estudai.repository;

import br.com.fundatec.estudai.estudai.entity.CustomList;
import br.com.fundatec.estudai.estudai.entity.ListAnswer;
import br.com.fundatec.estudai.estudai.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ListAnswerRepository extends JpaRepository<ListAnswer, Long> {

    List<ListAnswer> findByUserAndCustomListOrderByAnsweredAtDesc(User user, CustomList customList);

    List<ListAnswer> findByUserIdAndCustomListIdOrderByAnsweredAtDesc(Long userId, Long customListId);

    Optional<ListAnswer> findByUserIdAndCustomListIdAndQuestionId(Long userId, Long customListId, Long questionId);

    @Query("SELECT COUNT(la) FROM ListAnswer la WHERE la.user = :user AND la.customList = :customList AND la.isCorrect = true")
    Long countCorrectAnswersByUserAndList(@Param("user") User user, @Param("customList") CustomList customList);

    @Query("SELECT COUNT(la) FROM ListAnswer la WHERE la.user = :user AND la.customList = :customList AND la.isCorrect = false")
    Long countWrongAnswersByUserAndList(@Param("user") User user, @Param("customList") CustomList customList);

    @Query("SELECT COUNT(la) FROM ListAnswer la WHERE la.user = :user AND la.customList = :customList")
    Long countTotalAnswersByUserAndList(@Param("user") User user, @Param("customList") CustomList customList);

    void deleteByCustomList(CustomList customList);
}




