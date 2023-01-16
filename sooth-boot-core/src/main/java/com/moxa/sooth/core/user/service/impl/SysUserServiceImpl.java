package com.moxa.sooth.core.user.service.impl;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.crypto.digest.BCrypt;
import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.dream.system.config.Page;
import com.moxa.sooth.core.base.common.exception.SoothBootException;
import com.moxa.sooth.core.base.config.SoothProperties;
import com.moxa.sooth.core.base.util.ClientUtil;
import com.moxa.sooth.core.dept.service.ISysUserDeptService;
import com.moxa.sooth.core.dept.table.SysUserDept;
import com.moxa.sooth.core.role.service.ISysUserRoleService;
import com.moxa.sooth.core.role.table.SysUserRole;
import com.moxa.sooth.core.user.mapper.SysUserMapper;
import com.moxa.sooth.core.user.model.SysUserModel;
import com.moxa.sooth.core.user.model.SysUserPasswordModel;
import com.moxa.sooth.core.user.service.ISysUserService;
import com.moxa.sooth.core.user.view.SysUser;
import com.moxa.sooth.core.user.view.SysUserEditView;
import com.moxa.sooth.core.user.view.SysUserListView;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
@Slf4j
public class SysUserServiceImpl extends ServiceImpl<SysUserListView, SysUser> implements ISysUserService {
    @Autowired
    private SysUserMapper sysUserMapper;
    @Autowired
    private ISysUserRoleService userRoleService;
    @Autowired
    private ISysUserDeptService userDeptService;
    @Autowired
    private SoothProperties soothProperties;

    @Override
    public SysUser selectOneUser(String username) {
        return sysUserMapper.selectOneUser(username);
    }

    @Override
    public Page<SysUserListView> selectPage(Object sysUserModel, Page page) {
        List<SysUserListView> sysUserList = sysUserMapper.selectPage((SysUserModel) sysUserModel, page);
        page.setRows(sysUserList);
        return page;
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public int deleteById(Object id) {
        List<SysUserRole> userRoleList = userRoleService.getRoleByUserId((Long) id);
        if (CollUtil.isNotEmpty(userRoleList)) {
            List<Long> userRoleIdList = userRoleList.stream().map(SysUserRole::getId).collect(Collectors.toList());
            log.debug("删除用户ID：" + id + "关联的角色ID：" + userRoleIdList);
            userRoleService.deleteByIds(userRoleIdList);
        }
        List<SysUserDept> userDeptList = userDeptService.getDeptByUserId((Long) id);
        if (CollUtil.isNotEmpty(userDeptList)) {
            List<Long> userDeptIdList = userDeptList.stream().map(SysUserDept::getId).collect(Collectors.toList());
            log.debug("删除用户ID：" + id + "关联的部门ID：" + userDeptIdList);
            userDeptService.deleteByIds(userDeptIdList);
        }
        log.debug("删除用户ID：" + id);
        return super.deleteById(id);
    }

    @Override
    public int updatePassword(SysUserPasswordModel userPasswordModel) {
        String oldPassword = userPasswordModel.getOldPassword();
        String newPassword = userPasswordModel.getPassword();
        String confirmPassword = userPasswordModel.getConfirmPassword();
        if (StrUtil.isEmpty(oldPassword)) {
            throw new SoothBootException("旧密码不允许为空");
        }
        if (StrUtil.isEmpty(newPassword)) {
            throw new SoothBootException("新密码不允许为空");
        }
        if(!newPassword.equals(confirmPassword)){
            throw new SoothBootException("两次输入密码不一致");
        }
        SysUser sysUser = ClientUtil.getLoginUser();
        if (sysUser == null) {
            throw new SoothBootException("用户不存在");
        }
        if(!BCrypt.checkpw(oldPassword,sysUser.getPassword())){
            throw new SoothBootException("旧密码输入错误");
        }
        String password = BCrypt.hashpw(userPasswordModel.getPassword());
        sysUser.setPassword(password);
        return updateById(sysUser);
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public int saveUser(SysUserEditView userEditView) {
        SysUser sysUser = new SysUser();
        sysUser.setUsername(userEditView.getUsername());
        sysUser.setRealname(userEditView.getRealname());
        sysUser.setSex(userEditView.getSex());
        sysUser.setPhone(userEditView.getPhone());
        sysUser.setDelFlag(0);
        String password = BCrypt.hashpw(soothProperties.getDefaultPassword());
        sysUser.setPassword(password);
        templateMapper.insertFetchKey(sysUser);
        Long id = sysUser.getId();
        if (id == null) {
            throw new SoothBootException("新增用户失败");
        }
        List<Long> roleIdList = userEditView.getRoleIdList();
        List<Long> deptIdList = userEditView.getDeptIdList();
        updateRole(id, roleIdList);
        updateDept(id, deptIdList);
        return 1;
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public int editUser(SysUserEditView userEditView) {
        int count = templateMapper.updateNonById(userEditView);
        List<Long> roleIdList = userEditView.getRoleIdList();
        List<Long> deptIdList = userEditView.getDeptIdList();
        updateRole(userEditView.getId(), roleIdList);
        updateDept(userEditView.getId(), deptIdList);
        return count;
    }

    private void updateRole(Long userId, List<Long> roleIdList) {
        List<SysUserRole> sysUserRoleList;
        if (userId != null) {
            sysUserRoleList = userRoleService.getRoleByUserId(userId);
        } else {
            sysUserRoleList = new ArrayList<>();
        }
        Map<Long, Long> userRoleMap = sysUserRoleList.stream().collect(Collectors.toMap(SysUserRole::getRoleId, SysUserRole::getId));
        List<SysUserRole> userRoleList = new ArrayList<>();
        if (CollUtil.isNotEmpty(roleIdList)) {
            for (Long roleId : roleIdList) {
                if (userRoleMap.remove(roleId) == null) {
                    SysUserRole userRole = new SysUserRole();
                    userRole.setUserId(userId);
                    userRole.setRoleId(roleId);
                    userRoleList.add(userRole);
                }
            }
        }
        if (CollUtil.isNotEmpty(userRoleList)) {
            userRoleService.batchInsert(userRoleList);
        }
        if (!userRoleMap.isEmpty()) {
            userRoleService.deleteByIds(userRoleMap.values().stream().collect(Collectors.toList()));
        }
    }

    private void updateDept(Long userId, List<Long> deptIdList) {
        List<SysUserDept> sysUserDeptList;
        if (userId != null) {
            sysUserDeptList = userDeptService.getDeptByUserId(userId);
        } else {
            sysUserDeptList = new ArrayList<>();
        }
        Map<Long, Long> userDeptMap = sysUserDeptList.stream().collect(Collectors.toMap(SysUserDept::getDeptId, SysUserDept::getId));
        List<SysUserDept> userDeptList = new ArrayList<>();
        if (CollUtil.isNotEmpty(deptIdList)) {
            for (Long deptId : deptIdList) {
                if (userDeptMap.remove(deptId) == null) {
                    SysUserDept userDept = new SysUserDept();
                    userDept.setUserId(userId);
                    userDept.setDeptId(deptId);
                    userDeptList.add(userDept);
                }
            }
        }
        if (CollUtil.isNotEmpty(userDeptList)) {
            userDeptService.batchInsert(userDeptList);
        }
        if (!userDeptMap.isEmpty()) {
            userDeptService.deleteByIds(userDeptMap.values().stream().collect(Collectors.toList()));
        }
    }
}
