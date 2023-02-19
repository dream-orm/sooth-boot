package com.moxa.sooth.module.code.gen.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.module.base.core.entity.BaseEntity;
import com.moxa.sooth.module.code.gen.table.$GenTable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;


@Data
@View($GenTable.class)
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)

public class GenTable extends BaseEntity {
    private Long id;
    /**
     * 表名
     */
    private String tableName;
    /**
     * 实体类名称
     */
    private String className;
    /**
     * 功能名
     */
    private String tableComment;
}
