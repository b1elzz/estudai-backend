package br.com.fundatec.estudai.estudai.controller;

import br.com.fundatec.estudai.estudai.dto.request.StudyGoalRequest;
import br.com.fundatec.estudai.estudai.dto.response.StudyGoalResponse;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.service.StudyGoalService;
import br.com.fundatec.estudai.estudai.util.AuthenticationUtils;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/study-goals")
@RequiredArgsConstructor
@Tag(name = "Study Goals", description = "Study goals management endpoints")
@SecurityRequirement(name = "bearerAuth")
public class StudyGoalController {

    private final StudyGoalService studyGoalService;
    private final AuthenticationUtils authenticationUtils;

    @PostMapping
    @Operation(summary = "Create study goal", description = "Create a new study goal")
    public ResponseEntity<StudyGoalResponse> createGoal(
            @RequestBody @Valid StudyGoalRequest request,
            Authentication authentication) {

        User user = authenticationUtils.getUser(authentication);
        StudyGoalResponse goal = studyGoalService.createGoal(request, user);
        return ResponseEntity.status(HttpStatus.CREATED).body(goal);
    }

    @GetMapping
    @Operation(summary = "Get user goals", description = "Get all study goals from logged user")
    public ResponseEntity<List<StudyGoalResponse>> getUserGoals(Authentication authentication) {
        User user = authenticationUtils.getUser(authentication);
        List<StudyGoalResponse> goals = studyGoalService.getUserGoals(user);
        return ResponseEntity.ok(goals);
    }

    @GetMapping("/active")
    @Operation(summary = "Get active goals", description = "Get only active study goals from user")
    public ResponseEntity<List<StudyGoalResponse>> getActiveGoals(Authentication authentication) {
        User user = authenticationUtils.getUser(authentication);
        List<StudyGoalResponse> goals = studyGoalService.getActiveGoals(user);
        return ResponseEntity.ok(goals);
    }

    @GetMapping("/{id}")
    @Operation(summary = "Get goal by ID", description = "Get specific study goal by ID")
    public ResponseEntity<StudyGoalResponse> getGoalById(
            @PathVariable("id") Long id,
            Authentication authentication) {

        User user = authenticationUtils.getUser(authentication);
        StudyGoalResponse goal = studyGoalService.getGoalById(id, user);
        return ResponseEntity.ok(goal);
    }

    @PutMapping("/{id}")
    @Operation(summary = "Update study goal", description = "Update an existing study goal")
    public ResponseEntity<StudyGoalResponse> updateGoal(
            @PathVariable Long id,
            @Valid @RequestBody StudyGoalRequest request,
            Authentication authentication) {

        User user = authenticationUtils.getUser(authentication);
        StudyGoalResponse goal = studyGoalService.updateGoal(id, request, user);
        return ResponseEntity.ok(goal);
    }

    @PostMapping("/{id}/cancel")
    @Operation(summary = "Cancel study goal", description = "Cancel an active study goal")
    public ResponseEntity<Void> cancelGoal(
            @PathVariable("id") Long id,
            Authentication authentication) {

        User user = authenticationUtils.getUser(authentication);
        studyGoalService.cancelGoal(id, user);
        return ResponseEntity.ok().build();
    }
}