package br.com.fundatec.estudai.estudai.controller;

import br.com.fundatec.estudai.estudai.dto.request.LoginRequest;
import br.com.fundatec.estudai.estudai.dto.request.PasswordRecoveryRequest;
import br.com.fundatec.estudai.estudai.dto.request.RegisterRequest;
import br.com.fundatec.estudai.estudai.dto.response.ErrorResponse;
import br.com.fundatec.estudai.estudai.dto.response.LoginResponse;
import br.com.fundatec.estudai.estudai.dto.response.UserInfoResponse;
import br.com.fundatec.estudai.estudai.dto.response.UserResponse;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.mapper.AuthMapper;
import br.com.fundatec.estudai.estudai.service.AuthService;
import br.com.fundatec.estudai.estudai.service.PasswordRecoveryService;
import br.com.fundatec.estudai.estudai.service.TokenService;
import br.com.fundatec.estudai.estudai.service.UserService;
import br.com.fundatec.estudai.estudai.util.AuthenticationUtils;
import org.springframework.security.core.Authentication;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.ExampleObject;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/auth")
@RequiredArgsConstructor
@Tag(name = "Authentication", description = "User authentication, registration and password recovery operations")
public class AuthController {

    private final AuthService authService;
    private final TokenService tokenService;
    private final UserService userService;
    private final PasswordRecoveryService passwordRecoveryService;
    private final AuthMapper authMapper;
    private final AuthenticationUtils authenticationUtils;

