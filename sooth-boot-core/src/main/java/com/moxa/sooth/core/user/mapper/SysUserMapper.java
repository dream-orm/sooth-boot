package com.moxa.sooth.core.user.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.PageQuery;
import com.moxa.dream.system.annotation.Param;
import com.moxa.dream.system.annotation.Sql;
import com.moxa.dream.system.config.Page;
import com.moxa.sooth.core.user.model.SysUserModel;
import com.moxa.sooth.core.user.view.SysUser;

import java.util.List;

@Mapper
public interface SysUserMapper {
    @Sql("select @all() from sys_user where username=@$(username)")
    SysUser selectOneUser(String username);
    @PageQuery
    @Sql("select @all() from sys_user " +
            "inner join sys_user_dept sud on sys_user.id=sud.user_id " +
            "inner join sys_dept on sys_dept.id=sud.dept_id " +
            "where @not(sys_user.username like concat('%',@$(userModel.username),'%') " +
            "and realname like concat('%',@$(userModel.realname),'%') " +
            "and phone like concat('%',@$(userModel.phone),'%') " +
            "and sys_dept.id in (@foreach(userModel.deptIds)))")
    List<SysUser> selectPage(@Param("userModel") SysUserModel userModel,@Param("page") Page page);

    @PageQuery
    @Sql("select @all() from sys_user where  id in (select user_id from sys_user_role where role_id=@$(roleId))")
    List<SysUser> getUserByRoleId(@Param("roleId") String roleId, @Param("page") Page page);
}
