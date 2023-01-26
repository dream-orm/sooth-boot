package com.moxa.sooth.core.menu.mapper.provider;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.crypto.digest.MD5;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.moxa.dream.system.core.resultsethandler.ResultSetHandler;
import com.moxa.dream.system.provider.ActionProvider;
import com.moxa.dream.template.resulthandler.TreeResultSetHandler;
import com.moxa.sooth.core.base.constant.CommonConstant;
import com.moxa.sooth.core.base.constant.SymbolConstant;
import com.moxa.sooth.core.menu.view.SysMenu;

import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

public class SysMenuProvider {
    public String selectAuths() {
        return "SELECT @all(sys_menu)\n" +
                " FROM sys_menu p\n" +
                " WHERE exists(\n" +
                " select a.id from sys_role_permission a\n" +
                " inner join sys_role b on a.role_id = b.id\n" +
                " inner join sys_user_role c on c.role_id = b.id\n" +
                " inner join sys_user d on d.id = c.user_id\n" +
                " where p.menu_type=2 and p.id = a.permission_id AND d.id = @?(userId)\n" +
                " )order by sort_no ASC";
    }

    public ActionProvider getMenu() {
        return new ActionProvider() {
            @Override
            public String sql() {
                return "SELECT @all(sys_menu)\n" +
                        " FROM sys_menu p\n" +
                        " WHERE exists(\n" +
                        " select a.id from sys_role_permission a\n" +
                        " inner join sys_role b on a.role_id = b.id\n" +
                        " inner join sys_user_role c on c.role_id = b.id\n" +
                        " inner join sys_user d on d.id = c.user_id\n" +
                        " where p.id = a.permission_id AND d.id = @?(userId)\n" +
                        " and (p.menu_type=0 or p.menu_type=1)" +
                        " )order by sort_no ASC";
            }

            @Override
            public Class<? extends Collection> rowType() {
                return List.class;
            }

            @Override
            public Class<?> colType() {
                return SysMenu.class;
            }

            @Override
            public ResultSetHandler resultSetHandler() {
                ResultSetHandler resultSetHandler = new TreeResultSetHandler();
                return (resultSet, mappedStatement, session) -> {
                    List<SysMenu> permissionList = (List<SysMenu>) resultSetHandler.result(resultSet, mappedStatement, session);
                    JSONArray menuArray = new JSONArray();
                    for (SysMenu permission : permissionList) {
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
            private JSONObject getPermissionJsonObject(SysMenu permission) {
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
                List<SysMenu> children = permission.getChildren();
                if (CollUtil.isNotEmpty(children)) {
                    for (SysMenu childPermission : children) {
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

                    // 特殊标记
                    url = url.replace(":", "@");
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
}
