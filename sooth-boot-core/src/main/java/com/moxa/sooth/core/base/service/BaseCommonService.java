package com.moxa.sooth.core.base.service;

import com.moxa.sooth.core.base.common.api.dto.LogDTO;
import com.moxa.sooth.core.base.common.system.vo.LoginUser;

public interface BaseCommonService {

    /**
     * 保存日志
     *
     * @param logDTO
     */
    void addLog(LogDTO logDTO);

    /**
     * 保存日志
     *
     * @param logContent
     * @param logType
     * @param operateType
     * @param user
     */
    void addLog(String logContent, Integer logType, Integer operateType, LoginUser user);

    /**
     * 保存日志
     *
     * @param logContent
     * @param logType
     * @param operateType
     */
    void addLog(String logContent, Integer logType, Integer operateType);

}
