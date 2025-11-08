package br.com.fundatec.estudai.estudai.controller;

import br.com.fundatec.estudai.estudai.dto.request.CustomListRequest;
import br.com.fundatec.estudai.estudai.dto.response.CustomListResponse;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.service.CustomListService;
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
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * REST Controller for managing custom question lists
 * Allows users to create personalized lists by filters or specific question IDs
 */
@RestController
@RequestMapping("/custom-lists")
@RequiredArgsConstructor
@Tag(name = "Custom Lists", description = "Create and manage personalized question lists with filters or specific IDs")
@SecurityRequirement(name = "bearerAuth")
public class CustomListController {

    private final CustomListService customListService;
    private final AuthenticationUtils authenticationUtils;

    @PostMapping
    @Operation(
            summary = "Create custom list",
            description = "Create a new personalized question list using filters (subject, year) or specific question IDs"
    )
    @ApiResponses({
            @ApiResponse(
                    responseCode = "201",
                    description = "List created successfully",
                    content = @Content(mediaType = "application/json", schema = @Schema(implementation = CustomListResponse.class))
            ),
            @ApiResponse(responseCode = "400", description = "Invalid request data or filters"),
            @ApiResponse(responseCode = "401", description = "User not authenticated")
    })
    public ResponseEntity<CustomListResponse> createList(
            @Valid @RequestBody CustomListRequest request,
            Authentication authentication) {

        User user = authenticationUtils.getUser(authentication);
        CustomListResponse list = customListService.createList(request, user);
        return ResponseEntity.status(HttpStatus.CREATED).body(list);
    }

    @GetMapping
    @Operation(
            summary = "Get user lists",
            description = "Retrieve all custom question lists created by the authenticated user"
    )
    @ApiResponses({
            @ApiResponse(
                    responseCode = "200",
                    description = "Lists retrieved successfully",
                    content = @Content(mediaType = "application/json", schema = @Schema(implementation = CustomListResponse.class))
            ),
            @ApiResponse(responseCode = "401", description = "User not authenticated")
    })
    public ResponseEntity<List<CustomListResponse>> getUserLists(Authentication authentication) {
        User user = authenticationUtils.getUser(authentication);
        List<CustomListResponse> lists = customListService.getUserLists(user);
        return ResponseEntity.ok(lists);
    }

    @GetMapping("/{id}")
    @Operation(
            summary = "Get list by ID",
            description = "Retrieve a specific custom list with all its questions"
    )
    @ApiResponses({
            @ApiResponse(
                    responseCode = "200",
                    description = "List found",
                    content = @Content(mediaType = "application/json", schema = @Schema(implementation = CustomListResponse.class))
            ),
            @ApiResponse(responseCode = "401", description = "User not authenticated"),
            @ApiResponse(responseCode = "403", description = "User doesn't own this list"),
            @ApiResponse(responseCode = "404", description = "List not found")
    })
    public ResponseEntity<CustomListResponse> getListById(
            @Parameter(description = "List ID", example = "1")
            @PathVariable Long id,
            Authentication authentication) {

        User user = authenticationUtils.getUser(authentication);
        CustomListResponse list = customListService.getListById(id, user);
        return ResponseEntity.ok(list);
    }

    @PutMapping("/{id}")
    @Operation(summary = "Update custom list", description = "Update an existing custom list")
    public ResponseEntity<CustomListResponse> updateList(
            @PathVariable Long id,
            @Valid @RequestBody CustomListRequest request,
            Authentication authentication) {

        User user = authenticationUtils.getUser(authentication);
        CustomListResponse list = customListService.updateList(id, request, user);
        return ResponseEntity.ok(list);
    }

    @DeleteMapping("/{id}")
    @Operation(summary = "Delete custom list", description = "Delete a custom list")
    public ResponseEntity<Void> deleteList(
            @PathVariable Long id,
            Authentication authentication) {

        User user = authenticationUtils.getUser(authentication);
        customListService.deleteList(id, user);
        return ResponseEntity.noContent().build();
    }
}