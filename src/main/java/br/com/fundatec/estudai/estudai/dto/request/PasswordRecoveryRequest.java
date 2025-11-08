package br.com.fundatec.estudai.estudai.dto.request;

import jakarta.validation.constraints.NotBlank;
import lombok.Data;

@Data
public class PasswordRecoveryRequest {

    @NotBlank(message = "Code cannot be blank")
    private String code;

    @NotBlank(message = "New password cannot be blank")
    private String newPassword;
}
