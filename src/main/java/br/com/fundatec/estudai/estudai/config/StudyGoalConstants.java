package br.com.fundatec.estudai.estudai.config;

/**
 * Constants for Study Goal business rules
 * Following Single Responsibility Principle (SOLID)
 */
public final class StudyGoalConstants {
    
    private StudyGoalConstants() {
        // Private constructor to prevent instantiation
        throw new UnsupportedOperationException("This is a utility class and cannot be instantiated");
    }
    
    /**
     * Minimum duration for a study goal in days
     */
    public static final long MIN_GOAL_DURATION_DAYS = 7;
    
    /**
     * Maximum duration for a study goal in days
     */
    public static final long MAX_GOAL_DURATION_DAYS = 365;
    
    /**
     * Minimum daily study time in minutes
     */
    public static final int MIN_DAILY_MINUTES = 10;
    
    /**
     * Maximum daily study time in minutes (8 hours)
     */
    public static final int MAX_DAILY_MINUTES = 480;
    
    /**
     * Minimum daily questions count
     */
    public static final int MIN_DAILY_QUESTIONS = 1;
    
    /**
     * Maximum daily questions count
     */
    public static final int MAX_DAILY_QUESTIONS = 100;
}

