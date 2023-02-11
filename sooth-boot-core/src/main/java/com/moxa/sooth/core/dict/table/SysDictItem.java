package com.moxa.sooth.core.dict.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;


@Data
@Table("sys_dict_item")
public class SysDictItem {
    /**
     *
     */
    @Id
    @Column(value = "id", jdbcType = Types.BIGINT)
    private Long id;
    /**
     * 颜色标签
     */
    @Column(value = "tag", jdbcType = Types.VARCHAR)
    private String tag;
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
    @Column(value = "name", jdbcType = Types.VARCHAR)
    private String name;
    /**
     * 字典项值
     */
    @Column(value = "value", jdbcType = Types.VARCHAR)
    private String value;
}
