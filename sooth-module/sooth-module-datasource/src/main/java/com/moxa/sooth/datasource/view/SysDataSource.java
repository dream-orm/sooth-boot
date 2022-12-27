package com.moxa.sooth.datasource.view;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.moxa.dream.system.annotation.Extract;
import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.core.base.entity.BaseDict;
import com.moxa.sooth.core.base.common.aspect.annotation.Dict;
import com.moxa.sooth.core.base.dream.DictExtractor;
import com.moxa.sooth.datasource.table.$SysDataSource;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * @Description: 多数据源管理
 * @Author: jeecg-boot
 * @Date: 2019-12-25
 * @Version: V1.0
 */
@Data
@View($SysDataSource.class)
@TableName("sys_data_source")
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)

public class SysDataSource extends BaseDict {

    /**
     * id
     */
    @TableId(type = IdType.ASSIGN_ID)

    private java.lang.String id;
    /**
     * 数据源编码
     */


    private java.lang.String code;
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
     * 创建人
     */

    private java.lang.String createBy;
    /**
     * 创建日期
     */
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")

    private java.util.Date createTime;
    /**
     * 更新人
     */

    private java.lang.String updateBy;
    /**
     * 更新日期
     */
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")

    private java.util.Date updateTime;
    /**
     * 所属部门
     */


    private java.lang.String sysOrgCode;
}
