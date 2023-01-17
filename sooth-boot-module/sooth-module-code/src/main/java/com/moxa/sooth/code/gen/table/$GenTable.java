package com.moxa.sooth.code.gen.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;
import java.util.Date;

@Data
@Table("gen_table")
public class $GenTable {
    @Id
    @Column(value = "id", jdbcType = Types.BIGINT)
    private Long id;
    /**
     * 表名
     */
    @Column(value = "table_name", jdbcType = Types.VARCHAR)
    private String tableName;
    /**
     * 实体类名称
     */
    @Column(value = "class_name", jdbcType = Types.VARCHAR)
    private String className;
    /**
     * 功能名
     */
    @Column(value = "table_comment", jdbcType = Types.VARCHAR)
    private String tableComment;
    /**
     * 包名
     */
    @Column(value = "package_name", jdbcType = Types.VARCHAR)
    private String packageName;

    /**
     * 生成方式  1：zip压缩包   2：自定义目录
     */
    @Column(value = "generator_type", jdbcType = Types.INTEGER)
    private Integer generatorType;
    /**
     * 后端生成路径
     */
    @Column(value = "backend_path", jdbcType = Types.VARCHAR)
    private String backendPath;
    /**
     * 前端生成路径
     */
    @Column(value = "frontend_path", jdbcType = Types.VARCHAR)
    private String frontendPath;
    /**
     * 模块名
     */
    @Column(value = "module_name", jdbcType = Types.VARCHAR)
    private String moduleName;
    /**
     * 功能名
     */
    @Column(value = "function_name", jdbcType = Types.VARCHAR)
    private String functionName;
    /**
     * 表单布局
     */
    @Column(value = "form_layout", jdbcType = Types.INTEGER)
    private Integer formLayout;
    /**
     * 数据源ID
     */
    @Column(value = "datasource_id", jdbcType = Types.BIGINT)
    private Long datasourceId;
    /**
     * 基类ID
     */
    @Column(value = "baseclass_id", jdbcType = Types.BIGINT)
    private Long baseclassId;
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
