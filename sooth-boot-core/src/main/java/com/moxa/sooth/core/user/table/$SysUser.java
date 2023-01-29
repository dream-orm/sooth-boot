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
     * 创建时间
     */
    @Column(value = "create_time", jdbcType = Types.TIMESTAMP)
    private Date createTime;
    /**
     * 更新人
     */
    @Column(value = "update_by", jdbcType = Types.VARCHAR)
    private String updateBy;
    /**
     * 主键id
     */
    @Id
    @Column(value = "id", jdbcType = Types.BIGINT)
    private Long id;
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
     * 登录账号
     */
    @Column(value = "username", jdbcType = Types.VARCHAR)
    private String username;
    /**
     * 性别
     */
    @Column(value = "sex", jdbcType = Types.BIT)
    private Integer sex;
    /**
     * 删除状态(0-正常,1-已删除)
     */
    @Column(value = "del_flag", jdbcType = Types.BIT)
    private Integer delFlag;
    /**
     * 真实姓名
     */
    @Column(value = "realname", jdbcType = Types.VARCHAR)
    private String realname;
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
