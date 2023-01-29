package com.moxa.sooth.code.template.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;
import java.util.Date;


@Data
@Table("gen_template")
public class GenTemplateTable {
    @Id
    @Column(value = "id", jdbcType = Types.BIGINT)
    private Long id;
    /**
     * 表ID
     */
    @Column(value = "group_id", jdbcType = Types.BIGINT)
    private Long groupId;

    @Column(value = "name", jdbcType = Types.VARCHAR)
    private String name;

    @Column(value = "content", jdbcType = Types.VARCHAR)
    private String content;
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
