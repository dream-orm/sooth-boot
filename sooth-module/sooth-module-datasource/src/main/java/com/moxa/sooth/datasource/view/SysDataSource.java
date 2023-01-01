package com.moxa.sooth.datasource.view;

import com.moxa.dream.system.annotation.Extract;
import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.core.base.common.aspect.annotation.Dict;
import com.moxa.sooth.core.base.dream.DictExtractor;
import com.moxa.sooth.core.base.entity.BaseEntity;
import com.moxa.sooth.datasource.table.$SysDataSource;
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
    private java.lang.String id;
    /**
     * 数据源名称
     */


    private java.lang.String name;
    /**
     * 描述
     */


    private java.lang.String remark;
    /**
     * 数据库类型
     */
    @Dict(dicCode = "database_type")


    @Extract(DictExtractor.class)
    private java.lang.String dbType;
    /**
     * 驱动类
     */


    private java.lang.String dbDriver;
    /**
     * 数据源地址
     */


    private java.lang.String dbUrl;
    /**
     * 数据库名称
     */


    private java.lang.String dbName;
    /**
     * 用户名
     */


    private java.lang.String dbUsername;
    /**
     * 密码
     */


    private java.lang.String dbPassword;
    /**
     * 所属部门
     */


    private java.lang.String sysOrgCode;
}
