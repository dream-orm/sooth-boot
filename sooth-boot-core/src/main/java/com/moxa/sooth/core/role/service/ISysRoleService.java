package com.moxa.sooth.core.role.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.core.role.view.SysRole;

import java.util.Set;

public interface ISysRoleService extends IService<SysRole, SysRole> {


    Set<String> selectRoles(String username);
}
