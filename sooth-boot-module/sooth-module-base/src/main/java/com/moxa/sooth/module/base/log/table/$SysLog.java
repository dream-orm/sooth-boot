package com.moxa.sooth.module.base.log.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;
import java.util.Date;

@Data
@Table("sys_log")
public class $SysLog {
    /**
     * 业务模块
     */
    @Column(value = "biz_module", jdbcType = Types.VARCHAR)
    private String bizModule;
    /**
     * 操作描述
     */
    @Column(value = "description", jdbcType = Types.VARCHAR)
    private String description;

    /**
     * 请求参数
     */
    @Column(value = "request_param", jdbcType = Types.LONGVARCHAR)
    private String requestParam;
    /**
     * 操作用户账号
     */
    @Column(value = "username", jdbcType = Types.VARCHAR)
    private String username;
    /**
     * 请求类型
     */
    @Column(value = "request_type", jdbcType = Types.VARCHAR)
    private String requestType;
    /**
     * 浏览器
     */

    @Column(value = "user_agent", jdbcType = Types.VARCHAR)
    private String userAgent;
    /**
     *
     */
    @Id
    @Column(value = "id", jdbcType = Types.BIGINT)
    private Long id;
    /**
     * 操作用户名称
     */
    @Column(value = "realname", jdbcType = Types.VARCHAR)
    private String realname;
    /**
     * 耗时
     */
    @Column(value = "cost_time", jdbcType = Types.BIGINT)
    private Long costTime;
    /**
     * 日志类型
     */
    @Column(value = "log_type", jdbcType = Types.VARCHAR)
    private String logType;
    /**
     * IP
     */
    @Column(value = "ip", jdbcType = Types.VARCHAR)
    private String ip;
    /**
     * 请求java方法
     */
    @Column(value = "method", jdbcType = Types.VARCHAR)
    private String method;
    /**
     * 创建人
     */
    @Column(value = "create_by", jdbcType = Types.VARCHAR)
    private String createBy;
    /**
     * 错误信息
     */
    @Column(value = "message", jdbcType = Types.VARCHAR)
    private String message;

    /**
     * 详尽异常
     */
    @Column(value = "stack_trace", jdbcType = Types.LONGVARCHAR)
    private String stackTrace;

    /**
     * 异常类
     */
    @Column(value = "exception_class", jdbcType = Types.VARCHAR)
    private String exceptionClass;

    /**
     * 请求路径
     */
    @Column(value = "request_url", jdbcType = Types.VARCHAR)
    private String requestUrl;
    /**
     * 成功状态
     */
    @Column(value = "status", jdbcType = Types.INTEGER)
    private Integer status;

    /**
     * 创建时间
     */
    @Column(value = "create_time", jdbcType = Types.TIMESTAMP)
    private Date createTime;


}
