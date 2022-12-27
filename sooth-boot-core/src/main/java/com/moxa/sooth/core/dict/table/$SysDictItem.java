package com.moxa.sooth.core.dict.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;
import java.util.Date;

/**
 * 【请填写功能名称】  sys_dict_item
 *
 * @author moxa
 * @date 2022-11-13
 */
@Data
@Table("sys_dict_item")
public class $SysDictItem {
    /**
     *
     */
    @Id
    @Column(value = "id", jdbcType = Types.VARCHAR)
    private String id;
    /**
     *
     */
    @Column(value = "update_by", jdbcType = Types.VARCHAR)
    private String updateBy;
    /**
     * 描述
     */
    @Column(value = "description", jdbcType = Types.VARCHAR)
    private String description;
    /**
     *
     */
    @Column(value = "update_time", jdbcType = Types.TIMESTAMP)
    private Date updateTime;
    /**
     * 排序
     */
    @Column(value = "sort_order", jdbcType = Types.INTEGER)
    private Integer sortOrder;
    /**
     * 字典id
     */
    @Column(value = "dict_id", jdbcType = Types.VARCHAR)
    private String dictId;
    /**
     * 状态（1启用 0不启用）
     */
    @Column(value = "status", jdbcType = Types.INTEGER)
    private Integer status;
    /**
     *
     */
    @Column(value = "create_by", jdbcType = Types.VARCHAR)
    private String createBy;
    /**
     * 字典项文本
     */
    @Column(value = "item_text", jdbcType = Types.VARCHAR)
    private String itemText;
    /**
     *
     */
    @Column(value = "create_time", jdbcType = Types.TIMESTAMP)
    private Date createTime;
    /**
     * 字典项值
     */
    @Column(value = "item_value", jdbcType = Types.VARCHAR)
    private String itemValue;
}
