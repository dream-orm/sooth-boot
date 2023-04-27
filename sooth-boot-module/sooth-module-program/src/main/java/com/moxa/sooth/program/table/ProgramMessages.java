package com.moxa.sooth.program.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;

/**
 * @Description:
 * @Author: huha
 * @Date: 2023-02-09 23:43:10
 */
@Data
@Table("program_messages")
public class ProgramMessages {


    /**
     * 机器名称
     */
    @Column(value = "machine_name", jdbcType = Types.VARCHAR)
    private String machineName;

    /**
     * 程序名称
     */
    @Column(value = "program_name", jdbcType = Types.VARCHAR)
    private String programName;

    /**
     * 消息内容
     */
    @Column(value = "message", jdbcType = Types.VARCHAR)
    private String message;

    /**
     * 消息类别
     */
    @Column(value = "status", jdbcType = Types.VARCHAR)
    private String status;

    /**
     * 创建时间
     */
    @Column(value = "create_time", jdbcType = Types.TIMESTAMP)
    private java.util.Date createTime;

    /**
     * 更新时间
     */
    @Column(value = "update_time", jdbcType = Types.TIMESTAMP)
    private java.util.Date updateTime;
}