package com.moxa.sooth.modules.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.moxa.sooth.modules.system.entity.SysDepartRole;

import java.util.List;

/**
 * @Description: 部门角色
 * @Author: jeecg-boot
 * @Date: 2020-02-12
 * @Version: V1.0
 */
public interface ISysDepartRoleService extends IService<SysDepartRole> {

    /**
     * 根据用户id，部门id查询可授权所有部门角色
     *
     * @param orgCode
     * @param userId
     * @return
     */
    List<SysDepartRole> queryDeptRoleByDeptAndUser(String orgCode, String userId);

}
