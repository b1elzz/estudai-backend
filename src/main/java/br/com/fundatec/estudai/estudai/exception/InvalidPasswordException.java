package br.com.fundatec.estudai.estudai.exception;

public class InvalidPasswordException extends RuntimeException {
    public InvalidPasswordException() {
        super("Senha incorreta. Verifique e tente novamente.");
    }

    public InvalidPasswordException(String message) {
        super(message);
    }
}