package com.moxa.sooth.core.base.dream.handler;

import cn.hutool.core.collection.CollUtil;
import com.moxa.dream.mate.permission.inject.PermissionHandler;
import com.moxa.dream.system.config.MethodInfo;
import com.moxa.dream.system.table.TableInfo;
import com.moxa.sooth.core.base.annotation.Permission;
import com.moxa.sooth.core.base.config.App;
import com.moxa.sooth.core.base.util.ClientUtil;
import com.moxa.sooth.core.dept.service.ISysDeptService;
import com.moxa.sooth.core.dept.service.ISysUserDeptService;
import com.moxa.sooth.core.dept.table.SysUserDept;
import com.moxa.sooth.core.user.view.SysUser;

import java.util.List;
import java.util.stream.Collectors;

public class SoothPermissionHandler implements PermissionHandler {
    private ISysUserDeptService sysUserDeptService;
    private ISysDeptService sysDeptService;

    @Override
    public boolean isPermissionInject(MethodInfo methodInfo, TableInfo tableInfo) {
        if (sysUserDeptService == null) {
            sysUserDeptService = App.getBean(ISysUserDeptService.class);
        }
        if (sysDeptService == null) {
            sysDeptService = App.getBean(ISysDeptService.class);
        }
        Permission permission = methodInfo.get(Permission.class);
        return (permission != null) && tableInfo.getFieldName("dept_id") != null;
    }

    @Override
    public String getPermission(MethodInfo methodInfo, TableInfo tableInfo, String alias) {
        SysUser loginUser = ClientUtil.getLoginUser();
        if (loginUser != null) {
            Long id = loginUser.getId();
            List<SysUserDept> userDeptList = sysUserDeptService.getDeptByUserId(id);
            if (CollUtil.isNotEmpty(userDeptList)) {
                List<Long> deptList = userDeptList.stream().map(userDept -> userDept.getDeptId()).collect(Collectors.toList());
                List<Long> deepDeptIdList = sysDeptService.listDeepTree(deptList);
                if (CollUtil.isNotEmpty(deepDeptIdList)) {
                    int i = 0;
                    StringBuilder builder = new StringBuilder();
                    for (; i < deepDeptIdList.size() - 1; i++) {
                        builder.append(deepDeptIdList.get(i)).append(",");
                    }
                    builder.append(deepDeptIdList.get(i));
                    return alias + ".dept_id in(" + builder + ")";
                }
            }
            return "1<>1";
        } else {
            return "1=1";
        }
    }
}
