package com.moxa.sooth.modules.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.moxa.sooth.modules.system.entity.SysDepartRolePermission;

/**
 * @Description: 部门角色权限
 * @Author: jeecg-boot
 * @Date: 2020-02-12
 * @Version: V1.0
 */
public interface ISysDepartRolePermissionService extends IService<SysDepartRolePermission> {
    /**
     * 保存授权 将上次的权限和这次作比较 差异处理提高效率
     *
     * @param roleId
     * @param permissionIds
     * @param lastPermissionIds
     */
    public void saveDeptRolePermission(String roleId, String permissionIds, String lastPermissionIds);
}
