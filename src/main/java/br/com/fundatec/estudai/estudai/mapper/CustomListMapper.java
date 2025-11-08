package br.com.fundatec.estudai.estudai.mapper;

import br.com.fundatec.estudai.estudai.dto.request.CustomListRequest;
import br.com.fundatec.estudai.estudai.dto.response.CustomListResponse;
import br.com.fundatec.estudai.estudai.entity.CustomList;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;

@Mapper(componentModel = "spring", uses = QuestionMapper.class)
public interface CustomListMapper {

    CustomList toEntity(CustomListRequest request);
    CustomList toEntity(CustomListResponse response);

    @Mapping(source = "questions", target = "questions")
    CustomListResponse toResponseDTO(CustomList customList);

    @Mapping(target = "id", ignore = true)
    @Mapping(target = "user", ignore = true)
    @Mapping(target = "questions", ignore = true)
    @Mapping(target = "createdAt", ignore = true)
    @Mapping(target = "updatedAt", ignore = true)
    void updateEntityFromDTO(CustomListRequest request, @MappingTarget CustomList customList);
}