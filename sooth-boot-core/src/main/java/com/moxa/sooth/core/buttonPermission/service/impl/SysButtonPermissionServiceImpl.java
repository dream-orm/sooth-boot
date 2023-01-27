package com.moxa.sooth.core.buttonPermission.service.impl;

import cn.hutool.core.collection.CollUtil;
import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.core.buttonPermission.mapper.SysButtonPermissionMapper;
import com.moxa.sooth.core.buttonPermission.model.SysButtonPermissionModel;
import com.moxa.sooth.core.buttonPermission.service.ISysButtonPermissionService;
import com.moxa.sooth.core.buttonPermission.table.SysButtonPermission;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class SysButtonPermissionServiceImpl extends ServiceImpl<SysButtonPermission, SysButtonPermission> implements ISysButtonPermissionService {
    @Autowired
    private SysButtonPermissionMapper buttonPermissionMapper;

    @Override
    public void saveButtonPermission(Long roleId, List<SysButtonPermission> buttonPermissionList) {
        SysButtonPermissionModel buttonPermissionModel = new SysButtonPermissionModel();
        buttonPermissionModel.setRoleId(roleId);
        List<SysButtonPermission> buttonPermissions = selectList(buttonPermissionList);
        Set<String> buttonPermissionSet = buttonPermissions.stream().map(sysButtonPermission -> sysButtonPermission.getId()).collect(Collectors.toSet());
        List<SysButtonPermission> saveSysButtonPermissions = new ArrayList<>();
        for (SysButtonPermission sysButtonPermission : buttonPermissionList) {
            String id = roleId + sysButtonPermission.getType() + sysButtonPermission.getMenuId();
            if (!buttonPermissionSet.remove(id)) {
                sysButtonPermission.setRoleId(roleId);
                sysButtonPermission.setId(id);
                saveSysButtonPermissions.add(sysButtonPermission);
            }
        }
        if (CollUtil.isNotEmpty(buttonPermissionSet)) {
            deleteByIds(buttonPermissionSet);
        }
        if (CollUtil.isNotEmpty(saveSysButtonPermissions)) {
            batchInsert(saveSysButtonPermissions);
        }
    }

    @Override
    public List<String> getPermCode(Long id) {
        return buttonPermissionMapper.getPermCode(id);
    }
}
