package com.moxa.sooth.core.role.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.core.role.mapper.SysRoleMapper;
import com.moxa.sooth.core.role.service.ISysRoleService;
import com.moxa.sooth.core.role.view.SysRole;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Set;

@Service
@Slf4j
public class SysRoleServiceImpl extends ServiceImpl<SysRole, SysRole> implements ISysRoleService {
    @Autowired
    private SysRoleMapper sysRoleMapper;

    @Override
    public Set<String> selectRoles(String username) {
        return sysRoleMapper.selectRoles(username);
    }
}
