package br.com.fundatec.estudai.estudai.service;

import br.com.fundatec.estudai.estudai.dto.request.RegisterRequest;
import br.com.fundatec.estudai.estudai.dto.response.UserResponse;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.exception.EmailAlreadyRegisteredException;
import br.com.fundatec.estudai.estudai.exception.UserNotFoundException;
import br.com.fundatec.estudai.estudai.mapper.UserMapper;
import br.com.fundatec.estudai.estudai.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final UserMapper userMapper;

    @Transactional
    public UserResponse registerUser(RegisterRequest request) {
        if (userRepository.existsByEmail(request.email())) {
            throw new EmailAlreadyRegisteredException();
        }

        User user = new User();
        user.setName(request.name());
        user.setEmail(request.email());
        user.setPassword(passwordEncoder.encode(request.password()));
        user.setBirthDate(request.birthDate());

        User savedUser = userRepository.save(user);
        return userMapper.toResponseDTO(savedUser);
    }

    public User getUserByEmail(String email) {
        return userRepository.findByEmail(email)
                .orElseThrow(UserNotFoundException::new);
    }

    public UserResponse getUserResponseByEmail(String email) {
        User user = getUserByEmail(email);
        return userMapper.toResponseDTO(user);
    }
}