package com.moxa.sooth.core.user.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.core.base.entity.BaseDict;
import com.moxa.sooth.core.dict.view.SysDict;
import com.moxa.sooth.core.user.table.$SysUser;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;


@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@View($SysUser.class)
public class SysUserListView extends BaseDict {

    /**
     * id
     */
    private Long id;

    /**
     * 登录账号
     */

    private String username;

    /**
     * 真实姓名
     */

    private String realname;


    private Integer sex;

    /**
     * 电话
     */

    private String phone;

    private SysDict sexDict;
}
