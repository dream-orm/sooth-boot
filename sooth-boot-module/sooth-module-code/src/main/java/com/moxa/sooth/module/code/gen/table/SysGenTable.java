package com.moxa.sooth.module.code.gen.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;
import java.util.Date;

@Data
@Table("sys_gen_table")
public class SysGenTable {
    @Id
    @Column(value = "id", jdbcType = Types.BIGINT)
    private Long id;
    /**
     * 表名
     */
    @Column(value = "table_name", jdbcType = Types.VARCHAR)
    private String tableName;
    /**
     * 实体类名称
     */
    @Column(value = "class_name", jdbcType = Types.VARCHAR)
    private String className;
    /**
     * 功能名
     */
    @Column(value = "table_comment", jdbcType = Types.VARCHAR)
    private String tableComment;
    /**
     * 创建人
     */
    @Column(value = "create_by", jdbcType = Types.VARCHAR)
    private String createBy;
    /**
     * 创建日期
     */
    @Column(value = "create_time", jdbcType = Types.TIMESTAMP)
    private Date createTime;
    /**
     * 更新人
     */
    @Column(value = "update_by", jdbcType = Types.VARCHAR)
    private String updateBy;
    /**
     * 更新日期
     */
    @Column(value = "update_time", jdbcType = Types.TIMESTAMP)
    private Date updateTime;
}
