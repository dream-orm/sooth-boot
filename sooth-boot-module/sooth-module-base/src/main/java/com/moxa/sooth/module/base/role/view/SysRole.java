package com.moxa.sooth.module.base.role.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.dream.template.annotation.validate.NotNull;
import com.moxa.sooth.module.base.core.annotation.Dict;
import com.moxa.sooth.module.base.core.dream.annotation.Unique;
import com.moxa.sooth.module.base.core.entity.BaseEntity;
import com.moxa.sooth.module.base.role.table.SysRoleTable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@View(SysRoleTable.class)
public class SysRole extends BaseEntity {

    /**
     * id
     */
    private Long id;

    /**
     * 角色名称
     */

    private String roleName;

    @NotNull(msg = "角色部门不能为空")
    @Dict(code = "dept_id", name = "dept_name", table = "sys_dept")
    private Long deptId;

    /**
     * 角色编码
     */
    @Unique(msg = "角色编码已存在")
    private String roleCode;

    /**
     * 描述
     */

    private String description;
}
