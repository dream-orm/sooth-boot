package com.moxa.sooth.core.user.controller;


import com.moxa.dream.system.config.Page;
import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.core.base.entity.PageModel;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.core.user.model.SysUserModel;
import com.moxa.sooth.core.user.model.SysUserPasswordModel;
import com.moxa.sooth.core.user.service.ISysUserService;
import com.moxa.sooth.core.user.view.SysUser;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;


@Slf4j
@RestController
@RequestMapping("/sys/user")
public class SysUserController extends BaseController<ISysUserService, SysUser, SysUserModel> {

    @RequestMapping(value = "/getUserByRoleId", method = RequestMethod.GET)
    public Result<Page<SysUser>> getUserByRoleId(@RequestParam String roleId, PageModel pageModel) {
        return Result.ok(service.getUserByRoleId(roleId, pageModel.toPage()));
    }

    @RequestMapping(value = "/updatePassword", method = RequestMethod.PUT)
    public Result<?> updatePassword(@RequestBody SysUserPasswordModel userPasswordModel) {
        if (retBool(service.updatePassword(userPasswordModel))) {
            return Result.ok("密码修改成功");
        } else {
            return Result.error("密码修改失败");
        }
    }
}
