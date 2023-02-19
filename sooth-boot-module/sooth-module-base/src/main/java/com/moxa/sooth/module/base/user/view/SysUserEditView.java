package com.moxa.sooth.module.base.user.view;

import com.moxa.dream.system.annotation.Ignore;
import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.module.base.core.entity.BaseEntity;
import com.moxa.sooth.module.base.user.table.$SysUser;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.util.List;

@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@View($SysUser.class)
public class SysUserEditView extends BaseEntity {

    private Long id;

    private String username;

    private String realname;

    private Integer sex;

    private String phone;

    @Ignore
    private List<Long> roleIdList;
    @Ignore
    private List<Long> deptIdList;
}
