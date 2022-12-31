package com.moxa.sooth.core.user.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.dream.system.config.Page;
import com.moxa.sooth.core.user.mapper.SysUserMapper;
import com.moxa.sooth.core.user.model.SysUserModel;
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
        List<SysUser> sysUserList=sysUserMapper.selectPage((SysUserModel) sysUserModel,page);
        page.setRows(sysUserList);
        return page;
    }

    @Override
    public Page<SysUser> getUserByRoleId(String roleId, Page page) {
        List<SysUser>sysUserList= sysUserMapper.getUserByRoleId(roleId,page);
        page.setRows(sysUserList);
        return page;
    }
}
