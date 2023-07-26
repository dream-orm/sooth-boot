package com.moxa.sooth.module.base.user.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.PageQuery;
import com.moxa.dream.system.annotation.Param;
import com.moxa.dream.system.annotation.Sql;
import com.moxa.dream.system.config.Page;
import com.moxa.sooth.module.base.core.annotation.DataPermission;
import com.moxa.sooth.module.base.user.mapper.provider.SysUserProvider;
import com.moxa.sooth.module.base.user.model.SysUserModel;
import com.moxa.sooth.module.base.user.view.SysUser;
import com.moxa.sooth.module.base.user.view.SysUserListView;

import java.util.List;

@Mapper(SysUserProvider.class)
public interface SysUserMapper {
    @Sql("select @*() from sys_user where username=@?(username)")
    SysUser selectOneUser(String username);

    @DataPermission
    @PageQuery
    List<SysUserListView> selectPage(@Param("userModel") SysUserModel userModel, @Param("page") Page page);

    @Sql("update sys_user set password=@?(password) where id=@?(id)")
    int updatePassword(@Param("id") Long id, @Param("password") String password);
}
