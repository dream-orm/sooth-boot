package com.moxa.sooth.modules.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.moxa.sooth.modules.system.entity.SysDepartRole;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Description: 部门角色
 * @Author: jeecg-boot
 * @Date: 2020-02-12
 * @Version: V1.0
 */
public interface SysDepartRoleMapper extends BaseMapper<SysDepartRole> {
    /**
     * 根据用户id，部门id查询可授权所有部门角色
     *
     * @param orgCode
     * @param userId
     * @return
     */
    public List<SysDepartRole> queryDeptRoleByDeptAndUser(@Param("orgCode") String orgCode, @Param("userId") String userId);
}
