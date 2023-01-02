package com.moxa.sooth.core.role.controller;


import com.moxa.dream.system.config.Page;
import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.core.base.entity.PageModel;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.core.role.model.SysUserRoleModel;
import com.moxa.sooth.core.role.service.ISysUserRoleService;
import com.moxa.sooth.core.role.table.SysUserRole;
import com.moxa.sooth.core.role.view.SysUserRoleView;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

@Slf4j
@RestController
@RequestMapping("/sys/userRole")
public class SysUserRoleController extends BaseController<ISysUserRoleService, SysUserRole, SysUserRoleModel> {
    @PostMapping("saveUserRole")
    public Result saveUserRole(@RequestBody SysUserRoleModel userRoleModel) {
        service.saveUserRole(userRoleModel);
        return Result.ok("添加成功");
    }

    @RequestMapping(value = "/getUserByRoleId", method = RequestMethod.GET)
    public Result<Page<SysUserRoleView>> getUserByRoleId(@RequestParam String roleId, PageModel pageModel) {
        return Result.ok(service.getUserByRoleId(roleId, pageModel.toPage()));
    }
}