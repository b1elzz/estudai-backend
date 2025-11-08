package br.com.fundatec.estudai.estudai.exception;

/**
 * Exception thrown when goal duration does not meet requirements
 */
public class InvalidGoalDurationException extends RuntimeException {
    
    private final long actualDays;
    private final long minDays;
    private final long maxDays;
    
    public InvalidGoalDurationException(String message, long actualDays, long minDays, long maxDays) {
        super(message);
        this.actualDays = actualDays;
        this.minDays = minDays;
        this.maxDays = maxDays;
    }
    
    public long getActualDays() {
        return actualDays;
    }
    
    public long getMinDays() {
        return minDays;
    }
    
    public long getMaxDays() {
        return maxDays;
    }
}

