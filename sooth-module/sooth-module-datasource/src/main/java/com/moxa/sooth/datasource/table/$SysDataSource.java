package com.moxa.sooth.datasource.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;
import java.util.Date;

/**
 * 【请填写功能名称】  sys_data_source
 *
 * @author moxa
 * @date 2022-11-13
 */
@Data
@Table("sys_data_source")
public class $SysDataSource {
    /**
     *
     */
    @Id
    @Column(value = "id", jdbcType = Types.VARCHAR)
    private String id;
    /**
     * 密码
     */
    @Column(value = "db_password", jdbcType = Types.VARCHAR)
    private String dbPassword;
    /**
     * 数据库类型
     */
    @Column(value = "db_type", jdbcType = Types.VARCHAR)
    private String dbType;
    /**
     * 创建人
     */
    @Column(value = "create_by", jdbcType = Types.VARCHAR)
    private String createBy;
    /**
     * 驱动类
     */
    @Column(value = "db_driver", jdbcType = Types.VARCHAR)
    private String dbDriver;
    /**
     * 创建日期
     */
    @Column(value = "create_time", jdbcType = Types.TIMESTAMP)
    private Date createTime;
    /**
     * 数据源编码
     */
    @Column(value = "code", jdbcType = Types.VARCHAR)
    private String code;
    /**
     * 数据源地址
     */
    @Column(value = "db_url", jdbcType = Types.VARCHAR)
    private String dbUrl;
    /**
     * 数据库名称
     */
    @Column(value = "db_name", jdbcType = Types.VARCHAR)
    private String dbName;
    /**
     * 更新人
     */
    @Column(value = "update_by", jdbcType = Types.VARCHAR)
    private String updateBy;
    /**
     * 数据源名称
     */
    @Column(value = "name", jdbcType = Types.VARCHAR)
    private String name;
    /**
     * 所属部门
     */
    @Column(value = "sys_org_code", jdbcType = Types.VARCHAR)
    private String sysOrgCode;
    /**
     * 用户名
     */
    @Column(value = "db_username", jdbcType = Types.VARCHAR)
    private String dbUsername;
    /**
     * 更新日期
     */
    @Column(value = "update_time", jdbcType = Types.TIMESTAMP)
    private Date updateTime;
    /**
     * 备注
     */
    @Column(value = "remark", jdbcType = Types.VARCHAR)
    private String remark;
}
