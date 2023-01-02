package com.moxa.sooth.core.role.service;

import com.moxa.dream.system.config.Page;
import com.moxa.dream.template.service.IService;
import com.moxa.sooth.core.role.model.SysUserRoleModel;
import com.moxa.sooth.core.role.table.SysUserRole;
import com.moxa.sooth.core.role.view.SysUserRoleView;

public interface ISysUserRoleService extends IService<SysUserRole, SysUserRole> {

    void saveUserRole(SysUserRoleModel userRoleModel);

    Page<SysUserRoleView> getUserByRoleId(String roleId, Page toPage);
}
