package com.moxa.sooth.module.base.user.view;

import com.moxa.dream.system.annotation.Extract;
import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.module.base.core.dream.extract.DictExtractor;
import com.moxa.sooth.module.base.core.entity.BaseDict;
import com.moxa.sooth.module.base.dict.view.SysDictView;
import com.moxa.sooth.module.base.user.table.$SysUser;
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

    @Extract(value = DictExtractor.class,args = "sex")
    private Integer sex;

    /**
     * 电话
     */

    private String phone;

    private SysDictView sexDict;
}
