package br.com.fundatec.estudai.estudai.mapper;

import br.com.fundatec.estudai.estudai.dto.response.AlternativeResponse;
import br.com.fundatec.estudai.estudai.entity.Alternative;
import org.mapstruct.Mapper;


@Mapper(componentModel = "spring")
public interface AlternativeMapper {
    AlternativeResponse toResponseDTO(Alternative alternative);
}