package com.moxa.sooth.core.user.view;

import com.moxa.dream.system.annotation.Extract;
import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.core.base.common.aspect.annotation.Dict;
import com.moxa.sooth.core.base.dream.DictExtractor;
import com.moxa.sooth.core.base.entity.BaseDict;
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


    @Dict(dicCode = "sex")
    @Extract(DictExtractor.class)
    private Integer sex;

    /**
     * 电话
     */

    private String phone;

    @Dict(dicCode = "status")
    @Extract(DictExtractor.class)
    private Integer status;
}
