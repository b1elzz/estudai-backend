package br.com.fundatec.estudai.estudai.dto.response;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Schema(description = "Current user information")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserInfoResponse {
    
    @Schema(description = "User ID", example = "1")
    private Long id;
    
    @Schema(description = "User name", example = "John Doe")
    private String name;
    
    @Schema(description = "User email", example = "john@example.com")
    private String email;
    
    @Schema(description = "Consecutive access days", example = "11")
    private Integer streakDays;
    
    @Schema(description = "Accumulated virtual coins", example = "1000")
    private Integer coins;
}

