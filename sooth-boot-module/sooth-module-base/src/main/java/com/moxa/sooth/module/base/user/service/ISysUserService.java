package com.moxa.sooth.module.base.user.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.module.base.user.model.BasicInfoModel;
import com.moxa.sooth.module.base.user.model.PasswordModel;
import com.moxa.sooth.module.base.user.view.SysUser;
import com.moxa.sooth.module.base.user.view.SysUserEditView;
import com.moxa.sooth.module.base.user.view.SysUserListView;

public interface ISysUserService extends IService<SysUserListView, SysUser> {


    SysUser selectOneUser(String username);

    int updatePassword(PasswordModel userPasswordModel);

    int updateBasicInfo(BasicInfoModel basicInfoModel);

    int saveUser(SysUserEditView userEditView);

    int editUser(SysUserEditView userEditView);

}
