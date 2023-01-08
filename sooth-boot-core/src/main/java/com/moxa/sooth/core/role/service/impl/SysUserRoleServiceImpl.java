package com.moxa.sooth.core.role.service.impl;

import cn.hutool.core.collection.CollUtil;
import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.dream.system.config.Page;
import com.moxa.sooth.core.role.mapper.SysUserRoleMapper;
import com.moxa.sooth.core.role.model.SysUserRoleExistModel;
import com.moxa.sooth.core.role.model.SysUserRoleModel;
import com.moxa.sooth.core.role.model.SysUserRoleUserIdModel;
import com.moxa.sooth.core.role.service.ISysUserRoleService;
import com.moxa.sooth.core.role.table.SysUserRole;
import com.moxa.sooth.core.role.view.SysUserRoleView;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j
public class SysUserRoleServiceImpl extends ServiceImpl<SysUserRole, SysUserRole> implements ISysUserRoleService {
    @Autowired
    private SysUserRoleMapper userRoleMapper;

    @Override
    public void saveUserRole(SysUserRoleModel userRoleModel) {
        Long roleId = userRoleModel.getRoleId();
        List<Long> userIdList = userRoleModel.getUserIdList();
        List<SysUserRole> userRoleList = new ArrayList<>();
        if (CollUtil.isNotEmpty(userIdList)) {
            for (Long userId : userIdList) {
                SysUserRoleExistModel userRoleExistModel = new SysUserRoleExistModel();
                userRoleExistModel.setRoleId(roleId);
                userRoleExistModel.setUserId(userId);
                if (!exist(userRoleExistModel)) {
                    SysUserRole userRole = new SysUserRole();
                    userRole.setRoleId(roleId);
                    userRole.setUserId(userId);
                    userRoleList.add(userRole);
                }
            }
            if (CollUtil.isNotEmpty(userRoleList)) {
                batchInsert(userRoleList);
            }
        }
    }

    @Override
    public Page<SysUserRoleView> getUserByRoleId(Long roleId, Page page) {
        List<SysUserRoleView> userRoleViewList = userRoleMapper.getUserByRoleId(roleId, page);
        page.setRows(userRoleViewList);
        return page;
    }

    @Override
    public List<SysUserRole> getRoleByUserId(Long userId) {
        SysUserRoleUserIdModel userRoleUserIdModel = new SysUserRoleUserIdModel();
        userRoleUserIdModel.setUserId(userId);
        return templateMapper.selectList(SysUserRole.class, userRoleUserIdModel);
    }
}
