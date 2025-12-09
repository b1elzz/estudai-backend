package br.com.fundatec.estudai.estudai.exception;

public class UserNotFoundException extends RuntimeException {
    public UserNotFoundException() {
        super("Usuário não encontrado. Verifique o email e tente novamente.");
    }

    public UserNotFoundException(String message) {
        super(message);
    }
}