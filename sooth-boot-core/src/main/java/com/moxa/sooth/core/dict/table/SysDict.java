package com.moxa.sooth.core.dict.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;
import java.util.Date;

/**
 * 【请填写功能名称】  sys_dict
 *
 * @author moxa
 * @date 2022-11-13
 */
@Data
@Table("sys_dict")
public class SysDict {
    /**
     *
     */
    @Id
    @Column(value = "id", jdbcType = Types.BIGINT)
    private Long id;
    /**
     * 字典类型0为string,1为number
     */
    @Column(value = "type", jdbcType = Types.INTEGER)
    private Integer type;
    /**
     * 删除状态
     */
    @Column(value = "del_flag", jdbcType = Types.INTEGER)
    private Integer delFlag;
    /**
     * 创建人
     */
    @Column(value = "create_by", jdbcType = Types.VARCHAR)
    private String createBy;
    /**
     * 字典名称
     */
    @Column(value = "name", jdbcType = Types.VARCHAR)
    private String name;
    /**
     * 创建时间
     */
    @Column(value = "create_time", jdbcType = Types.TIMESTAMP)
    private Date createTime;
    /**
     * 更新人
     */
    @Column(value = "update_by", jdbcType = Types.VARCHAR)
    private String updateBy;
    /**
     * 字典编码
     */
    @Column(value = "code", jdbcType = Types.VARCHAR)
    private String code;
    /**
     * 更新时间
     */
    @Column(value = "update_time", jdbcType = Types.TIMESTAMP)
    private Date updateTime;
    /**
     * 描述
     */
    @Column(value = "description", jdbcType = Types.VARCHAR)
    private String description;
}
