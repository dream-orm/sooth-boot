package com.moxa.sooth.core.base.service.impl;


import cn.hutool.core.util.StrUtil;
import com.moxa.dream.template.mapper.TemplateMapper;
import com.moxa.dream.util.common.ObjectMap;
import com.moxa.sooth.core.base.entity.LoginUser;
import com.moxa.sooth.core.base.exception.SoothBootException;
import com.moxa.sooth.core.base.service.SysApiService;
import com.moxa.sooth.core.buttonPermission.service.ISysButtonPermissionService;
import com.moxa.sooth.core.dict.service.ISysDictService;
import com.moxa.sooth.core.interfacePermission.service.ISysInterfacePermissionService;
import com.moxa.sooth.core.role.service.ISysRoleService;
import com.moxa.sooth.core.user.service.ISysUserService;
import com.moxa.sooth.core.user.view.SysUser;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Set;


@Slf4j
@Service
public class SysApiServiceImpl implements SysApiService {
    @Autowired
    private ISysUserService sysUserService;
    @Autowired
    private ISysDictService sysDictService;
    @Autowired
    private ISysRoleService sysRoleService;
    @Autowired
    private ISysButtonPermissionService buttonPermissionService;
    @Autowired
    private ISysInterfacePermissionService interfacePermissionService;
    @Autowired
    private TemplateMapper templateMapper;

    @Override
    public LoginUser getLoginUser(String username) {
        SysUser sysUser = sysUserService.selectOneUser(username);
        if (sysUser == null) {
            throw new SoothBootException("用户不存在");
        }
        Long id = sysUser.getId();
        LoginUser loginUser = new LoginUser();
        loginUser.setId(id);
        loginUser.setUsername(sysUser.getUsername());
        loginUser.setPassword(sysUser.getPassword());
        loginUser.setRealname(sysUser.getRealname());
        loginUser.setAvator(sysUser.getAvatar());
        loginUser.setSex(sysUser.getSex());
        loginUser.setPhone(sysUser.getPhone());
        Set<String> permissionUrls = interfacePermissionService.getPermissionUrls(id);
        loginUser.setPermissionUrls(permissionUrls);
        Set<String> roles = sysRoleService.getRoles(id);
        loginUser.setRoles(roles);
        Set<String> permCodes = buttonPermissionService.getPermCodes(id);
        loginUser.setPermCodes(permCodes);
        return loginUser;
    }

    @Override
    public String getDictItemName(String table, String name, String code, Object value) {
        if (StrUtil.isBlank(table)) {
            return sysDictService.getDictItemName(code, value);
        } else {
            return templateMapper.selectOne("select " + name + " from " + table + " where " + code + "=@?(value)", new ObjectMap(value), String.class);
        }
    }
}
