package br.com.fundatec.estudai.estudai.controller;

import br.com.fundatec.estudai.estudai.dto.request.QuestionAnswerRequest;
import br.com.fundatec.estudai.estudai.dto.response.AnswerStatisticsResponse;
import br.com.fundatec.estudai.estudai.dto.response.QuestionAnswerResponse;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.service.QuestionAnswerService;
import br.com.fundatec.estudai.estudai.util.AuthenticationUtils;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.ExampleObject;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
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
@RequestMapping("/answers")
@RequiredArgsConstructor
@Tag(name = "Question Answers", description = "Question answers management endpoints")
@SecurityRequirement(name = "bearerAuth")
public class QuestionAnswerController {

    private final QuestionAnswerService questionAnswerService;
    private final AuthenticationUtils authenticationUtils;

    @PostMapping
    @Operation(
            summary = "Answer a question",
            description = "Submit an answer to a question and receive immediate feedback with coins reward"
    )
    @ApiResponses({
            @ApiResponse(
                    responseCode = "200",
                    description = "Answer submitted successfully",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = QuestionAnswerResponse.class)
                    )
            ),
            @ApiResponse(responseCode = "400", description = "Invalid answer format or response time"),
            @ApiResponse(responseCode = "401", description = "User not authenticated"),
            @ApiResponse(responseCode = "404", description = "Question not found")
    })
    public ResponseEntity<QuestionAnswerResponse> answerQuestion(
            @Valid @RequestBody QuestionAnswerRequest request,
            Authentication authentication) {

        User user = authenticationUtils.getUser(authentication);
        QuestionAnswerResponse response = questionAnswerService.answerQuestion(request, user);
        return ResponseEntity.ok(response);
    }

    @GetMapping
    @Operation(summary = "Get user answers", description = "Get all answers from logged user")
    public ResponseEntity<List<QuestionAnswerResponse>> getUserAnswers(Authentication authentication) {
        User user = authenticationUtils.getUser(authentication);
        List<QuestionAnswerResponse> answers = questionAnswerService.getUserAnswers(user);
        return ResponseEntity.ok(answers);
    }

    @GetMapping("/{id}")
    @Operation(summary = "Get answer by ID", description = "Get specific answer by ID")
    public ResponseEntity<QuestionAnswerResponse> getAnswerById(
            @PathVariable("id") Long id,
            Authentication authentication) {

        User user = authenticationUtils.getUser(authentication);
        QuestionAnswerResponse answer = questionAnswerService.getAnswerById(id, user);
        return ResponseEntity.ok(answer);
    }

    @GetMapping("/statistics")
    @Operation(
            summary = "Get answer statistics",
            description = "Get comprehensive statistics about user's performance (total answers, accuracy rate, coins earned)"
    )
    @ApiResponses({
            @ApiResponse(
                    responseCode = "200",
                    description = "Statistics retrieved successfully",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = AnswerStatisticsResponse.class),
                            examples = @ExampleObject(
                                    value = """
                                    {
                                        "totalAnswers": 50,
                                        "correctAnswers": 35,
                                        "wrongAnswers": 15,
                                        "accuracyRate": 70.0,
                                        "totalCoinsEarned": 350
                                    }"""
                            )
                    )
            ),
            @ApiResponse(responseCode = "401", description = "User not authenticated")
    })
    public ResponseEntity<AnswerStatisticsResponse> getAnswerStatistics(Authentication authentication) {
        User user = authenticationUtils.getUser(authentication);
        AnswerStatisticsResponse statistics = questionAnswerService.getStatistics(user);
        return ResponseEntity.ok(statistics);
    }
}