package com.moxa.sooth.quartz.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;

/**
 * @Description: 定时任务在线管理
 * @Author: jeecg-boot
 * @Date: 2019-01-02
 * @Version: V1.0
 */
@Data
@Table("sys_quartz_job")
public class $QuartzJob {
    /**
     * id
     */
    @Id
    @Column(value = "id", jdbcType = Types.BIGINT)
    private Long id;
    /**
     * 创建人
     */
    @Column(value = "create_by", jdbcType = Types.VARCHAR)
    private String createBy;
    /**
     * 创建时间
     */
    @Column(value = "create_time", jdbcType = Types.TIMESTAMP)
    private java.util.Date createTime;
    /**
     * 删除状态
     */
    @Column(value = "del_flag", jdbcType = Types.INTEGER)
    private Integer delFlag;
    /**
     * 修改人
     */
    @Column(value = "update_by", jdbcType = Types.VARCHAR)
    private String updateBy;
    /**
     * 修改时间
     */
    @Column(value = "update_time", jdbcType = Types.TIMESTAMP)
    private java.util.Date updateTime;
    /**
     * 任务类名
     */
    @Column(value = "job_class_name", jdbcType = Types.VARCHAR)
    private String jobClassName;
    /**
     * cron表达式
     */
    @Column(value = "cron_expression", jdbcType = Types.VARCHAR)
    private String cronExpression;
    /**
     * 参数
     */
    @Column(value = "parameter", jdbcType = Types.VARCHAR)
    private String parameter;
    /**
     * 描述
     */
    @Column(value = "description", jdbcType = Types.VARCHAR)
    private String description;
    /**
     * 状态 0正常 -1停止
     */
    @Column(value = "status", jdbcType = Types.INTEGER)
    private Integer status;
}
