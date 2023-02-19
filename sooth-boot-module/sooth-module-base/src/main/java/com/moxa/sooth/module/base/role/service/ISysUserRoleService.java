package com.moxa.sooth.module.base.role.service;

import com.moxa.dream.system.config.Page;
import com.moxa.dream.template.service.IService;
import com.moxa.sooth.module.base.role.model.SysUserRoleGroupByRoleIdModel;
import com.moxa.sooth.module.base.role.model.SysUserRoleModel;
import com.moxa.sooth.module.base.role.table.SysUserRole;
import com.moxa.sooth.module.base.role.view.SysUserRoleView;

import java.util.List;

public interface ISysUserRoleService extends IService<SysUserRole, SysUserRole> {

    void saveUserRole(SysUserRoleModel userRoleModel);

    Page<SysUserRoleView> getUserByRoleId(SysUserRoleGroupByRoleIdModel userRoleGroupByRoleIdModel, Page toPage);

    List<SysUserRole> getRoleByUserId(Long userId);
}
