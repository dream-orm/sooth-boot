package com.moxa.sooth.core.role.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.dream.template.annotation.validate.NotNull;
import com.moxa.sooth.core.base.annotation.Dict;
import com.moxa.dream.template.annotation.validate.Unique;
import com.moxa.sooth.core.base.entity.BaseEntity;
import com.moxa.sooth.core.role.table.SysRoleTable;
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
