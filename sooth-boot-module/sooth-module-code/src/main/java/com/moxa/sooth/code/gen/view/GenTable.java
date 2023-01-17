package com.moxa.sooth.code.gen.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.code.gen.table.$GenTable;
import com.moxa.sooth.core.base.entity.BaseEntity;
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
    /**
     * 包名
     */
    private String packageName;
    /**
     * 后端生成路径
     */
    private String backendPath;
    /**
     * 前端生成路径
     */
    private String frontendPath;
    /**
     * 模块名
     */
    private String moduleName;
    /**
     * 功能名
     */
    private String functionName;
    /**
     * 表单布局
     */
    private Integer formLayout;
    /**
     * 数据源ID
     */
    private Long datasourceId;
    /**
     * 基类ID
     */
    private Long baseclassId;

}
