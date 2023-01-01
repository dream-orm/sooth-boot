package com.moxa.sooth.core.base.mapper;

import com.moxa.dream.system.annotation.Param;
import com.moxa.sooth.core.base.common.api.dto.LogDTO;

public interface BaseCommonMapper {

    /**
     * 保存日志
     *
     * @param dto
     */
    void saveLog(@Param("dto") LogDTO dto);

}
