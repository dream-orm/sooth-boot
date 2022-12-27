package com.moxa.sooth.core.permission.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.core.permission.mapper.SysPermissionMapper;
import com.moxa.sooth.core.permission.model.SysPermissionModel;
import com.moxa.sooth.core.permission.service.ISysPermissionService;
import com.moxa.sooth.core.permission.view.SysPermission;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
@Slf4j
public class SysPermissionServiceImpl extends ServiceImpl<SysPermission, SysPermission> implements ISysPermissionService {
    @Autowired
    private SysPermissionMapper sysPermissionMapper;
    @Override
    public List<SysPermission> selectAuths(String username) {
        return sysPermissionMapper.selectAuths(username);
    }

    @Override
    public List<SysPermission> selectTree(SysPermissionModel sysPermissionModel) {
        return templateMapper.selectTree(SysPermission.class,sysPermissionModel);
    }
}
