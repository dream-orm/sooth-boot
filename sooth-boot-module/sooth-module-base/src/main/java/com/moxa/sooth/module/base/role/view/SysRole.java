package com.moxa.sooth.module.base.role.view;

import com.moxa.dream.system.annotation.Extract;
import com.moxa.dream.system.annotation.View;
import com.moxa.dream.template.annotation.validate.NotNull;
import com.moxa.dream.template.annotation.validate.Unique;
import com.moxa.sooth.module.base.core.dream.extract.DictExtractor;
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
    @Extract(value = DictExtractor.class, args = {"dept_id", "sys_dept", "dept_name"})
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
