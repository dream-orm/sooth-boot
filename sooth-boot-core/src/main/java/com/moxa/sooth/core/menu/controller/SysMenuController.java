package com.moxa.sooth.core.menu.controller;


import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.moxa.sooth.core.base.constant.CommonConstant;
import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.core.menu.model.SysMenuEditModel;
import com.moxa.sooth.core.menu.model.SysMenuTypeModel;
import com.moxa.sooth.core.menu.model.SysMenuModel;
import com.moxa.sooth.core.menu.model.SysRolePermissionModel;
import com.moxa.sooth.core.menu.service.ISysMenuService;
import com.moxa.sooth.core.menu.service.ISysRolePermissionService;
import com.moxa.sooth.core.menu.table.SysRolePermission;
import com.moxa.sooth.core.menu.view.SysMenu;
import com.moxa.sooth.core.user.view.SysUser;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@RestController
@RequestMapping("/sys/menu")
public class SysMenuController extends BaseController<ISysMenuService, SysMenu, SysMenuModel> {
    @Autowired
    private ISysRolePermissionService rolePermissionService;

    public SysMenuController() {
        super("权限管理");
    }

    /**
     * 加载数据节点
     *
     * @return
     */
    @RequestMapping(value = "/listTree", method = RequestMethod.GET)
    public Result<List<SysMenu>> list(SysMenuModel sysMenuModel) {
        List<SysMenu> treeList = service.selectTree(sysMenuModel);
        return Result.ok(treeList);
    }

    @GetMapping(value = "/getUserPermissionByToken")
    public Result<?> getUserPermissionByToken() {
        //直接获取当前用户不适用前端token
        SysUser sysUser = (SysUser) SecurityUtils.getSubject().getPrincipal();
        if (sysUser == null) {
            return Result.error("请登录系统！");
        }
        JSONArray menuArray = service.getMenu(sysUser.getUsername());
        JSONObject json = new JSONObject();
//        JSONArray authjsonArray = new JSONArray();
//        this.getAuthJsonArray(authjsonArray, menuArray);
//        //查询所有的权限
//        SysPermissionMenuTypeModel sysPermissionMenuTypeModel = new SysPermissionMenuTypeModel();
//        sysPermissionMenuTypeModel.setMenuType(CommonConstant.MENU_TYPE_2);
//        List<SysPermission> allAuthList = service.selectList(sysPermissionMenuTypeModel);
//        JSONArray allauthjsonArray = new JSONArray();
//        this.getAllAuthJsonArray(allauthjsonArray, allAuthList);
        //路由菜单
        json.put("menu", menuArray);
        //按钮权限（用户拥有的权限集合）
//        json.put("auth", authjsonArray);
        //全部权限配置集合（按钮权限，访问权限）
//        json.put("allAuth", allauthjsonArray);
        return Result.ok(json);
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
            List<SysMenu> metaList = service.selectAuths(sysUser.getUsername());
            // 按钮权限（用户拥有的权限集合）
            List<String> codeList = metaList.stream()
                    .filter((permission) -> CommonConstant.MENU_TYPE_2.equals(permission.getMenuType()) && CommonConstant.STATUS_1.equals(permission.getStatus()))
                    .collect(ArrayList::new, (list, permission) -> list.add(permission.getPerms()), ArrayList::addAll);
            //
            JSONArray authArray = new JSONArray();
            this.getAuthJsonArray(authArray, metaList);
            // 查询所有的权限
            SysMenuTypeModel sysMenuTypeModel = new SysMenuTypeModel();
            sysMenuTypeModel.setMenuType(CommonConstant.MENU_TYPE_2);
            List<SysMenu> allAuthList = service.selectList(sysMenuTypeModel);
            JSONArray allAuthArray = new JSONArray();
            this.getAllAuthJsonArray(allAuthArray, allAuthList);
            JSONObject result = new JSONObject();
            // 所拥有的权限编码
            result.put("codeList", codeList);
            //按钮权限（用户拥有的权限集合）
            result.put("auth", authArray);
            //全部权限配置集合（按钮权限，访问权限）
            result.put("allAuth", allAuthArray);
//            return Result.ok(result);
            return Result.ok(allAuthArray);
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
    public Result<List<Long>> queryRolePermission(@RequestParam(name = "roleId") Long roleId) {
        SysRolePermissionModel rolePermissionModel = new SysRolePermissionModel();
        rolePermissionModel.setRoleId(roleId);
        List<SysRolePermission> list = rolePermissionService.selectList(rolePermissionModel);
        return Result.ok(list.stream().map(sysRolePermission -> sysRolePermission.getPermissionId()).collect(Collectors.toList()));
    }

    @PostMapping("saveRolePermission")
    public Result saveRolePermission(@RequestBody SysMenuEditModel sysMenuEditModel) {
        service.saveRolePermission(sysMenuEditModel);
        return Result.ok(null, "角色授权成功");
    }


    /**
     * 获取权限JSON数组
     *
     * @param jsonArray
     * @param allList
     */
    private void getAllAuthJsonArray(JSONArray jsonArray, List<SysMenu> allList) {
        JSONObject json = null;
        for (SysMenu permission : allList) {
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
    private void getAuthJsonArray(JSONArray jsonArray, List<SysMenu> metaList) {
        for (SysMenu permission : metaList) {
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
}
