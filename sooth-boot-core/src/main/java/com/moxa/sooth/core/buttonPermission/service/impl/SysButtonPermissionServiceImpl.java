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
    public void saveButtonPermission(Long roleId, List<Long> buttonIdList) {
        SysButtonPermissionModel buttonPermissionModel = new SysButtonPermissionModel();
        buttonPermissionModel.setRoleId(roleId);
        List<SysButtonPermission> buttonPermissions = selectList(buttonPermissionModel);
        Set<Long> buttonPermissionSet = buttonPermissions.stream().map(sysButtonPermission -> sysButtonPermission.getId()).collect(Collectors.toSet());
        List<SysButtonPermission> saveSysButtonPermissions = new ArrayList<>();
        for (Long buttonId : buttonIdList) {
            if (!buttonPermissionSet.remove(buttonId)) {
                SysButtonPermission sysButtonPermission = new SysButtonPermission();
                sysButtonPermission.setRoleId(roleId);
                sysButtonPermission.setButtonId(buttonId);
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
    public Set<String> getPermCodes(Long id) {
        return buttonPermissionMapper.getPermCodes(id);
    }
}
