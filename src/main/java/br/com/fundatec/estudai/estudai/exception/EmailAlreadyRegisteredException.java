package br.com.fundatec.estudai.estudai.exception;

public class EmailAlreadyRegisteredException extends RuntimeException {
    public EmailAlreadyRegisteredException() {
        super("Este email já está cadastrado. Tente fazer login ou use outro email.");
    }
}