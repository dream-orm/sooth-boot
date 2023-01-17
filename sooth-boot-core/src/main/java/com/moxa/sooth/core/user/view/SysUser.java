package com.moxa.sooth.core.user.view;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.moxa.dream.system.annotation.View;
import com.moxa.dream.template.annotation.validate.NotNull;
import com.moxa.sooth.core.base.annotation.Dict;
import com.moxa.sooth.core.base.dream.annotation.Unique;
import com.moxa.sooth.core.base.entity.BaseEntity;
import com.moxa.sooth.core.user.table.$SysUser;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;


@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@View($SysUser.class)
public class SysUser extends BaseEntity {

    /**
     * id
     */
    private Long id;

    /**
     * 登录账号
     */
    @NotNull(msg = "账号不能为空")
    @Unique(msg = "账号已存在")
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
     * 头像
     */

    private String avatar;

    /**
     * 性别
     */

    @Dict(code = "sex")

    private Integer sex;
    /**
     * 电话
     */

    private String phone;

    /**
     * 删除状态（0，正常，1已删除）
     */

    private Integer delFlag;
}
