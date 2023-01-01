package com.moxa.sooth.core.base.service;

import com.moxa.sooth.core.base.common.api.dto.LogDTO;

public interface BaseCommonService {

    /**
     * 保存日志
     *
     * @param logDTO
     */
    void addLog(LogDTO logDTO);


}
