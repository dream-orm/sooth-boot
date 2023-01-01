package com.moxa.sooth.log.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;
import java.util.Date;

/**
 * 系统日志  sys_log
 *
 * @author moxa
 * @date 2022-11-13
 */
@Data
@Table("sys_log")
public class $SysLog {
    /**
     * 请求参数
     */
    @Column(value = "request_param", jdbcType = Types.LONGVARCHAR)
    private String requestParam;
    /**
     * 操作用户账号
     */
    @Column(value = "userid", jdbcType = Types.BIGINT)
    private Long userid;
    /**
     * 请求类型
     */
    @Column(value = "request_type", jdbcType = Types.VARCHAR)
    private String requestType;
    /**
     *
     */
    @Id
    @Column(value = "id", jdbcType = Types.BIGINT)
    private Long id;
    /**
     * 操作用户名称
     */
    @Column(value = "username", jdbcType = Types.VARCHAR)
    private String username;
    /**
     * 耗时
     */
    @Column(value = "cost_time", jdbcType = Types.BIGINT)
    private Long costTime;
    /**
     * 日志类型（1登录日志，2操作日志）
     */
    @Column(value = "log_type", jdbcType = Types.INTEGER)
    private Integer logType;
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
     * 日志内容
     */
    @Column(value = "content", jdbcType = Types.VARCHAR)
    private String content;
    /**
     * 更新人
     */
    @Column(value = "update_by", jdbcType = Types.VARCHAR)
    private String updateBy;
    /**
     * 请求路径
     */
    @Column(value = "request_url", jdbcType = Types.VARCHAR)
    private String requestUrl;
    /**
     * 创建时间
     */
    @Column(value = "create_time", jdbcType = Types.TIMESTAMP)
    private Date createTime;
    /**
     * 更新时间
     */
    @Column(value = "update_time", jdbcType = Types.TIMESTAMP)
    private Date updateTime;
}
