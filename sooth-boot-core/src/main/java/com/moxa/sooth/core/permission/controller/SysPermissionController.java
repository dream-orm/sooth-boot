package com.moxa.sooth.core.permission.controller;


import cn.hutool.core.util.StrUtil;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.moxa.sooth.common.util.Md5Util;
import com.moxa.sooth.core.base.common.constant.CommonConstant;
import com.moxa.sooth.core.base.common.constant.SymbolConstant;
import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.core.base.util.ConvertUtils;
import com.moxa.sooth.core.permission.model.SysPermissionMenuTypeModel;
import com.moxa.sooth.core.permission.model.SysPermissionModel;
import com.moxa.sooth.core.permission.model.SysRolePermissionModel;
import com.moxa.sooth.core.permission.service.ISysPermissionService;
import com.moxa.sooth.core.permission.service.ISysRolePermissionService;
import com.moxa.sooth.core.permission.table.SysRolePermission;
import com.moxa.sooth.core.permission.view.SysPermission;
import com.moxa.sooth.core.user.view.SysUser;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@RestController
@RequestMapping("/sys/permission")
public class SysPermissionController extends BaseController<ISysPermissionService, SysPermission, SysPermissionModel> {
    /**
     * 子菜单
     */
    private static final String CHILDREN = "children";
    @Autowired
    private ISysRolePermissionService rolePermissionService;

    /**
     * 加载数据节点
     *
     * @return
     */
    @RequestMapping(value = "/listTree", method = RequestMethod.GET)
    public Result<List<SysPermission>> list(SysPermissionModel sysPermissionModel, HttpServletRequest req) {
        long start = System.currentTimeMillis();
        Result<List<SysPermission>> result = new Result<>();
        try {
            List<SysPermission> treeList = service.selectTree(sysPermissionModel);
            result.setResult(treeList);
            result.setSuccess(true);
            log.info("======获取全部菜单数据=====耗时:" + (System.currentTimeMillis() - start) + "毫秒");
        } catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return result;
    }

    @GetMapping(value = "/getUserPermissionByToken")
    //@DynamicTable(value = DynamicTableConstant.SYS_ROLE_INDEX)
    public Result<?> getUserPermissionByToken(HttpServletRequest request) {
        Result<JSONObject> result = new Result<JSONObject>();
        try {
            //直接获取当前用户不适用前端token
            SysUser sysUser = (SysUser) SecurityUtils.getSubject().getPrincipal();
            if (sysUser == null) {
                return Result.error("请登录系统！");
            }
            List<SysPermission> metaList = service.selectAuths(sysUser.getUsername());

            JSONObject json = new JSONObject();
            JSONArray menujsonArray = new JSONArray();
            this.getPermissionJsonArray(menujsonArray, metaList, null);
            //一级菜单下的子菜单全部是隐藏路由，则一级菜单不显示
            this.handleFirstLevelMenuHidden(menujsonArray);

            JSONArray authjsonArray = new JSONArray();
            this.getAuthJsonArray(authjsonArray, metaList);
            //查询所有的权限
            SysPermissionMenuTypeModel sysPermissionMenuTypeModel = new SysPermissionMenuTypeModel();
            sysPermissionMenuTypeModel.setMenuType(CommonConstant.MENU_TYPE_2);
            List<SysPermission> allAuthList = service.selectList(sysPermissionMenuTypeModel);
            JSONArray allauthjsonArray = new JSONArray();
            this.getAllAuthJsonArray(allauthjsonArray, allAuthList);
            //路由菜单
            json.put("menu", menujsonArray);
            //按钮权限（用户拥有的权限集合）
            json.put("auth", authjsonArray);
            //全部权限配置集合（按钮权限，访问权限）
            json.put("allAuth", allauthjsonArray);
            result.setResult(json);
        } catch (Exception e) {
            result.error500("查询失败:" + e.getMessage());
            log.error(e.getMessage(), e);
        }
        return result;
    }

