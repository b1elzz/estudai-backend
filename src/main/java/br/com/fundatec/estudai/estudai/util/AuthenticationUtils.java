package br.com.fundatec.estudai.estudai.util;

import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.exception.UnauthenticatedUserException;
import br.com.fundatec.estudai.estudai.service.AuthService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
public class AuthenticationUtils {

    private final AuthService authService;

    public User getUser(Authentication authentication) {
        if (authentication == null || !authentication.isAuthenticated()) {
            throw new UnauthenticatedUserException("User not authenticated");
        }

        String email = authentication.getName();
        return authService.getUserByEmail(email);
    }
}