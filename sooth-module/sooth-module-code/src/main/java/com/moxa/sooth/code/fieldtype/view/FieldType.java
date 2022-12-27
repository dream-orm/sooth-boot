package com.moxa.sooth.code.fieldtype.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.code.fieldtype.table.$FieldType;
import com.moxa.sooth.core.base.entity.BaseDict;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * @Description: 字段映射
 * @Author: jeecg-boot
 * @Date: 2019-12-25
 * @Version: V1.0
 */
@Data
@View($FieldType.class)
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)

public class FieldType extends BaseDict {
    /**
     * id
     */

    private Integer id;
    /**
     * 字段类型
     */


    private String columnType;
    /**
     * 属性类型
     */


    private String attrType;
}
