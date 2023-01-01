package com.moxa.sooth.core.permission.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.core.permission.mapper.SysPermissionMapper;
import com.moxa.sooth.core.permission.model.SysPermissionEditModel;
import com.moxa.sooth.core.permission.model.SysPermissionModel;
import com.moxa.sooth.core.permission.service.ISysPermissionService;
import com.moxa.sooth.core.permission.service.ISysRolePermissionService;
import com.moxa.sooth.core.permission.table.SysRolePermission;
import com.moxa.sooth.core.permission.view.SysPermission;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;


@Service
@Slf4j
public class SysPermissionServiceImpl extends ServiceImpl<SysPermission, SysPermission> implements ISysPermissionService {
    @Autowired
    private SysPermissionMapper sysPermissionMapper;

    @Autowired
    private ISysRolePermissionService sysRolePermissionService;

    @Override
    public List<SysPermission> selectAuths(String username) {
        return sysPermissionMapper.selectAuths(username);
    }

    @Override
    public List<SysPermission> selectTree(SysPermissionModel sysPermissionModel) {
        return templateMapper.selectTree(SysPermission.class, sysPermissionModel);
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void saveRolePermission(SysPermissionEditModel sysPermissionEditModel) {
        Long roleId = sysPermissionEditModel.getRoleId();
        List<Long> permissionIds = sysPermissionEditModel.getPermissionIds();
        List<Long> oldPermissionIds = sysPermissionEditModel.getOldPermissionIds();
        if (permissionIds == null) {
            permissionIds = new ArrayList<>();
        }
        if (oldPermissionIds == null) {
            oldPermissionIds = new ArrayList<>();
        }
        List<Long> newPermissionIds = new ArrayList<>();
        for (Long permissionId : permissionIds) {
            if (!oldPermissionIds.remove(permissionId)) {
                newPermissionIds.add(permissionId);
            }
        }
        if (!newPermissionIds.isEmpty()) {
            List<SysRolePermission> sysRolePermissionList = newPermissionIds.stream().map(permissionId -> {
                SysRolePermission sysRolePermission = new SysRolePermission();
                sysRolePermission.setRoleId(roleId);
                sysRolePermission.setPermissionId(permissionId);
                return sysRolePermission;
            }).collect(Collectors.toList());
            sysRolePermissionService.batchInsert(sysRolePermissionList);
        }
        if (!oldPermissionIds.isEmpty()) {
            sysRolePermissionService.deleteByIds(oldPermissionIds);
        }
    }
}
