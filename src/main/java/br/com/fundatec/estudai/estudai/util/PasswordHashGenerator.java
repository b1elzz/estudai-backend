package br.com.fundatec.estudai.estudai.util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * Utility class to generate BCrypt password hashes
 * Used for creating test users
 */
public class PasswordHashGenerator {
    
    public static void main(String[] args) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        
        // Generate hash for test password
        String password = "Test@123";
        String hash = encoder.encode(password);
        
        System.out.println("===========================================");
        System.out.println("Password Hash Generator");
        System.out.println("===========================================");
        System.out.println("Password: " + password);
        System.out.println("BCrypt Hash: " + hash);
        System.out.println("===========================================");
        System.out.println("\nUse this hash in your SQL insert statements:");
        System.out.println("password = '" + hash + "'");
    }
}

