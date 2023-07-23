package com.moxa.sooth.module.base.dept.controller;


import com.moxa.sooth.module.base.core.controller.BaseController;
import com.moxa.sooth.module.base.core.entity.Result;
import com.moxa.sooth.module.base.dept.model.SysUserDeptModel;
import com.moxa.sooth.module.base.dept.service.ISysUserDeptService;
import com.moxa.sooth.module.base.dept.table.SysUserDept;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/sys/userDept")
@Slf4j
public class SysUserDeptController extends BaseController<ISysUserDeptService, SysUserDept, SysUserDeptModel> {
    public SysUserDeptController() {
        super("用户部门");
    }

    @RequestMapping(value = "/getDeptByUserId", method = RequestMethod.GET)
    public Result<List<SysUserDept>> getDeptByUserId(@RequestParam Long userId) {
        return Result.ok(service.getDeptByUserId(userId));
    }
}
