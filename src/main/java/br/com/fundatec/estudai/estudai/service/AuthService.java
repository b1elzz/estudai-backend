package br.com.fundatec.estudai.estudai.service;

import br.com.fundatec.estudai.estudai.dto.request.LoginRequest;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.exception.InvalidPasswordException;
import br.com.fundatec.estudai.estudai.exception.UserNotFoundException;
import br.com.fundatec.estudai.estudai.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
@RequiredArgsConstructor
public class AuthService implements UserDetailsService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final TokenService tokenService;

    public String authenticateUser(LoginRequest loginRequest) {
        User user = userRepository.findByEmail(loginRequest.email())
                .orElseThrow(UserNotFoundException::new);

        if (!passwordEncoder.matches(loginRequest.password(), user.getPassword())) {
            throw new InvalidPasswordException();
        }

        return tokenService.generateToken(user.getEmail());
    }

    public User getOrCreateUserViaGoogle(String email, String name) {
        return userRepository.findByEmail(email)
                .orElseGet(() -> {
                    User newUser = new User();
                    newUser.setEmail(email);
                    newUser.setName(name != null ? name : "Google User");
                    newUser.setPassword(passwordEncoder.encode(UUID.randomUUID().toString()));
                    newUser.setBirthDate(java.time.LocalDate.now().minusYears(18));
                    return userRepository.save(newUser);
                });
    }

    @Override
        public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
            User user = userRepository.findByEmail(email)
                    .orElseThrow(() -> new UsernameNotFoundException("User not found: " + email));
    
            return org.springframework.security.core.userdetails.User.builder()
                    .username(user.getEmail())
                    .password(user.getPassword())
                    .authorities("ROLE_USER")
                    .build();
        }
    
        public User getUserByEmail(String email) {
            return userRepository.findByEmail(email)
                    .orElseThrow(UserNotFoundException::new);
        }
    }
    