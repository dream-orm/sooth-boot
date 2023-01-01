package com.moxa.sooth.core.role.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.core.base.entity.BaseEntity;
import com.moxa.sooth.core.role.table.$SysRole;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@View($SysRole.class)
public class SysRole extends BaseEntity {

    /**
     * id
     */
    private Long id;

    /**
     * 角色名称
     */

    private String roleName;

    /**
     * 角色编码
     */

    private String roleCode;

    /**
     * 描述
     */

    private String description;
}
