package br.com.fundatec.estudai.estudai.mapper;

import br.com.fundatec.estudai.estudai.dto.response.UserResponse;
import br.com.fundatec.estudai.estudai.entity.User;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface UserMapper {

    @Mapping(source = "createdAt", target = "createdAt", dateFormat = "yyyy-MM-dd'T'HH:mm:ss")
    UserResponse toResponseDTO(User user);
}