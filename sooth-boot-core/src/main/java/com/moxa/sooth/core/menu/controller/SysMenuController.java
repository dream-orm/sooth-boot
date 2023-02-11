package com.moxa.sooth.core.menu.controller;


import com.alibaba.fastjson.JSONArray;
import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.core.base.entity.LoginUser;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.core.base.util.ClientUtil;
import com.moxa.sooth.core.menu.model.SysMenuEditModel;
import com.moxa.sooth.core.menu.model.SysMenuModel;
import com.moxa.sooth.core.menu.model.SysRolePermissionModel;
import com.moxa.sooth.core.menu.service.ISysMenuService;
import com.moxa.sooth.core.menu.service.ISysRolePermissionService;
import com.moxa.sooth.core.menu.table.SysRolePermission;
import com.moxa.sooth.core.menu.view.SysMenu;
import com.moxa.sooth.core.menu.view.SysMenuListView;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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
    @RequestMapping(value = "/listMenuTree", method = RequestMethod.GET)
    public Result<List<SysMenuListView>> listMenuTree(SysMenuModel sysMenuModel) {
        List<SysMenuListView> treeList = service.listMenuTree(sysMenuModel);
        return Result.ok(treeList);
    }

    @GetMapping(value = "/getUserPermissionByToken")
    public Result<?> getUserPermissionByToken() {
        //直接获取当前用户不适用前端token
        LoginUser loginUser = ClientUtil.getLoginUser();
        if (loginUser == null) {
            return Result.error("请登录系统！");
        }
        JSONArray menuArray = service.getMenu(loginUser.getId());
        return Result.ok(menuArray);
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
}
