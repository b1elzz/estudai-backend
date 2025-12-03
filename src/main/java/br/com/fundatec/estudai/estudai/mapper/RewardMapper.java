package br.com.fundatec.estudai.estudai.mapper;

import br.com.fundatec.estudai.estudai.dto.request.RewardRequest;
import br.com.fundatec.estudai.estudai.dto.response.RewardResponse;
import br.com.fundatec.estudai.estudai.entity.Reward;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;

@Mapper(componentModel = "spring")
public interface RewardMapper {

    @Mapping(source = "category", target = "category")
    RewardResponse toResponseDTO(Reward reward);

    @Mapping(target = "id", ignore = true)
    @Mapping(target = "createdAt", ignore = true)
    @Mapping(target = "updatedAt", ignore = true)
    Reward toEntity(RewardRequest request);

    @Mapping(target = "id", ignore = true)
    @Mapping(target = "createdAt", ignore = true)
    @Mapping(target = "updatedAt", ignore = true)
    void updateEntityFromDTO(RewardRequest request, @MappingTarget Reward reward);

    default String map(Reward.Category category) {
        return category != null ? category.name() : null;
    }
}

