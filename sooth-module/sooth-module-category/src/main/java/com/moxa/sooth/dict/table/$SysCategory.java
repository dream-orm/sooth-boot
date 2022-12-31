package com.moxa.sooth.dict.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;
import java.util.Date;

/**
 * 【请填写功能名称】  sys_category
 *
 * @author moxa
 * @date 2022-11-13
 */
@Data
@Table("sys_category")
public class $SysCategory {
    /**
     * 是否有子节点
     */
    @Column(value = "has_child", jdbcType = Types.VARCHAR)
    private String hasChild;
    /**
     * 创建人
     */
    @Column(value = "create_by", jdbcType = Types.VARCHAR)
    private String createBy;
    /**
     *
     */
    @Id
    @Column(value = "id", jdbcType = Types.VARCHAR)
    private String id;
    /**
     * 创建日期
     */
    @Column(value = "create_time", jdbcType = Types.TIMESTAMP)
    private Date createTime;
    /**
     * 父级节点
     */
    @Column(value = "pid", jdbcType = Types.VARCHAR)
    private String pid;
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
    /**
     * 类型名称
     */
    @Column(value = "name", jdbcType = Types.VARCHAR)
    private String name;
    /**
     * 所属部门
     */
    @Column(value = "sys_org_code", jdbcType = Types.VARCHAR)
    private String sysOrgCode;
    /**
     * 类型编码
     */
    @Column(value = "code", jdbcType = Types.VARCHAR)
    private String code;
}
