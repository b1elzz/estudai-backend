package br.com.fundatec.estudai.estudai.controller;

import br.com.fundatec.estudai.estudai.dto.response.QuestionResponse;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.service.QuestionService;
import br.com.fundatec.estudai.estudai.util.AuthenticationUtils;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.ExampleObject;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * REST Controller for managing ENEM questions
 * Provides endpoints for listing, filtering and retrieving questions
 */
@RestController
@RequestMapping("/questions")
@RequiredArgsConstructor
@Tag(name = "Questions", description = "ENEM questions management endpoints - Public access for browsing")
@SecurityRequirement(name = "bearerAuth")
public class QuestionController {

    private final QuestionService questionService;
    private final AuthenticationUtils authenticationUtils;

    @GetMapping
    @Operation(
            summary = "Get questions with filters",
            description = "Retrieves ENEM questions with optional filters for subject, year, and pagination. " +
                         "Can exclude already answered questions for authenticated users."
    )
    @ApiResponses({
            @ApiResponse(
                    responseCode = "200",
                    description = "Questions retrieved successfully",
                    content = @Content(mediaType = "application/json", schema = @Schema(implementation = QuestionResponse.class))
            )
    })
    public ResponseEntity<List<QuestionResponse>> getQuestions(
            @Parameter(description = "Filter by subject (matematica, portugues, ciencias-humanas, ciencias-natureza, linguagens)")
            @RequestParam(value = "subject", required = false) String subject,
            
            @Parameter(description = "Filter by year (e.g., 2022, 2023)")
            @RequestParam(value = "year", required = false) Integer year,
            
            @Parameter(description = "Maximum number of questions to return (1-100, default: 10)")
            @RequestParam(value = "limit", required = false) Integer limit,
            
            @Parameter(description = "Include already answered questions (only for authenticated users)")
            @RequestParam(value = "includeAnswered", required = false) Boolean includeAnswered,
            
            Authentication authentication) {

        User user = null;
        if (authentication != null && authentication.isAuthenticated()) {
            user = authenticationUtils.getUser(authentication);
        }

        List<QuestionResponse> questions = questionService.getQuestions(subject, year, limit, includeAnswered, user);
        return ResponseEntity.ok(questions);
    }

    @GetMapping("/{id}")
    @Operation(
            summary = "Get question by ID",
            description = "Retrieves a specific ENEM question with all its alternatives and metadata"
    )
    @ApiResponses({
            @ApiResponse(
                    responseCode = "200",
                    description = "Question found",
                    content = @Content(mediaType = "application/json", schema = @Schema(implementation = QuestionResponse.class))
            ),
            @ApiResponse(responseCode = "404", description = "Question not found")
    })
    public ResponseEntity<QuestionResponse> getQuestionById(
            @Parameter(description = "Question ID", example = "1")
            @PathVariable("id") Long id) {
        QuestionResponse question = questionService.getQuestionById(id);
        return ResponseEntity.ok(question);
    }

    @GetMapping("/subjects")
    @Operation(
            summary = "Get available subjects",
            description = "Returns a list of all distinct subjects available in the question database"
    )
    @ApiResponses({
            @ApiResponse(
                    responseCode = "200",
                    description = "Subjects retrieved successfully",
                    content = @Content(
                            mediaType = "application/json",
                            examples = @ExampleObject(value = "[\"matematica\", \"portugues\", \"ciencias-humanas\", \"ciencias-natureza\", \"linguagens\"]")
                    )
            )
    })
    public ResponseEntity<List<String>> getSubjects() {
        List<String> subjects = questionService.getSubjects();
        return ResponseEntity.ok(subjects);
    }

    @GetMapping("/years")
    @Operation(
            summary = "Get available years",
            description = "Returns a list of all distinct years available in the question database"
    )
    @ApiResponses({
            @ApiResponse(
                    responseCode = "200",
                    description = "Years retrieved successfully",
                    content = @Content(
                            mediaType = "application/json",
                            examples = @ExampleObject(value = "[2022, 2023]")
                    )
            )
    })
    public ResponseEntity<List<Integer>> getYears() {
        List<Integer> years = questionService.getYears();
        return ResponseEntity.ok(years);
    }
}