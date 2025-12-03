package br.com.fundatec.estudai.estudai.mapper;

import br.com.fundatec.estudai.estudai.dto.response.RewardRedemptionResponse;
import br.com.fundatec.estudai.estudai.entity.RewardRedemption;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring", uses = RewardMapper.class)
public interface RewardRedemptionMapper {

    @Mapping(source = "user.id", target = "userId")
    @Mapping(source = "status", target = "status")
    RewardRedemptionResponse toResponseDTO(RewardRedemption redemption);

    default String map(RewardRedemption.Status status) {
        return status != null ? status.name() : null;
    }
}

