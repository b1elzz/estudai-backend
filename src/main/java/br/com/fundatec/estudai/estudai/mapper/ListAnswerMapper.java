package br.com.fundatec.estudai.estudai.mapper;

import br.com.fundatec.estudai.estudai.dto.request.ListAnswerRequest;
import br.com.fundatec.estudai.estudai.dto.response.ListAnswerResponse;
import br.com.fundatec.estudai.estudai.entity.ListAnswer;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;

@Mapper(componentModel = "spring")
public interface ListAnswerMapper {

    @Mapping(target = "id", ignore = true)
    @Mapping(target = "user", ignore = true)
    @Mapping(target = "customList", ignore = true)
    @Mapping(target = "question", ignore = true)
    @Mapping(target = "isCorrect", ignore = true)
    @Mapping(target = "answeredAt", ignore = true)
    ListAnswer toEntity(ListAnswerRequest request);

    @Mapping(source = "customList.id", target = "customListId")
    @Mapping(source = "question.id", target = "questionId")
    @Mapping(source = "question.correctAlternative", target = "correctAnswer")
    ListAnswerResponse toResponseDTO(ListAnswer listAnswer);

    @Mapping(target = "id", ignore = true)
    @Mapping(target = "user", ignore = true)
    @Mapping(target = "customList", ignore = true)
    @Mapping(target = "question", ignore = true)
    @Mapping(target = "isCorrect", ignore = true)
    @Mapping(target = "answeredAt", ignore = true)
    void updateFromRequestDTO(ListAnswerRequest request, @MappingTarget ListAnswer listAnswer);
}
