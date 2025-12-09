package br.com.fundatec.estudai.estudai.exception;

public class InvalidCodeException extends RuntimeException {
    public InvalidCodeException() {
        super("Código inválido ou expirado. Solicite um novo código.");
    }

    public InvalidCodeException(String message) {
        super(message);
    }
}