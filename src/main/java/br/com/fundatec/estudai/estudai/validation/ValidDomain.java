package br.com.fundatec.estudai.estudai.validation;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint(validatedBy = ValidDomainValidator.class)
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface ValidDomain {
    String message() default "Email domain not allowed. Valid domains: gmail.com, estudante.rs.gov.br, escola.com";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
}