package com.moxa.sooth.core.role.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.dream.system.config.Page;
import com.moxa.sooth.core.base.annotation.DataPermission;
import com.moxa.sooth.core.role.mapper.SysRoleMapper;
import com.moxa.sooth.core.role.service.ISysRoleService;
import com.moxa.sooth.core.role.view.SysRole;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.annotation.Annotation;
import java.util.Set;

@Service
@Slf4j
public class SysRoleServiceImpl extends ServiceImpl<SysRole, SysRole> implements ISysRoleService {
    @Autowired
    private SysRoleMapper sysRoleMapper;

    @Override
    public Set<String> getRoles(Long userId) {
        return sysRoleMapper.getRoles(userId);
    }

    @Override
    public Page<SysRole> selectPage(Object conditionObject, Page page) {
        return templateMapper.methodInfo(methodInfo -> methodInfo.set(DataPermission.class, new DataPermission() {
            @Override
            public Class<? extends Annotation> annotationType() {
                return DataPermission.class;
            }
        })).selectPage(SysRole.class, conditionObject, page);
    }
}
