package com.moxa.sooth.code.baseclass.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;
import java.util.Date;

/**
 * 【请填写功能名称】  gen_base_class
 *
 * @author moxa
 * @date 2022-11-13
 */
@Data
@Table("gen_base_class")
public class BaseClassTable {
    /**
     *
     */
    @Id
    @Column(value = "id", jdbcType = Types.BIGINT)
    private Long id;
    /**
     * 基类名称
     */
    @Column(value = "name", jdbcType = Types.VARCHAR)
    private String name;
    /**
     * 基类包名
     */
    @Column(value = "package_name", jdbcType = Types.VARCHAR)
    private String packageName;
    /**
     * 基类字段
     */
    @Column(value = "fields", jdbcType = Types.VARCHAR)
    private String fields;

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
