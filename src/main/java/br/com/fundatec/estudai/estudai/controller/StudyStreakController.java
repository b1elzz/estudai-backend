package br.com.fundatec.estudai.estudai.controller;

import br.com.fundatec.estudai.estudai.dto.response.StudyStreakResponse;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.service.StudyStreakService;
import br.com.fundatec.estudai.estudai.util.AuthenticationUtils;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/study-streak")
@RequiredArgsConstructor
@Tag(name = "Study Streak", description = "Study streak management endpoints")
@SecurityRequirement(name = "bearerAuth")
public class StudyStreakController {

    private final StudyStreakService studyStreakService;
    private final AuthenticationUtils authenticationUtils;

    @GetMapping
    @Operation(summary = "Get study streak", description = "Get current study streak of logged user")
    public ResponseEntity<StudyStreakResponse> getStudyStreak(Authentication authentication) {
        User user = authenticationUtils.getUser(authentication);
        StudyStreakResponse streak = studyStreakService.getUserStreak(user);
        return ResponseEntity.ok(streak);
    }

    @PostMapping("/reset")
    @Operation(summary = "Reset study streak", description = "Reset study streak to zero")
    public ResponseEntity<Void> resetStreak(Authentication authentication) {
        User user = authenticationUtils.getUser(authentication);
        studyStreakService.resetStreak(user);
        return ResponseEntity.ok().build();
    }
}