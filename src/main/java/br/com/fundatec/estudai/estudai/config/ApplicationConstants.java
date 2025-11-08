package br.com.fundatec.estudai.estudai.config;

/**
 * Global application constants
 * Centralizes magic numbers and strings to improve maintainability
 */
public final class ApplicationConstants {

    private ApplicationConstants() {
        throw new UnsupportedOperationException("This is a utility class and cannot be instantiated");
    }

    /**
     * Question-related constants
     */
    public static final class Questions {
        public static final int DEFAULT_LIMIT = 10;
        public static final int MAX_LIMIT = 100;
        public static final int MIN_LIMIT = 1;

        // Valid alternative letters
        public static final String[] VALID_ALTERNATIVES = {"A", "B", "C", "D", "E"};
        public static final String ALTERNATIVES_PATTERN = "^[A-E]$";

        private Questions() {}
    }

    /**
     * Answer-related constants
     */
    public static final class Answers {
        public static final int MIN_RESPONSE_TIME_SECONDS = 0;
        public static final int MAX_RESPONSE_TIME_SECONDS = 60; // 1 minute
        public static final int COINS_PER_CORRECT_ANSWER = 10;

        private Answers() {}
    }

    /**
     * Streak-related constants
     */
    public static final class Streaks {
        public static final int INITIAL_STREAK_DAYS = 0;
        public static final int INITIAL_LONGEST_STREAK = 0;
        public static final int COINS_FOR_STREAK_MILESTONE = 50;
        public static final int STREAK_MILESTONE_DAYS = 7;

        private Streaks() {}
    }

    /**
     * Custom List constants
     */
    public static final class CustomLists {
        public static final int MIN_QUESTIONS_COUNT = 1;
        public static final int MAX_QUESTIONS_COUNT = 50;
        public static final int DEFAULT_QUESTIONS_COUNT = 10;

        private CustomLists() {}
    }

    /**
     * Error messages
     */
    public static final class ErrorMessages {
        public static final String USER_NOT_AUTHENTICATED = "User must be authenticated to access this resource";
        public static final String ACCESS_DENIED = "You do not have permission to access this resource";
        public static final String RESOURCE_NOT_FOUND = "%s with ID %d not found";
        public static final String INVALID_ALTERNATIVE = "User answer must be one of: A, B, C, D, or E";
        public static final String INVALID_RESPONSE_TIME = "Response time must be between %d and %d seconds";

        private ErrorMessages() {}
    }
}

