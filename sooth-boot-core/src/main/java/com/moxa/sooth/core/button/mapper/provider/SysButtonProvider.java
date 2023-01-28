package com.moxa.sooth.core.button.mapper.provider;

import cn.hutool.core.collection.CollUtil;
import com.moxa.dream.system.core.resultsethandler.ResultSetHandler;
import com.moxa.dream.system.provider.ActionProvider;
import com.moxa.dream.template.resulthandler.TreeResultSetHandler;
import com.moxa.sooth.core.button.view.MenuButton;

import java.util.Iterator;
import java.util.List;

public class SysButtonProvider {
    public ActionProvider listMenuButtonTree(){
        return new ActionProvider() {
            private String menuSQL="SELECT " +
                    " sys_menu.id, " +
                    " sys_menu.NAME, " +
                    " NULL type, " +
                    " sys_menu.parent_id parentId, " +
                    " TRUE disableCheckbox  " +
                    " FROM " +
                    " sys_menu  " +
                    " WHERE " +
                    " sys_menu.id IN ( " +
                    " SELECT DISTINCT " +
                    " ( sys_menu.id ) id  " +
                    " FROM " +
                    " sys_menu " +
                    " INNER JOIN sys_role_permission ON sys_menu.id = sys_role_permission.permission_id " +
                    " INNER JOIN sys_role ON sys_role_permission.role_id = sys_role.id " +
                    " INNER JOIN sys_user_role ON sys_role.id = sys_user_role.role_id " +
                    " INNER JOIN sys_user ON sys_user_role.user_id = sys_user.id  " +
                    " WHERE " +
                    " sys_user.id = @?(userId) " +
                    " )  " +
                    " ORDER BY " +
                    " sys_menu.parent_id, " +
                    " sys_menu.sort_no ";
            private String buttonSQL="SELECT  " +
                    " id,  " +
                    " dict.NAME NAME,  " +
                    " type,  " +
                    " menu_id parentId,  " +
                    " FALSE disableCheckbox   " +
                    " FROM  " +
                    " sys_button  " +
                    " INNER JOIN (  " +
                    " SELECT  " +
                    " sys_dict_item.NAME,  " +
                    " sys_dict_item.  " +
                    " VALUE  " +
                    " ,  " +
                    " sys_dict_item.order_no   " +
                    " FROM  " +
                    " sys_dict  " +
                    " INNER JOIN sys_dict_item ON sys_dict.id = sys_dict_item.dict_id   " +
                    " WHERE  " +
                    " sys_dict.CODE = 'button_type'   " +
                    " ) dict ON sys_button.type = dict.VALUE  " +
                    " ORDER BY  " +
                    " dict.order_no ";
            @Override
            public String sql() {
                return "select * from ("+menuSQL+")menu union all select * from("+buttonSQL+") button";
            }

            @Override
            public ResultSetHandler resultSetHandler() {
                ResultSetHandler resultSetHandler = new TreeResultSetHandler();
                return (resultSet, mappedStatement, session) -> {
                    List<MenuButton> menuButtonList = (List<MenuButton>)resultSetHandler.result(resultSet, mappedStatement, session);
                    if(CollUtil.isNotEmpty(menuButtonList)) {
                        Iterator<MenuButton> iterator = menuButtonList.iterator();
                        while (iterator.hasNext()) {
                            MenuButton menuButton = iterator.next();
                            if (!menuButton.isDisableCheckbox()) {
                                iterator.remove();
                            }
                        }
                    }
                    return menuButtonList;
                };
            }
        };
    }
}
