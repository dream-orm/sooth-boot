package com.moxa.sooth.core.user.view;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.moxa.dream.system.annotation.Extract;
import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.core.base.common.aspect.annotation.Dict;
import com.moxa.sooth.core.base.dream.DictExtractor;
import com.moxa.sooth.core.base.entity.BaseEntity;
import com.moxa.sooth.core.user.table.$SysUser;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;


@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@View($SysUser.class)
public class SysUser extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    private String id;

    /**
     * 登录账号
     */

    private String username;

    /**
     * 真实姓名
     */

    private String realname;

    /**
     * 密码
     */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private String password;

    /**
     * md5密码盐
     */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private String salt;

    /**
     * 头像
     */

    private String avatar;

    /**
     * 生日
     */

    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthday;

    /**
     * 性别（1：男 2：女）
     */

    @Dict(dicCode = "sex")
    @Extract(DictExtractor.class)
    private Integer sex;

    /**
     * 电子邮件
     */

    private String email;

    /**
     * 电话
     */

    private String phone;

    /**
     * 部门code(当前选择登录部门)
     */
    private String orgCode;
    /**
     * 状态(1：正常  2：冻结 ）
     */

    @Dict(dicCode = "user_status")
    @Extract(DictExtractor.class)
    private Integer status;

    /**
     * 删除状态（0，正常，1已删除）
     */

    private Integer delFlag;

    /**
     * 工号，唯一键
     */

    private String workNo;

    /**
     * 职务，关联职务表
     */

    @Dict(dictTable = "sys_position", dicText = "name", dicCode = "code")
    @Extract(DictExtractor.class)
    private String post;

    /**
     * 座机号
     */

    private String telephone;

    /**
     * 同步工作流引擎1同步0不同步
     */
    private Integer activitiSync;

    /**
     * 身份（0 普通成员 1 上级）
     */

    private Integer userIdentity;

    /**
     * 负责部门
     */

    @Dict(dictTable = "sys_depart", dicText = "depart_name", dicCode = "id")
    @Extract(DictExtractor.class)
    private String departIds;

    /**
     * 多租户id配置，编辑用户的时候设置
     */
    private String relTenantIds;

    /**
     * 设备id uniapp推送用
     */
    private String clientId;
}
