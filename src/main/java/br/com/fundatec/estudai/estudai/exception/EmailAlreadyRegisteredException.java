package br.com.fundatec.estudai.estudai.exception;

public class EmailAlreadyRegisteredException extends RuntimeException {
    public EmailAlreadyRegisteredException() {
        super("Email is already registered in the system");
    }
}