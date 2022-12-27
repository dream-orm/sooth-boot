package com.moxa.sooth.core.base.mapper;

import com.baomidou.mybatisplus.annotation.InterceptorIgnore;
import com.moxa.sooth.core.base.common.api.dto.LogDTO;
import org.apache.ibatis.annotations.Param;


public interface BaseCommonMapper {

    /**
     * 保存日志
     *
     * @param dto
     */
    @InterceptorIgnore(illegalSql = "true", tenantLine = "true")
    void saveLog(@Param("dto") LogDTO dto);

}
