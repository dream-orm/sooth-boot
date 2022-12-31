package com.moxa.sooth.core.permission.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.core.permission.mapper.SysPermissionMapper;
import com.moxa.sooth.core.permission.model.SysPermissionModel;
import com.moxa.sooth.core.permission.service.ISysPermissionService;
import com.moxa.sooth.core.permission.service.ISysRolePermissionService;
import com.moxa.sooth.core.permission.table.SysRolePermission;
import com.moxa.sooth.core.permission.view.SysPermission;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
@Slf4j
public class SysRolePermissionServiceImpl extends ServiceImpl<SysRolePermission, SysRolePermission> implements ISysRolePermissionService {
}
