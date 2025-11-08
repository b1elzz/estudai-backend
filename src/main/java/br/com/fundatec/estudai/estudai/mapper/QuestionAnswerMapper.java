package br.com.fundatec.estudai.estudai.mapper;

import br.com.fundatec.estudai.estudai.dto.request.QuestionAnswerRequest;
import br.com.fundatec.estudai.estudai.dto.response.QuestionAnswerResponse;
import br.com.fundatec.estudai.estudai.entity.QuestionAnswer;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;

@Mapper(componentModel = "spring", uses = QuestionMapper.class)
public interface QuestionAnswerMapper {

    QuestionAnswer toEntity(QuestionAnswerRequest request);
    @Mapping(source = "question.id", target = "questionId")
    @Mapping(source = "question.correctAlternative", target = "correctAnswer")
    QuestionAnswerResponse toResponseDTO(QuestionAnswer questionAnswer);

    @Mapping(target = "id", ignore = true)
    @Mapping(target = "user", ignore = true)
    @Mapping(target = "question", ignore = true)
    @Mapping(target = "isCorrect", ignore = true)
    @Mapping(target = "answeredAt", ignore = true)
    void updateFromRequestDTO(QuestionAnswerRequest request, @MappingTarget QuestionAnswer questionAnswer);
}