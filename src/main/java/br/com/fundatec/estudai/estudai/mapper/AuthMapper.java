package br.com.fundatec.estudai.estudai.mapper;

import br.com.fundatec.estudai.estudai.dto.response.LoginResponse;
import br.com.fundatec.estudai.estudai.entity.User;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping; // Keep only one import for Mapping

@Mapper(componentModel = "spring")
public interface AuthMapper {

    @Mapping(source = "user.name", target = "name")
    @Mapping(source = "user.streakDays", target = "streakDays")
    @Mapping(source = "user.coins", target = "coins")
    @Mapping(source = "token", target = "token")
    LoginResponse toLoginResponse(User user, String token);
}