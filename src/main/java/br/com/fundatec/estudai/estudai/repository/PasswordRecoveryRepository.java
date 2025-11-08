package br.com.fundatec.estudai.estudai.repository;

import br.com.fundatec.estudai.estudai.entity.PasswordRecovery;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

public interface PasswordRecoveryRepository extends JpaRepository<PasswordRecovery, Long> {

    Optional<PasswordRecovery> findByEmailAndCode(String email, String code);

    Optional<PasswordRecovery> findByEmail(String email);

    Optional<PasswordRecovery> findByCode(String code);

    @Transactional
    @Modifying
    @Query("DELETE FROM PasswordRecovery r WHERE r.email = :email")
    void deleteByEmail(@Param("email") String email);
}