package com.moxa.sooth.core.base.service.impl;


import cn.hutool.core.util.StrUtil;
import com.alibaba.fastjson.JSONObject;
import com.moxa.dream.template.mapper.TemplateMapper;
import com.moxa.dream.util.common.ObjectMap;
import com.moxa.sooth.core.base.common.constant.CommonConstant;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.core.base.service.SysApiService;
import com.moxa.sooth.core.dict.service.ISysDictService;
import com.moxa.sooth.core.permission.service.ISysPermissionService;
import com.moxa.sooth.core.permission.view.SysPermission;
import com.moxa.sooth.core.role.service.ISysRoleService;
import com.moxa.sooth.core.user.service.ISysUserService;
import com.moxa.sooth.core.user.view.SysUser;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
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
    private ISysPermissionService sysPermissionService;
    @Autowired
    private TemplateMapper templateMapper;

    @Override
    public SysUser selectOneUser(String username) {
        return sysUserService.selectOneUser(username);
    }

    @Override
    public Result<JSONObject> checkUserIsEffective(SysUser sysUser) {
        Result<JSONObject> result = new Result<>();
        if (sysUser == null) {
            result.error500("该用户不存在，请注册");
            return result;
        }
        if (CommonConstant.USER_FREEZE.equals(sysUser.getStatus())) {
            result.error500("该用户已冻结");
            return result;
        }
        return result;
    }

    @Override
    public String translateDict(String table, String name, String code, Object value) {
        if (StrUtil.isBlank(table)) {
            return sysDictService.translateDict(code, value);
        } else {
            return templateMapper.selectOne("select " + name + " from " + table + " where " + code + "=@$(value)", new ObjectMap(value), String.class);
        }
    }

    @Override
    public Set<String> selectRoles(String username) {
        return sysRoleService.selectRoles(username);
    }

    @Override
    public Set<String> selectAuths(String username) {
        Set<String> permissionSet = new HashSet<>();
        List<SysPermission> permissionList = sysPermissionService.selectAuths(username);
        for (SysPermission po : permissionList) {
            if (StrUtil.isNotEmpty(po.getPerms())) {
                permissionSet.add(po.getPerms());
            }
        }
        return permissionSet;
    }
}
