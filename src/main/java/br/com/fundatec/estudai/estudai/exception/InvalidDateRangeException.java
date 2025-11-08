package br.com.fundatec.estudai.estudai.exception;

/**
 * Exception thrown when date range is invalid
 * (e.g., start date is after end date)
 */
public class InvalidDateRangeException extends RuntimeException {
    
    public InvalidDateRangeException(String message) {
        super(message);
    }
    
    public InvalidDateRangeException(String message, Throwable cause) {
        super(message, cause);
    }
}

