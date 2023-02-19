package com.moxa.sooth.module.base.role.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.module.base.role.view.SysRole;

import java.util.Set;

public interface ISysRoleService extends IService<SysRole, SysRole> {

    Set<String> getRoles(Long userId);
}
