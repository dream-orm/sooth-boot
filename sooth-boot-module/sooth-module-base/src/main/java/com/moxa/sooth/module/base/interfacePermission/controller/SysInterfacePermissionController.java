package com.moxa.sooth.module.base.interfacePermission.controller;

import com.moxa.sooth.module.base.core.annotation.AutoLog;
import com.moxa.sooth.module.base.core.controller.ModuleController;
import com.moxa.sooth.module.base.core.entity.Result;
import com.moxa.sooth.module.base.interfacePermission.service.ISysInterfacePermissionService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/sys/interfacePermission")
@Slf4j
public class SysInterfacePermissionController implements ModuleController {
    @Autowired
    private ISysInterfacePermissionService interfacePermissionService;

    @RequestMapping("/listInterfacePermissionTree")
    public Result listInterfacePermissionTree() {
        return Result.ok(interfacePermissionService.listInterfacePermissionTree());
    }

    @RequestMapping("/getPermissions")
    public Result getPermissions(Long roleId) {
        return Result.ok(interfacePermissionService.getPermissions(roleId));
    }

    @AutoLog("保存")
    @PostMapping(value = "saveInterfacePermission/{roleId}")
    public Result saveInterfacePermission(@PathVariable Long roleId, @RequestBody List<String> interfacePermissionList) {
        interfacePermissionService.saveInterfacePermission(roleId, interfacePermissionList);
        return Result.ok(null, "保存成功");
    }

    @Override
    public String getBizModule() {
        return "接口权限";
    }
}
