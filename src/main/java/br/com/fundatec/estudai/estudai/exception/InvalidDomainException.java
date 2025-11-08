package br.com.fundatec.estudai.estudai.exception;

import java.util.List;

public class InvalidDomainException extends RuntimeException {
    private final List<String> validDomains;

    public InvalidDomainException(List<String> validDomains) {
        super("Email domain not allowed. Please use one of the valid domains");
        this.validDomains = validDomains;
    }

    public List<String> getValidDomains() {
        return validDomains;
    }
}