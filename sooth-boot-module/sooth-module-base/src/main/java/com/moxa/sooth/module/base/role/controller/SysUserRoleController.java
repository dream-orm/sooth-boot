package com.moxa.sooth.module.base.role.controller;


import com.moxa.dream.system.config.Page;
import com.moxa.sooth.module.base.core.controller.BaseController;
import com.moxa.sooth.module.base.core.entity.PageModel;
import com.moxa.sooth.module.base.core.entity.Result;
import com.moxa.sooth.module.base.role.model.SysUserRoleGroupByRoleIdModel;
import com.moxa.sooth.module.base.role.model.SysUserRoleModel;
import com.moxa.sooth.module.base.role.service.ISysUserRoleService;
import com.moxa.sooth.module.base.role.table.SysUserRole;
import com.moxa.sooth.module.base.role.view.SysUserRoleView;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/sys/userRole")
public class SysUserRoleController extends BaseController<ISysUserRoleService, SysUserRole, SysUserRoleModel> {
    public SysUserRoleController() {
        super("用户角色");
    }

    @PostMapping("saveUserRole")
    public Result saveUserRole(@RequestBody SysUserRoleModel userRoleModel) {
        service.saveUserRole(userRoleModel);
        return Result.ok("添加成功");
    }

    @RequestMapping(value = "/getUserByRoleId", method = RequestMethod.GET)
    public Result<Page<SysUserRoleView>> getUserByRoleId(SysUserRoleGroupByRoleIdModel userRoleGroupByRoleIdModel, PageModel pageModel) {
        return Result.ok(service.getUserByRoleId(userRoleGroupByRoleIdModel, pageModel.toPage()));
    }

    @RequestMapping(value = "/getRoleByUserId", method = RequestMethod.GET)
    public Result<List<SysUserRole>> getRoleByUserId(@RequestParam Long userId) {
        return Result.ok(service.getRoleByUserId(userId));
    }
}
