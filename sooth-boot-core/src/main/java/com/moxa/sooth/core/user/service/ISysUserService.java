package com.moxa.sooth.core.user.service;

import com.moxa.dream.system.config.Page;
import com.moxa.dream.template.service.IService;
import com.moxa.sooth.core.user.model.SysUserModel;
import com.moxa.sooth.core.user.view.SysUser;

public interface ISysUserService extends IService<SysUser, SysUser> {


    SysUser selectOneUser(String username);
}
