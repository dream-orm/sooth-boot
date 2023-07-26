package com.moxa.sooth.module.base.menu.mapper.provider;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.StrUtil;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.moxa.dream.system.core.resultsethandler.ResultSetHandler;
import com.moxa.dream.system.provider.ActionProvider;
import com.moxa.dream.template.resulthandler.TreeResultSetHandler;
import com.moxa.sooth.module.base.menu.view.SysMenuListView;

import java.util.Collection;
import java.util.List;

public class SysMenuProvider {
    public ActionProvider getMenu() {
        return new ActionProvider() {
            @Override
            public String sql() {
                return "SELECT @*() " +
                        " FROM sys_menu p " +
                        " WHERE exists( " +
                        " select a.id from sys_role_permission a " +
                        " inner join sys_role b on a.role_id = b.id " +
                        " inner join sys_user_role c on c.role_id = b.id " +
                        " inner join sys_user d on d.id = c.user_id " +
                        " where p.id = a.permission_id AND d.id = @?(userId) " +
                        " )order by sort_no ASC";
            }

            @Override
            public Class<? extends Collection> rowType() {
                return List.class;
            }

            @Override
            public Class<?> colType() {
                return SysMenuListView.class;
            }

            @Override
            public ResultSetHandler resultSetHandler() {
                ResultSetHandler resultSetHandler = new TreeResultSetHandler();
                return (resultSet, mappedStatement, session) -> {
                    List<SysMenuListView> permissionList = (List<SysMenuListView>) resultSetHandler.result(resultSet, mappedStatement, session);
                    JSONArray menuArray = new JSONArray();
                    for (SysMenuListView permission : permissionList) {
                        menuArray.add(getPermissionJsonObject(permission));
                    }
                    return menuArray;
                };
            }

            /**
             * 根据菜单配置生成路由json
             *
             * @param permission
             * @return
             */
            private JSONObject getPermissionJsonObject(SysMenuListView permission) {
                JSONObject json = new JSONObject();
                json.put("id", permission.getId());

                json.put("path", permission.getUrl());

                json.put("name", permission.getComponentName());

                JSONObject meta = new JSONObject();
                // 是否隐藏路由，默认都是显示的
                meta.put("hideMenu", permission.isHidden());
                // 聚合路由
                meta.put("fixedTab", permission.isFixedTab());
                json.put("component", permission.getComponent());
                // 由用户设置是否缓存页面 用布尔值
                meta.put("keepAlive", permission.isKeepAlive());
                meta.put("title", permission.getName());

                if (StrUtil.isNotEmpty(permission.getRedirect())) {
                    // 一级菜单跳转地址
                    json.put("redirect", permission.getRedirect());
                }
                if (StrUtil.isNotEmpty(permission.getIcon())) {
                    meta.put("icon", permission.getIcon());
                }
                meta.put("hideTab", permission.isHideTab());
                json.put("meta", meta);
                List<SysMenuListView> children = permission.getChildren();
                if (CollUtil.isNotEmpty(children)) {
                    for (SysMenuListView childPermission : children) {
                        JSONObject permissionJsonObject = getPermissionJsonObject(childPermission);
                        if (json.containsKey("children")) {
                            json.getJSONArray("children").add(permissionJsonObject);
                        } else {
                            JSONArray childrenArray = new JSONArray();
                            childrenArray.add(permissionJsonObject);
                            json.put("children", childrenArray);
                        }
                    }
                }
                return json;
            }
        };
    }

    public ActionProvider listMenuTree() {
        return new ActionProvider() {
            @Override
            public String sql() {
                return "SELECT " +
                        " @all(sys_menu), " +
                        " menu_button.button_type_name buttonTypeList " +
                        " FROM " +
                        " sys_menu " +
                        " INNER JOIN ( " +
                        " SELECT " +
                        " sys_menu.id, " +
                        " GROUP_CONCAT( button_type.name order by button_type.order_no) button_type_name  " +
                        " FROM " +
                        " sys_menu " +
                        " LEFT JOIN sys_button ON sys_menu.id = sys_button.menu_id " +
                        " LEFT JOIN ( " +
                        " SELECT " +
                        " sys_dict_item.name name, " +
                        " sys_dict_item.value, " +
                        " sys_dict_item.order_no  " +
                        " FROM " +
                        " sys_dict " +
                        " INNER JOIN sys_dict_item ON sys_dict.id = sys_dict_item.dict_id  " +
                        " WHERE " +
                        " sys_dict.code = 'button_type'  " +
                        " ) button_type ON sys_button.type = button_type.value " +
                        " where @not( " +
                        " sys_menu.name like concat('%',@?(model.name),'%') " +
                        " ) " +
                        " GROUP BY " +
                        " sys_menu.id  " +
                        " ) menu_button ON sys_menu.id = menu_button.id " +
                        " order by sys_menu.parent_id,sys_menu.sort_no";
            }

            @Override
            public ResultSetHandler resultSetHandler() {
                return new TreeResultSetHandler();
            }
        };
    }
}
