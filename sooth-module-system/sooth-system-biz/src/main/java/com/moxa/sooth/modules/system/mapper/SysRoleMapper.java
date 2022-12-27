package com.moxa.sooth.modules.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.moxa.sooth.modules.system.entity.SysRole;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;

/**
 * <p>
 * 角色表 Mapper 接口
 * </p>
 *
 * @Author scott
 * @since 2018-12-19
 */
public interface SysRoleMapper extends BaseMapper<SysRole> {

    /**
     * 删除角色与用户关系
     *
     * @param roleId
     * @Author scott
     * @Date 2019/12/13 16:12
     */
    @Delete("delete from sys_user_role where role_id = #{roleId}")
    void deleteRoleUserRelation(@Param("roleId") String roleId);


    /**
     * 删除角色与权限关系
     *
     * @param roleId
     * @Author scott
     * @Date 2019/12/13 16:12
     */
    @Delete("delete from sys_role_permission where role_id = #{roleId}")
    void deleteRolePermissionRelation(@Param("roleId") String roleId);

}
