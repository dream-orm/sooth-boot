package com.moxa.sooth.core.dict.view;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.moxa.dream.system.annotation.Extract;
import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.core.base.common.aspect.annotation.Dict;
import com.moxa.sooth.core.base.dream.DictExtractor;
import com.moxa.sooth.core.base.entity.BaseDict;
import com.moxa.sooth.core.base.entity.BaseEntity;
import com.moxa.sooth.core.dict.table.$SysDictItem;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;


@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@View($SysDictItem.class)
public class SysDictItem extends BaseDict {
    /**
     * id
     */
    private String id;

    /**
     * 字典id
     */
    private String dictId;

    /**
     * 字典项文本
     */

    private String itemText;

    /**
     * 字典项值
     */

    private String itemValue;

    /**
     * 描述
     */

    private String description;

    /**
     * 排序
     */

    private Integer sortOrder;


    /**
     * 状态（1启用 0不启用）
     */
    @Dict(dicCode = "dict_item_status")
    @Extract(DictExtractor.class)
    private Integer status;
}
