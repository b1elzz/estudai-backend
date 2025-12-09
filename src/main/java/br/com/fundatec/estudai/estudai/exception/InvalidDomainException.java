package br.com.fundatec.estudai.estudai.exception;

import java.util.List;

public class InvalidDomainException extends RuntimeException {
    private final List<String> validDomains;

    public InvalidDomainException(List<String> validDomains) {
        super("Domínio de email não permitido. Use um dos domínios válidos.");
        this.validDomains = validDomains;
    }

    public List<String> getValidDomains() {
        return validDomains;
    }
}