package com.moxa.sooth.core.buttonPermission.controller;

import com.moxa.sooth.core.base.annotation.AutoLog;
import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.core.base.entity.LoginUser;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.core.base.util.ClientUtil;
import com.moxa.sooth.core.buttonPermission.model.SysButtonPermissionModel;
import com.moxa.sooth.core.buttonPermission.service.ISysButtonPermissionService;
import com.moxa.sooth.core.buttonPermission.table.SysButtonPermission;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Set;

@RestController
@RequestMapping("/sys/buttonPermission")
public class SysButtonPermissionController extends BaseController<ISysButtonPermissionService, SysButtonPermission, SysButtonPermissionModel> {
    public SysButtonPermissionController() {
        super("按钮权限");
    }

    @RequestMapping(value = "/getPermCode", method = RequestMethod.GET)
    public Result<?> getPermCode() {
        // 直接获取当前用户
        LoginUser loginUser = ClientUtil.getLoginUser();
        if (loginUser == null) {
            return Result.error("请登录系统！");
        }
        // 获取当前用户的权限集合
        Set<String> codeList = service.getPermCodes(loginUser.getId());
        return Result.ok(codeList);
    }

    @AutoLog("保存")
    @PostMapping(value = "saveButtonPermission/{roleId}")
    public Result saveButtonPermission(@PathVariable Long roleId, @RequestBody List<Long> buttonPermissionList) {
        service.saveButtonPermission(roleId, buttonPermissionList);
        return Result.ok(null, "保存成功");
    }
}
