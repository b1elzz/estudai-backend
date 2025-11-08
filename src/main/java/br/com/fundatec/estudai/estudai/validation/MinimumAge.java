package br.com.fundatec.estudai.estudai.validation;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint(validatedBy = MinimumAgeValidator.class)
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface MinimumAge {
    String message() default "Must be at least {value} years old";
    int value() default 14;
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
}