package br.com.fundatec.estudai.estudai.mapper;

import br.com.fundatec.estudai.estudai.dto.request.StudyGoalRequest;
import br.com.fundatec.estudai.estudai.dto.response.StudyGoalResponse;
import br.com.fundatec.estudai.estudai.entity.StudyGoal;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
@Mapper(componentModel = "spring")
public interface StudyGoalMapper {

    @Mapping(source = "status", target = "status")
    @Mapping(source = "progressPercentage", target = "progressPercentage")
    StudyGoalResponse toResponseDTO(StudyGoal studyGoal);

    StudyGoal toEntity(StudyGoalRequest request);

    @Mapping(target = "id", ignore = true)
    @Mapping(target = "user", ignore = true)
    @Mapping(target = "status", ignore = true)
    @Mapping(target = "progressPercentage", ignore = true)
    @Mapping(target = "createdAt", ignore = true)
    @Mapping(target = "updatedAt", ignore = true)
    void updateEntityFromDTO(StudyGoalRequest request, @MappingTarget StudyGoal studyGoal);
}