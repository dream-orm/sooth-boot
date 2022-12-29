package com.moxa.sooth.dept.controller;


import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.dept.model.SysDeptModel;
import com.moxa.sooth.dept.service.ISysDeptService;
import com.moxa.sooth.dept.view.SysDept;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/sys/dept")
@Slf4j
public class SysDeptController extends BaseController<ISysDeptService, SysDept, SysDeptModel> {

    @GetMapping("listTree")
        public Result listTree(SysDeptModel deptModel){
        return Result.ok(service.listTree(deptModel));
        }
}
