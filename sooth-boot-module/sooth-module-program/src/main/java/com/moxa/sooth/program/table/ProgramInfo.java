package com.moxa.sooth.program.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;

/**
 * @Description: 
 * @Author: huha
 * @Date: 2023-02-09 23:42:17
 */
@Data
@Table("program_info")
public class ProgramInfo {

  
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
     * 运维截止时间
     */
    @Column(value = "deadline", jdbcType = Types.TIMESTAMP)
    private java.util.Date deadline;
  
/**
     * 创建时间
     */
    @Column(value = "creat_time", jdbcType = Types.TIMESTAMP)
    private java.util.Date creatTime;
  
/**
     * 更新时间
     */
    @Column(value = "update_tim", jdbcType = Types.TIMESTAMP)
    private java.util.Date updateTim;
}