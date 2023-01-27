package com.moxa.sooth.core.dataPermission.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.core.dataPermission.mapper.SysDataPermissionMapper;
import com.moxa.sooth.core.dataPermission.service.ISysDataPermissionService;
import com.moxa.sooth.core.dataPermission.table.SysDataPermission;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SysDataPermissionServiceImpl extends ServiceImpl<SysDataPermission, SysDataPermission> implements ISysDataPermissionService {
    @Autowired
    private SysDataPermissionMapper dataPermissionMapper;

    @Override
    public SysDataPermission getDataPermission(Long userId) {
        return dataPermissionMapper.getDataPermission(userId);
    }
}
