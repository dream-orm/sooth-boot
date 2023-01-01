package com.moxa.sooth.core.dict.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;

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
    @Column(value = "id", jdbcType = Types.BIGINT)
    private Long id;
    /**
     * 描述
     */
    @Column(value = "description", jdbcType = Types.VARCHAR)
    private String description;
    /**
     * 排序
     */
    @Column(value = "order_no", jdbcType = Types.DOUBLE)
    private Double orderNo;
    /**
     * 字典id
     */
    @Column(value = "dict_id", jdbcType = Types.BIGINT)
    private Long dictId;
    /**
     * 字典项文本
     */
    @Column(value = "item_text", jdbcType = Types.VARCHAR)
    private String itemText;
    /**
     * 字典项值
     */
    @Column(value = "item_value", jdbcType = Types.VARCHAR)
    private String itemValue;
}