    @Operation(
            summary = "Authenticate user",
            description = "Generates JWT token for registered users using email and password"
    )
    @ApiResponses({
            @ApiResponse(
                    responseCode = "200",
                    description = "Authentication successful",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = LoginResponse.class),
                            examples = @ExampleObject(
                                    value = """
                                    {
                                        "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
                                        "name": "John Doe",
                                        "streakDays": 5,
                                        "coins": 100
                                    }"""
                            )
                    )
            ),
            @ApiResponse(
                    responseCode = "401",
                    description = "Invalid credentials",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = ErrorResponse.class),
                            examples = @ExampleObject(
                                    value = "{\"message\": \"Invalid email or password\"}"
                            )
                    )
            )
    })
    @PostMapping("/login")
    public ResponseEntity<LoginResponse> login(@RequestBody @Valid LoginRequest request) {
        String token = authService.authenticateUser(request);
        User user = authService.getUserByEmail(request.email());
        LoginResponse response = authMapper.toLoginResponse(user, token);
        return ResponseEntity.ok(response);
    }

    @Operation(
            summary = "Google OAuth authentication",
            description = "Generates JWT token for users authenticated via Google OAuth2"
    )
    @ApiResponses({
            @ApiResponse(
                    responseCode = "200",
                    description = "Authentication successful",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = LoginResponse.class),
                            examples = @ExampleObject(
                                    value = """
                                    {
                                        "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
                                        "name": "Google User",
                                        "streakDays": 0,
                                        "coins": 0
                                    }"""
                            )
                    )
            ),
            @ApiResponse(
                    responseCode = "401",
                    description = "Google authentication failed",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = ErrorResponse.class),
                            examples = @ExampleObject(
                                    value = "{\"message\": \"Google authentication failed\"}"
                            )
                    )
            )
    })
    @GetMapping("/google/success")
    public ResponseEntity<LoginResponse> googleLoginSuccess(OAuth2AuthenticationToken token) {
        String email = token.getPrincipal().getAttribute("email");
        String name = token.getPrincipal().getAttribute("name");

        User user = authService.getOrCreateUserViaGoogle(email, name);
        String jwtToken = tokenService.generateToken(user.getEmail());
        LoginResponse response = authMapper.toLoginResponse(user, jwtToken);

        return ResponseEntity.ok(response);
    }

    @Operation(
            summary = "Google authentication failure",
            description = "Endpoint called when Google login fails"
    )
    @ApiResponse(
            responseCode = "401",
            description = "Authentication failed",
            content = @Content(
                    mediaType = "application/json",
                    schema = @Schema(implementation = ErrorResponse.class),
                    examples = @ExampleObject(
                            value = """
                            {
                                "code": "GOOGLE_AUTH_FAILED",
                                "message": "Google authentication failed"
                            }"""
                    )
            )
    )
    @GetMapping("/google/failure")
    public ResponseEntity<ErrorResponse> googleLoginFailure() {
        return ResponseEntity
                .status(HttpStatus.UNAUTHORIZED)
                .body(new ErrorResponse(
                        "GOOGLE_AUTH_FAILED",
                        "Google authentication failed"
                ));
    }

    @Operation(
            summary = "Register new user",
            description = "Creates new user account with strict validations"
    )
    @ApiResponses({
            @ApiResponse(
                    responseCode = "200",
                    description = "Registration successful",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = UserResponse.class),
                            examples = @ExampleObject(
                                    value = """
                                    {
                                        "id": 1,
                                        "name": "Jane Doe",
                                        "email": "jane@estudante.rs.gov.br",
                                        "birthDate": "2005-06-15",
                                        "createdAt": "2024-01-15T14:30:00"
                                    }"""
                            )
                    )
            ),
            @ApiResponse(
                    responseCode = "400",
                    description = "Validation errors",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = ErrorResponse.class),
                            examples = @ExampleObject(
                                    value = """
                                    {
                                        "message": "Validation error",
                                        "errors": [
                                            "Password must contain at least: 1 uppercase, 1 lowercase, 1 number and 1 special character"
                                        ]
                                    }"""
                            )
                    )
            )
    })
    @PostMapping("/register")
    public ResponseEntity<UserResponse> register(@RequestBody @Valid RegisterRequest request) {
        UserResponse userResponse = userService.registerUser(request);
        return ResponseEntity.ok(userResponse);
    }

    @Operation(
            summary = "Request password recovery",
            description = "Sends 6-digit code to user's email"
    )
    @ApiResponses({
            @ApiResponse(
                    responseCode = "200",
                    description = "Code sent successfully"
            ),
            @ApiResponse(
                    responseCode = "400",
                    description = "Invalid or unregistered email",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = ErrorResponse.class),
                            examples = @ExampleObject(
                                    value = "{\"message\": \"Email not found\"}"
                            )
                    )
            )
    })
    @PostMapping("/password/recovery")
    public ResponseEntity<Void> requestPasswordRecovery(@RequestParam String email) {
        passwordRecoveryService.requestPasswordRecovery(email);
        return ResponseEntity.ok().build();
    }

    @Operation(
            summary = "Validate recovery code",
            description = "Validates the 6-digit code sent to user's email"
    )
    @ApiResponses({
            @ApiResponse(
                    responseCode = "200",
                    description = "Code is valid"
            ),
            @ApiResponse(
                    responseCode = "400",
                    description = "Invalid or expired code",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = ErrorResponse.class),
                            examples = @ExampleObject(
                                    value = "{\"message\": \"Invalid or expired code\"}"
                            )
                    )
            )
    })
    @PostMapping("/password/validate-code")
    public ResponseEntity<Void> validateRecoveryCode(@RequestParam String code) {
        passwordRecoveryService.validateRecoveryCode(code);
        return ResponseEntity.ok().build();
    }

    @Operation(
            summary = "Reset password",
            description = "Resets user password using a valid recovery code"
    )
    @ApiResponses({
            @ApiResponse(
                    responseCode = "200",
                    description = "Password reset successfully"
            ),
            @ApiResponse(
                    responseCode = "400",
                    description = "Invalid or expired code, or invalid new password",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = ErrorResponse.class),
                            examples = @ExampleObject(
                                    value = "{\"message\": \"Invalid or expired code\"}"
                            )
                    )
            )
    })
    @PostMapping("/password/reset")
    public ResponseEntity<Void> resetPassword(@RequestBody @Valid PasswordRecoveryRequest request) {
        passwordRecoveryService.resetPassword(request);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/me")
    @Operation(
            summary = "Get current user info",
            description = "Get current authenticated user information including coins and streak"
    )
    @io.swagger.v3.oas.annotations.security.SecurityRequirement(name = "bearerAuth")
    @ApiResponses({
            @ApiResponse(
                    responseCode = "200",
                    description = "User information retrieved successfully",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = UserInfoResponse.class),
                            examples = @ExampleObject(
                                    value = """
                                    {
                                        "id": 1,
                                        "name": "John Doe",
                                        "email": "john@example.com",
                                        "streakDays": 11,
                                        "coins": 1000
                                    }"""
                            )
                    )
            ),
            @ApiResponse(
                    responseCode = "401",
                    description = "User not authenticated"
            )
    })
    public ResponseEntity<UserInfoResponse> getCurrentUser(Authentication authentication) {
        User user = authenticationUtils.getUser(authentication);
        
        UserInfoResponse response = new UserInfoResponse();
        response.setId(user.getId());
        response.setName(user.getName());
        response.setEmail(user.getEmail());
        response.setStreakDays(user.getStreakDays());
        response.setCoins(user.getCoins());
        
        return ResponseEntity.ok(response);
    }
}