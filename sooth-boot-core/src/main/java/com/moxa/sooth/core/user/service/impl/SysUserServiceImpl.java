package com.moxa.sooth.core.user.service.impl;

import cn.hutool.core.util.StrUtil;
import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.dream.system.config.Page;
import com.moxa.sooth.core.base.common.exception.SoothBootException;
import com.moxa.sooth.core.base.util.PasswordUtil;
import com.moxa.sooth.core.user.mapper.SysUserMapper;
import com.moxa.sooth.core.user.model.SysUserModel;
import com.moxa.sooth.core.user.model.SysUserPasswordModel;
import com.moxa.sooth.core.user.service.ISysUserService;
import com.moxa.sooth.core.user.view.SysUser;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
@Slf4j
public class SysUserServiceImpl extends ServiceImpl<SysUser, SysUser> implements ISysUserService {
    @Autowired
    private SysUserMapper sysUserMapper;

    @Override
    public SysUser selectOneUser(String username) {
        return sysUserMapper.selectOneUser(username);
    }

    @Override
    public Page<SysUser> selectPage(Object sysUserModel, Page page) {
        List<SysUser> sysUserList = sysUserMapper.selectPage((SysUserModel) sysUserModel, page);
        page.setRows(sysUserList);
        return page;
    }

    @Override
    public Page<SysUser> getUserByRoleId(String roleId, Page page) {
        List<SysUser> sysUserList = sysUserMapper.getUserByRoleId(roleId, page);
        page.setRows(sysUserList);
        return page;
    }

    @Override
    public int updatePassword(SysUserPasswordModel userPasswordModel) {
        SysUser sysUser = sysUserMapper.selectOneUser(userPasswordModel.getUsername());
        if (sysUser == null) {
            throw new SoothBootException("用户不存在");
        }
        if (StrUtil.isEmpty(userPasswordModel.getPassword())) {
            throw new SoothBootException("新密码不允许为空!");
        }
        if (!userPasswordModel.getPassword().equals(userPasswordModel.getConfirmPassword())) {
            throw new SoothBootException("两次输入密码不一致!");
        }
        String passwordEncode = PasswordUtil.encrypt(userPasswordModel.getUsername(), userPasswordModel.getOldPassword(), sysUser.getSalt());
        if (!sysUser.getPassword().equals(passwordEncode)) {
            throw new SoothBootException("旧密码输入错误!");
        }
        String password = PasswordUtil.encrypt(sysUser.getUsername(), userPasswordModel.getPassword(), sysUser.getSalt());
        sysUser.setPassword(password);
        return updateById(sysUser);
    }
}
