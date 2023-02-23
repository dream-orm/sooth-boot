package com.moxa.sooth.module.base.core.dream.handler;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.ArrayUtil;
import com.moxa.dream.mate.permission.inject.PermissionHandler;
import com.moxa.dream.system.config.MethodInfo;
import com.moxa.dream.system.table.TableInfo;
import com.moxa.sooth.module.base.core.annotation.DataPermission;
import com.moxa.sooth.module.base.core.config.App;
import com.moxa.sooth.module.base.core.entity.LoginUser;
import com.moxa.sooth.module.base.core.util.ClientUtil;
import com.moxa.sooth.module.base.dataPermission.service.ISysDataPermissionService;
import com.moxa.sooth.module.base.dataPermission.table.SysDataPermission;
import com.moxa.sooth.module.base.dept.service.ISysDeptService;
import com.moxa.sooth.module.base.dept.service.ISysUserDeptService;
import com.moxa.sooth.module.base.dept.table.SysUserDept;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class SoothPermissionHandler implements PermissionHandler {
    private ISysUserDeptService sysUserDeptService;
    private ISysDeptService sysDeptService;

    private ISysDataPermissionService sysDataPermissionService;

    @Override
    public boolean isPermissionInject(MethodInfo methodInfo, TableInfo tableInfo) {
        if (sysUserDeptService == null) {
            sysUserDeptService = App.getBean(ISysUserDeptService.class);
        }
        if (sysDeptService == null) {
            sysDeptService = App.getBean(ISysDeptService.class);
        }
        if (sysDataPermissionService == null) {
            sysDataPermissionService = App.getBean(ISysDataPermissionService.class);
        }
        DataPermission dataPermission = methodInfo.get(DataPermission.class);
        String deptId = tableInfo.getFieldName("dept_id");
        if (dataPermission != null) {
            if (deptId != null) {
                return true;
            }
        }
        return false;
    }

    @Override
    public String getPermission(MethodInfo methodInfo, TableInfo tableInfo, String alias) {
        LoginUser loginUser = ClientUtil.getLoginUser();
        if (loginUser != null) {
            Long id = loginUser.getId();
            SysDataPermission dataPermission = sysDataPermissionService.getDataPermission(id);
            if (dataPermission != null) {
                Integer permissionCode = dataPermission.getPermissionCode();
                if (permissionCode != null) {
                    switch (permissionCode) {
                        case 1:
                            if (tableInfo.getFieldName("create_by") != null) {
                                return getSelfPermission(alias, id, dataPermission.getDeptIds());
                            }
                        case 2:
                            return getDeptPermission(alias, id, dataPermission.getDeptIds());
                        case 3:
                            return getDeepDeptPermission(alias, id, dataPermission.getDeptIds());
                        case 4:
                            return getAllPermission();
                    }
                }
            }
        }
        return "1<>1";

    }

    private String getSelfPermission(String alias, Long userId, Long[] deptIds) {
        String deptSQL = "";
        if (ArrayUtil.isNotEmpty(deptIds)) {
            deptSQL = " or " + deptSQL(alias, Arrays.asList(deptIds));
        }
        return deptSQL(alias, getDeptId(userId)) + " and " + alias + ".create_by=" + userId + deptSQL;
    }

    private String getDeptPermission(String alias, Long userId, Long[] deptIds) {
        List<Long> deptIdList = getDeptId(userId);
        if (ArrayUtil.isNotEmpty(deptIds)) {
            deptIdList.addAll(Arrays.asList(deptIds));
        }
        return deptSQL(alias, deptIdList);
    }

    private String getDeepDeptPermission(String alias, Long userId, Long[] deptIds) {
        List<Long> deptIdList = getDeptId(userId);
        deptIdList = sysDeptService.listDeepTree(deptIdList);
        if (ArrayUtil.isNotEmpty(deptIds)) {
            deptIdList.addAll(Arrays.asList(deptIds));
        }
        return deptSQL(alias, deptIdList);
    }

    private String getAllPermission() {
        return "1=1";
    }

    private List<Long> getDeptId(Long userId) {
        List<SysUserDept> userDeptList = sysUserDeptService.getDeptByUserId(userId);
        List<Long> deptIds = userDeptList.stream().map(userDept -> userDept.getDeptId()).collect(Collectors.toList());
        return deptIds;
    }

    private String deptSQL(String alias, List<Long> deptIds) {
        if (CollUtil.isNotEmpty(deptIds)) {
            String deptArray = deptIds.stream().map(deptId -> String.valueOf(deptId)).distinct().collect(Collectors.joining(","));
            return alias + ".dept_id in(" + deptArray + ")";
        } else {
            return "1<>1";
        }
    }
}
