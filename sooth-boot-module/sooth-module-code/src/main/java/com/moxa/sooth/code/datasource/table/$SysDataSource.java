package com.moxa.sooth.code.datasource.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;
import java.util.Date;

@Data
@Table("sys_data_source")
public class $SysDataSource {
    /**
     *
     */
    @Id
    @Column(value = "id", jdbcType = Types.BIGINT)
    private Long id;
    /**
     * 密码
     */
    @Column(value = "password", jdbcType = Types.VARCHAR)
    private String password;
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
     * 数据源地址
     */
    @Column(value = "url", jdbcType = Types.VARCHAR)
    private String url;
    /**
     * 数据库名称
     */
    @Column(value = "name", jdbcType = Types.VARCHAR)
    private String name;
    /**
     * 更新人
     */
    @Column(value = "update_by", jdbcType = Types.VARCHAR)
    private String updateBy;
    /**
     * 描述
     */
    @Column(value = "description", jdbcType = Types.VARCHAR)
    private String description;
    /**
     * 用户名
     */
    @Column(value = "username", jdbcType = Types.VARCHAR)
    private String username;
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