    /**
     * 【vue3专用】获取
     * 1、查询用户拥有的按钮/表单访问权限
     * 2、所有权限 (菜单权限配置)
     * 3、系统安全模式 (开启则online报表的数据源必填)
     */
    @RequestMapping(value = "/getPermCode", method = RequestMethod.GET)
    public Result<?> getPermCode() {
        try {
            // 直接获取当前用户
            SysUser sysUser = (SysUser) SecurityUtils.getSubject().getPrincipal();
            if (sysUser == null) {
                return Result.error("请登录系统！");
            }
            // 获取当前用户的权限集合
            List<SysPermission> metaList = service.selectAuths(sysUser.getUsername());
            // 按钮权限（用户拥有的权限集合）
            List<String> codeList = metaList.stream()
                    .filter((permission) -> CommonConstant.MENU_TYPE_2.equals(permission.getMenuType()) && CommonConstant.STATUS_1.equals(permission.getStatus()))
                    .collect(ArrayList::new, (list, permission) -> list.add(permission.getPerms()), ArrayList::addAll);
            //
            JSONArray authArray = new JSONArray();
            this.getAuthJsonArray(authArray, metaList);
            // 查询所有的权限
            SysPermissionMenuTypeModel sysPermissionMenuTypeModel = new SysPermissionMenuTypeModel();
            sysPermissionMenuTypeModel.setMenuType(CommonConstant.MENU_TYPE_2);
            List<SysPermission> allAuthList = service.selectList(sysPermissionMenuTypeModel);
            JSONArray allAuthArray = new JSONArray();
            this.getAllAuthJsonArray(allAuthArray, allAuthList);
            JSONObject result = new JSONObject();
            // 所拥有的权限编码
            result.put("codeList", codeList);
            //按钮权限（用户拥有的权限集合）
            result.put("auth", authArray);
            //全部权限配置集合（按钮权限，访问权限）
            result.put("allAuth", allAuthArray);
            return Result.OK(result);
        } catch (Exception e) {
            log.error(e.getMessage(), e);
            return Result.error("查询失败:" + e.getMessage());
        }
    }

    /**
     * 查询角色授权
     *
     * @return
     */
    @RequestMapping(value = "/queryRolePermission", method = RequestMethod.GET)
    public Result<List<String>> queryRolePermission(@RequestParam(name = "roleId") String roleId) {
        SysRolePermissionModel rolePermissionModel = new SysRolePermissionModel();
        rolePermissionModel.setRoleId(roleId);
        List<SysRolePermission> list = rolePermissionService.selectList(rolePermissionModel);
        return Result.ok(list.stream().map(sysRolePermission -> String.valueOf(sysRolePermission.getPermissionId())).collect(Collectors.toList()));
    }

