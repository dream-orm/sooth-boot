package com.moxa.sooth.role.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;
import java.util.Date;

/**
 * 角色  sys_role
 *
 * @author moxa
 * @date 2022-11-13
 */
@Data
@Table("sys_role")
public class $SysRole {
    /**
     * 创建人
     */
    @Column(value = "create_by", jdbcType = Types.VARCHAR)
    private String createBy;
    /**
     * 主键id
     */
    @Id
    @Column(value = "id", jdbcType = Types.VARCHAR)
    private String id;
    /**
     * 创建时间
     */
    @Column(value = "create_time", jdbcType = Types.TIMESTAMP)
    private Date createTime;
    /**
     * 角色名称
     */
    @Column(value = "role_name", jdbcType = Types.VARCHAR)
    private String roleName;
    /**
     * 更新人
     */
    @Column(value = "update_by", jdbcType = Types.VARCHAR)
    private String updateBy;
    /**
     * 更新时间
     */
    @Column(value = "update_time", jdbcType = Types.TIMESTAMP)
    private Date updateTime;
    /**
     * 角色编码
     */
    @Column(value = "role_code", jdbcType = Types.VARCHAR)
    private String roleCode;
    /**
     * 描述
     */
    @Column(value = "description", jdbcType = Types.VARCHAR)
    private String description;
}
