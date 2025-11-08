package br.com.fundatec.estudai.estudai.validation;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
import org.springframework.beans.factory.annotation.Value;

import java.util.List;

public class ValidDomainValidator implements ConstraintValidator<ValidDomain, String> {

    @Value("${estudai.allowed-domains}")
    private List<String> allowedDomains;

    @Override
    public boolean isValid(String email, ConstraintValidatorContext context) {
        if (email == null || email.isEmpty()) {
            return true;
        }

        try {
            String domain = email.substring(email.lastIndexOf("@") + 1).toLowerCase();
            return allowedDomains.contains(domain);
        } catch (IndexOutOfBoundsException e) {
            return false;
        }
    }
}