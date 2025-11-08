package br.com.fundatec.estudai.estudai.repository;

import br.com.fundatec.estudai.estudai.entity.CustomList;
import br.com.fundatec.estudai.estudai.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CustomListRepository extends JpaRepository<CustomList, Long> {

    List<CustomList> findByUserOrderByCreatedAtDesc(User user);

    List<CustomList> findByUserIdOrderByCreatedAtDesc(Long userId);

    @Query("SELECT l FROM CustomList l WHERE l.user = :user AND " +
            "(:filterYear IS NULL OR l.filterYear = :filterYear) AND " +
            "(:filterSubject IS NULL OR l.filterSubject = :filterSubject)")
    List<CustomList> findByUserAndFilters(@Param("user") User user,
                                          @Param("filterYear") Integer filterYear,
                                          @Param("filterSubject") String filterSubject);
}