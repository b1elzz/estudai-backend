package br.com.fundatec.estudai.estudai.exception;

public class InvalidCodeException extends RuntimeException {
    public InvalidCodeException() {
        super("Invalid or expired recovery code");
    }

    public InvalidCodeException(String message) {
        super(message);
    }
}