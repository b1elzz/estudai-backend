package br.com.fundatec.estudai.estudai.controller;

import br.com.fundatec.estudai.estudai.dto.request.ListAnswerRequest;
import br.com.fundatec.estudai.estudai.dto.response.ListAnswerResponse;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.service.ListAnswerService;
import br.com.fundatec.estudai.estudai.util.AuthenticationUtils;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/list-answers")
@RequiredArgsConstructor
@Tag(name = "List Answers", description = "Question answers within custom lists management endpoints")
@SecurityRequirement(name = "bearerAuth")
public class ListAnswerController {

    private final ListAnswerService listAnswerService;
    private final AuthenticationUtils authenticationUtils;

    @PostMapping
    @Operation(
            summary = "Answer a question in a list",
            description = "Submit an answer to a question within a custom list"
    )
    @ApiResponses({
            @ApiResponse(
                    responseCode = "200",
                    description = "Answer submitted successfully",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = ListAnswerResponse.class)
                    )
            ),
            @ApiResponse(responseCode = "400", description = "Invalid answer format or response time"),
            @ApiResponse(responseCode = "401", description = "User not authenticated"),
            @ApiResponse(responseCode = "403", description = "User doesn't own this list"),
            @ApiResponse(responseCode = "404", description = "List or question not found")
    })
    public ResponseEntity<ListAnswerResponse> answerQuestionInList(
            @Valid @RequestBody ListAnswerRequest request,
            Authentication authentication) {

        User user = authenticationUtils.getUser(authentication);
        ListAnswerResponse response = listAnswerService.answerQuestionInList(request, user);
        return ResponseEntity.ok(response);
    }

    @GetMapping("/list/{listId}")
    @Operation(
            summary = "Get answers by list",
            description = "Get all answers for a specific custom list"
    )
    public ResponseEntity<List<ListAnswerResponse>> getAnswersByList(
            @Parameter(description = "List ID", example = "1")
            @PathVariable Long listId,
            Authentication authentication) {

        User user = authenticationUtils.getUser(authentication);
        List<ListAnswerResponse> answers = listAnswerService.getAnswersByList(listId, user);
        return ResponseEntity.ok(answers);
    }

    @GetMapping("/list/{listId}/statistics/correct")
    @Operation(summary = "Get correct answers count by list")
    public ResponseEntity<Long> getCorrectAnswersCount(
            @PathVariable Long listId,
            Authentication authentication) {

        User user = authenticationUtils.getUser(authentication);
        Long count = listAnswerService.countCorrectAnswersByList(listId, user);
        return ResponseEntity.ok(count);
    }

    @GetMapping("/list/{listId}/statistics/wrong")
    @Operation(summary = "Get wrong answers count by list")
    public ResponseEntity<Long> getWrongAnswersCount(
            @PathVariable Long listId,
            Authentication authentication) {

        User user = authenticationUtils.getUser(authentication);
        Long count = listAnswerService.countWrongAnswersByList(listId, user);
        return ResponseEntity.ok(count);
    }

    @GetMapping("/list/{listId}/statistics/total")
    @Operation(summary = "Get total answers count by list")
    public ResponseEntity<Long> getTotalAnswersCount(
            @PathVariable Long listId,
            Authentication authentication) {

        User user = authenticationUtils.getUser(authentication);
        Long count = listAnswerService.countTotalAnswersByList(listId, user);
        return ResponseEntity.ok(count);
    }
}




