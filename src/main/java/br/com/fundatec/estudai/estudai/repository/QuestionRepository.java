package br.com.fundatec.estudai.estudai.repository;

import br.com.fundatec.estudai.estudai.entity.Question;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuestionRepository extends JpaRepository<Question, Long> {

    List<Question> findBySubject(String subject);

    List<Question> findByYear(Integer year);

    List<Question> findBySubjectAndYear(String subject, Integer year);

    @Query("SELECT DISTINCT q.subject FROM Question q ORDER BY q.subject")
    List<String> findDistinctSubjects();

    @Query("SELECT DISTINCT q.year FROM Question q ORDER BY q.year DESC")
    List<Integer> findDistinctYears();

    @Query("SELECT q FROM Question q WHERE q.subject = :subject AND q.year = :year ORDER BY q.index")
    List<Question> findBySubjectAndYearOrderByIndex(@Param("subject") String subject,
                                                    @Param("year") Integer year);

    @Query("SELECT q FROM Question q WHERE q.subject = :subject AND q.year = :year ORDER BY FUNCTION('RANDOM') LIMIT :limit")
    List<Question> findRandomBySubjectAndYear(@Param("subject") String subject,
                                              @Param("year") Integer year,
                                              @Param("limit") Integer limit);

    @Query("SELECT q FROM Question q WHERE q.subject = :subject ORDER BY FUNCTION('RANDOM') LIMIT :limit")
    List<Question> findRandomBySubject(@Param("subject") String subject,
                                       @Param("limit") Integer limit);

    @Query("SELECT q FROM Question q WHERE q.year = :year ORDER BY FUNCTION('RANDOM') LIMIT :limit")
    List<Question> findRandomByYear(@Param("year") Integer year,
                                    @Param("limit") Integer limit);

    @Query("SELECT q FROM Question q ORDER BY FUNCTION('RANDOM') LIMIT :limit")
    List<Question> findRandom(@Param("limit") Integer limit);

    @Query("SELECT COUNT(q) FROM Question q WHERE q.subject = :subject")
    Long countBySubject(@Param("subject") String subject);

    @Query("SELECT COUNT(q) FROM Question q WHERE q.year = :year")
    Long countByYear(@Param("year") Integer year);
}