package com.moxa.sooth.modules.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.moxa.sooth.modules.system.entity.SysRole;

/**
 * <p>
 * 角色表 服务类
 * </p>
 *
 * @Author scott
 * @since 2018-12-19
 */
public interface ISysRoleService extends IService<SysRole> {
    /**
     * 删除角色
     *
     * @param roleid
     * @return
     */
    public boolean deleteRole(String roleid);

    /**
     * 批量删除角色
     *
     * @param roleids
     * @return
     */
    public boolean deleteBatchRole(String[] roleids);

}