    /**
     * 一级菜单的子菜单全部是隐藏路由，则一级菜单不显示
     *
     * @param jsonArray
     */
    private void handleFirstLevelMenuHidden(JSONArray jsonArray) {
        jsonArray = jsonArray.stream().map(obj -> {
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


    /**
     * 获取权限JSON数组
     *
     * @param jsonArray
     * @param allList
     */
    private void getAllAuthJsonArray(JSONArray jsonArray, List<SysPermission> allList) {
        JSONObject json = null;
        for (SysPermission permission : allList) {
            json = new JSONObject();
            json.put("action", permission.getPerms());
            json.put("status", permission.getStatus());
            //1显示2禁用
            json.put("type", permission.getPermsType());
            json.put("describe", permission.getName());
            jsonArray.add(json);
        }
    }

    /**
     * 获取权限JSON数组
     *
     * @param jsonArray
     * @param metaList
     */
    private void getAuthJsonArray(JSONArray jsonArray, List<SysPermission> metaList) {
        for (SysPermission permission : metaList) {
            if (permission.getMenuType() == null) {
                continue;
            }
            JSONObject json = null;
            if (permission.getMenuType().equals(CommonConstant.MENU_TYPE_2) && CommonConstant.STATUS_1.equals(permission.getStatus())) {
                json = new JSONObject();
                json.put("action", permission.getPerms());
                json.put("type", permission.getPermsType());
                json.put("describe", permission.getName());
                jsonArray.add(json);
            }
        }
    }

    /**
     * 获取菜单JSON数组
     *
     * @param jsonArray
     * @param metaList
     * @param parentJson
     */
    private void getPermissionJsonArray(JSONArray jsonArray, List<SysPermission> metaList, JSONObject parentJson) {
        for (SysPermission permission : metaList) {
            if (permission.getMenuType() == null) {
                continue;
            }
            String tempPid = permission.getParentId();
            JSONObject json = getPermissionJsonObject(permission);
            if (json == null) {
                continue;
            }
            if (parentJson == null && StrUtil.isEmpty(tempPid)) {
                jsonArray.add(json);
                if (!permission.isLeaf()) {
                    getPermissionJsonArray(jsonArray, metaList, json);
                }
            } else if (parentJson != null && StrUtil.isNotEmpty(tempPid) && tempPid.equals(parentJson.getString("id"))) {
                // 类型( 0：一级菜单 1：子菜单 2：按钮 )
                if (permission.getMenuType().equals(CommonConstant.MENU_TYPE_2)) {
                    JSONObject metaJson = parentJson.getJSONObject("meta");
                    if (metaJson.containsKey("permissionList")) {
                        metaJson.getJSONArray("permissionList").add(json);
                    } else {
                        JSONArray permissionList = new JSONArray();
                        permissionList.add(json);
                        metaJson.put("permissionList", permissionList);
                    }
                    // 类型( 0：一级菜单 1：子菜单 2：按钮 )
                } else if (permission.getMenuType().equals(CommonConstant.MENU_TYPE_1) || permission.getMenuType().equals(CommonConstant.MENU_TYPE_0)) {
                    if (parentJson.containsKey("children")) {
                        parentJson.getJSONArray("children").add(json);
                    } else {
                        JSONArray children = new JSONArray();
                        children.add(json);
                        parentJson.put("children", children);
                    }

                    if (!permission.isLeaf()) {
                        getPermissionJsonArray(jsonArray, metaList, json);
                    }
                }
            }

        }
    }

    /**
     * 根据菜单配置生成路由json
     *
     * @param permission
     * @return
     */
    private JSONObject getPermissionJsonObject(SysPermission permission) {
        JSONObject json = new JSONObject();
        // 类型(0：一级菜单 1：子菜单 2：按钮)
        if (permission.getMenuType().equals(CommonConstant.MENU_TYPE_2)) {
            //json.put("action", permission.getPerms());
            //json.put("type", permission.getPermsType());
            //json.put("describe", permission.getName());
            return null;
        } else if (permission.getMenuType().equals(CommonConstant.MENU_TYPE_0) || permission.getMenuType().equals(CommonConstant.MENU_TYPE_1)) {
            json.put("id", permission.getId());
            if (permission.isRoute()) {
                //表示生成路由
                json.put("route", "1");
            } else {
                //表示不生成路由
                json.put("route", "0");
            }

            if (isWwwHttpUrl(permission.getUrl())) {
                json.put("path", Md5Util.md5Encode(permission.getUrl(), "utf-8"));
            } else {
                json.put("path", permission.getUrl());
            }

            // 重要规则：路由name (通过URL生成路由name,路由name供前端开发，页面跳转使用)
            if (StrUtil.isNotEmpty(permission.getComponentName())) {
                json.put("name", permission.getComponentName());
            } else {
                json.put("name", urlToRouteName(permission.getUrl()));
            }

            JSONObject meta = new JSONObject();
            // 是否隐藏路由，默认都是显示的
            if (permission.isHidden()) {
                json.put("hidden", true);
                //vue3版本兼容代码
                meta.put("hideMenu", true);
            }
            // 聚合路由
            if (permission.isAlwaysShow()) {
                json.put("alwaysShow", true);
            }
            json.put("component", permission.getComponent());
            // 由用户设置是否缓存页面 用布尔值
            if (permission.isKeepAlive()) {
                meta.put("keepAlive", true);
            } else {
                meta.put("keepAlive", false);
            }

            /*update_begin author:wuxianquan date:20190908 for:往菜单信息里添加外链菜单打开方式 */
            //外链菜单打开方式
            if (permission.isInternalOrExternal()) {
                meta.put("internalOrExternal", true);
            } else {
                meta.put("internalOrExternal", false);
            }
            /* update_end author:wuxianquan date:20190908 for: 往菜单信息里添加外链菜单打开方式*/

            meta.put("title", permission.getName());

            //update-begin--Author:scott  Date:20201015 for：路由缓存问题，关闭了tab页时再打开就不刷新 #842
            String component = permission.getComponent();
            if (StrUtil.isNotEmpty(permission.getComponentName()) || StrUtil.isNotEmpty(component)) {
                meta.put("componentName", ConvertUtils.getString(permission.getComponentName(), component.substring(component.lastIndexOf("/") + 1)));
            }
            //update-end--Author:scott  Date:20201015 for：路由缓存问题，关闭了tab页时再打开就不刷新 #842

            if (StrUtil.isEmpty(permission.getParentId())) {
                // 一级菜单跳转地址
                json.put("redirect", permission.getRedirect());
                if (StrUtil.isNotEmpty(permission.getIcon())) {
                    meta.put("icon", permission.getIcon());
                }
            } else {
                if (StrUtil.isNotEmpty(permission.getIcon())) {
                    meta.put("icon", permission.getIcon());
                }
            }
            if (isWwwHttpUrl(permission.getUrl())) {
                meta.put("url", permission.getUrl());
            }
            // update-begin--Author:sunjianlei  Date:20210918 for：新增适配vue3项目的隐藏tab功能
            if (permission.isHideTab()) {
                meta.put("hideTab", true);
            }
            // update-end--Author:sunjianlei  Date:20210918 for：新增适配vue3项目的隐藏tab功能
            json.put("meta", meta);
        }

        return json;
    }

    /**
     * 判断是否外网URL 例如： http://localhost:8080/jeecg-boot/swagger-ui.html#/ 支持特殊格式： {{
     * window._CONFIG['domianURL'] }}/druid/ {{ JS代码片段 }}，前台解析会自动执行JS代码片段
     *
     * @return
     */
    private boolean isWwwHttpUrl(String url) {
        boolean flag = url != null && (url.startsWith(CommonConstant.HTTP_PROTOCOL) || url.startsWith(CommonConstant.HTTPS_PROTOCOL) || url.startsWith(SymbolConstant.DOUBLE_LEFT_CURLY_BRACKET));
        if (flag) {
            return true;
        }
        return false;
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
}
