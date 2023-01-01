package com.moxa.sooth.code.datasource.view;

import com.moxa.dream.system.annotation.Extract;
import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.code.datasource.table.$SysDataSource;
import com.moxa.sooth.core.base.common.aspect.annotation.Dict;
import com.moxa.sooth.core.base.dream.DictExtractor;
import com.moxa.sooth.core.base.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;


@Data
@View($SysDataSource.class)
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class SysDataSource extends BaseEntity {

    /**
     * id
     */
    private String id;
    /**
     * 数据源名称
     */


    private String name;
    /**
     * 描述
     */


    private String remark;
    /**
     * 数据库类型
     */
    @Dict(dicCode = "database_type")


    @Extract(DictExtractor.class)
    private String dbType;
    /**
     * 驱动类
     */


    private String dbDriver;
    /**
     * 数据源地址
     */


    private String dbUrl;
    /**
     * 数据库名称
     */


    private String dbName;
    /**
     * 用户名
     */


    private String dbUsername;
    /**
     * 密码
     */


    private String dbPassword;
    /**
     * 所属部门
     */


    private String sysOrgCode;
}
