package com.moxa.sooth.log.view;

import com.moxa.dream.system.annotation.Extract;
import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.core.base.common.aspect.annotation.Dict;
import com.moxa.sooth.core.base.dream.DictExtractor;
import com.moxa.sooth.core.base.entity.BaseEntity;
import com.moxa.sooth.log.table.$SysLog;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * 系统日志表
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@View($SysLog.class)
public class SysLog extends BaseEntity {
    /**
     * id
     */
    private String id;

    /**
     * 耗时
     */
    private Long costTime;

    /**
     * IP
     */
    private String ip;

    /**
     * 请求参数
     */
    private String requestParam;

    /**
     * 请求类型
     */
    private String requestType;

    /**
     * 请求路径
     */
    private String requestUrl;
    /**
     * 请求方法
     */
    private String method;

    /**
     * 操作人用户名称
     */
    private String username;
    /**
     * 操作人用户账户
     */
    private String userid;
    /**
     * 操作详细日志
     */
    private String logContent;

    /**
     * 日志类型（1登录日志，2操作日志）
     */
    @Dict(dicCode = "log_type")
    @Extract(DictExtractor.class)
    private Integer logType;

}
