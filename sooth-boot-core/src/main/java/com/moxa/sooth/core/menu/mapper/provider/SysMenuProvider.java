package com.moxa.sooth.core.menu.mapper.provider;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.StrUtil;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.moxa.dream.system.core.resultsethandler.ResultSetHandler;
import com.moxa.dream.system.provider.ActionProvider;
import com.moxa.dream.template.resulthandler.TreeResultSetHandler;
import com.moxa.sooth.core.base.constant.SymbolConstant;
import com.moxa.sooth.core.menu.view.SysMenuListView;

import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

public class SysMenuProvider {
    public ActionProvider getMenu() {
        return new ActionProvider() {
            @Override
            public String sql() {
                return "SELECT @all() " +
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
                    //一级菜单下的子菜单全部是隐藏路由，则一级菜单不显示
                    this.handleFirstLevelMenuHidden(menuArray);
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

                json.put("name", urlToRouteName(permission.getUrl()));

                JSONObject meta = new JSONObject();
                // 是否隐藏路由，默认都是显示的
                if (permission.isHidden()) {
                    json.put("hidden", true);
                    //vue3版本兼容代码
                    meta.put("hideMenu", true);
                }
                // 聚合路由
                if (permission.isAlwaysShow()) {
                    meta.put("affix", true);
                }
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

                if (permission.isHideTab()) {
                    meta.put("hideTab", true);
                }
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

            /**
             * 通过URL生成路由name（去掉URL前缀斜杠，替换内容中的斜杠‘/’为-） 举例： URL = /isystem/role RouteName =
             * isystem-role
             *
             * @return
             */
            private String urlToRouteName(String url) {
                if (StrUtil.isNotEmpty(url)) {
                    if (url.startsWith(SymbolConstant.SINGLE_SLASH)) {
                        url = url.substring(1);
                    }
                    url = url.replace("/", "-");
                    return url;
                } else {
                    return null;
                }
            }

            /**
             * 一级菜单的子菜单全部是隐藏路由，则一级菜单不显示
             *
             * @param jsonArray
             */
            private void handleFirstLevelMenuHidden(JSONArray jsonArray) {
                final String CHILDREN = "children";
                jsonArray.stream().map(obj -> {
                    JSONObject returnObj = new JSONObject();
                    JSONObject jsonObj = (JSONObject) obj;
                    if (jsonObj.containsKey(CHILDREN)) {
                        JSONArray childrens = jsonObj.getJSONArray(CHILDREN);
                        childrens = childrens.stream().filter(arrObj -> !"true".equals(((JSONObject) arrObj).getString("hidden"))).collect(Collectors.toCollection(JSONArray::new));
                        if (childrens == null || childrens.size() == 0) {
                            jsonObj.put("hidden", true);

                            //vue3版本兼容代码
                            JSONObject meta = new JSONObject();
                            meta.put("hideMenu", true);
                            jsonObj.put("meta", meta);
                        }
                    }
                    return returnObj;
                }).collect(Collectors.toCollection(JSONArray::new));
            }
        };
    }

    public ActionProvider  listMenuTree(){
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
                        " order by sys_dict_item.order_no " +
                        " ) button_type ON sys_button.type = button_type.value " +
                        " where @not( " +
                        " sys_menu.name like concat('%',@?(model.name),'%') " +
                        " ) " +
                        " GROUP BY " +
                        " sys_menu.id  " +
                        " ) menu_button ON sys_menu.id = menu_button.id "+
                        " order by sys_menu.parent_id,sys_menu.sort_no";
            }

            @Override
            public ResultSetHandler resultSetHandler() {
                return new TreeResultSetHandler();
            }
        };
    }
}
