package com.moxa.sooth.core.user.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;
import java.util.Date;

@Data
@Table("sys_user")
public class $SysUser {
    /**
     * 电话
     */
    @Column(value = "phone", jdbcType = Types.VARCHAR)
    private String phone;
    /**
     * 多租户标识
     */
    @Column(value = "rel_tenant_ids", jdbcType = Types.VARCHAR)
    private String relTenantIds;
    /**
     * 创建时间
     */
    @Column(value = "create_time", jdbcType = Types.TIMESTAMP)
    private Date createTime;
    /**
     * md5密码盐
     */
    @Column(value = "salt", jdbcType = Types.VARCHAR)
    private String salt;
    /**
     * 更新人
     */
    @Column(value = "update_by", jdbcType = Types.VARCHAR)
    private String updateBy;
    /**
     * 主键id
     */
    @Id
    @Column(value = "id", jdbcType = Types.VARCHAR)
    private String id;
    /**
     * 头像
     */
    @Column(value = "avatar", jdbcType = Types.VARCHAR)
    private String avatar;
    /**
     * 更新时间
     */
    @Column(value = "update_time", jdbcType = Types.TIMESTAMP)
    private Date updateTime;
    /**
     * 性别(1-正常,2-冻结)
     */
    @Column(value = "status", jdbcType = Types.BIT)
    private Boolean status;
    /**
     * 登录账号
     */
    @Column(value = "username", jdbcType = Types.VARCHAR)
    private String username;
    /**
     * 生日
     */
    @Column(value = "birthday", jdbcType = Types.TIMESTAMP)
    private Date birthday;
    /**
     * 性别(0-默认未知,1-男,2-女)
     */
    @Column(value = "sex", jdbcType = Types.BIT)
    private Boolean sex;
    /**
     * 删除状态(0-正常,1-已删除)
     */
    @Column(value = "del_flag", jdbcType = Types.BIT)
    private Boolean delFlag;
    /**
     * 真实姓名
     */
    @Column(value = "realname", jdbcType = Types.VARCHAR)
    private String realname;
    /**
     * 电子邮件
     */
    @Column(value = "email", jdbcType = Types.VARCHAR)
    private String email;
    /**
     * 创建人
     */
    @Column(value = "create_by", jdbcType = Types.VARCHAR)
    private String createBy;
    /**
     * 密码
     */
    @Column(value = "password", jdbcType = Types.VARCHAR)
    private String password;

}
