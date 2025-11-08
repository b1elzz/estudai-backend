package br.com.fundatec.estudai.estudai.mapper;

import br.com.fundatec.estudai.estudai.dto.response.QuestionResponse;
import br.com.fundatec.estudai.estudai.entity.Question;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring", uses = AlternativeMapper.class)
public interface QuestionMapper {
    QuestionResponse toResponseDTO(Question question);
}