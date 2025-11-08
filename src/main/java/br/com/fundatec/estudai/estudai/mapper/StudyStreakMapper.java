package br.com.fundatec.estudai.estudai.mapper;

import br.com.fundatec.estudai.estudai.dto.response.StudyStreakResponse;
import br.com.fundatec.estudai.estudai.entity.StudyStreak;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface StudyStreakMapper {

    @Mapping(source = "consecutiveDays", target = "consecutiveDays")
    @Mapping(source = "lastStudyDay", target = "lastStudyDay")
    @Mapping(source = "longestStreak", target = "longestStreak")
    StudyStreakResponse toResponseDTO(StudyStreak studyStreak);
}