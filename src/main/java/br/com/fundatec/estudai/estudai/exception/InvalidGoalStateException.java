package br.com.fundatec.estudai.estudai.exception;

import br.com.fundatec.estudai.estudai.entity.StudyGoal;

/**
 * Exception thrown when trying to perform an operation on a goal
 * that is not in the appropriate state
 */
public class InvalidGoalStateException extends RuntimeException {
    
    private final StudyGoal.Status currentStatus;
    private final StudyGoal.Status requiredStatus;
    
    public InvalidGoalStateException(String message, StudyGoal.Status currentStatus, StudyGoal.Status requiredStatus) {
        super(message);
        this.currentStatus = currentStatus;
        this.requiredStatus = requiredStatus;
    }
    
    public StudyGoal.Status getCurrentStatus() {
        return currentStatus;
    }
    
    public StudyGoal.Status getRequiredStatus() {
        return requiredStatus;
    }
}

