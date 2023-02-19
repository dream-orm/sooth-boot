package com.moxa.sooth.module.base.user.mapper.provider;

import com.moxa.dream.system.core.action.Action;
import com.moxa.dream.system.provider.ActionProvider;
import com.moxa.sooth.module.base.core.dream.action.DictAction;

public class SysUserProvider {
    public ActionProvider selectPage() {
        return new ActionProvider() {
            @Override
            public String sql() {
                return "select @all() from sys_user where id in(select sys_user.id from sys_dept " +
                        "inner join sys_user_dept sud on sys_dept.dept_id=sud.dept_id " +
                        "inner join sys_user on sys_user.id=sud.user_id " +
                        "where @not(sys_user.username like concat('%',@?(userModel.username),'%') " +
                        "and realname like concat('%',@?(userModel.realname),'%') " +
                        "and phone like concat('%',@?(userModel.phone),'%') " +
                        "and sys_dept.dept_id in (@foreach(userModel.deptIds))))";
            }

            @Override
            public Action[] loopActionList() {
                return new Action[]{new DictAction("sex")};
            }
        };
    }
}
