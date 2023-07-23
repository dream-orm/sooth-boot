package com.moxa.sooth.module.base.user.model;

import com.moxa.dream.system.annotation.View;
import com.moxa.dream.template.annotation.validate.NotNull;
import com.moxa.sooth.module.base.user.table.$SysUser;
import lombok.Data;

@Data
@View($SysUser.class)
public class BasicInfoModel {
    private Long id;
    @NotNull(msg = "昵称不能为空")
    private String realname;
    private String phone;
    private Integer sex;
}
