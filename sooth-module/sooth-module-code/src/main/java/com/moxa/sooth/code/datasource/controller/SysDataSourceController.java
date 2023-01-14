package com.moxa.sooth.code.datasource.controller;


import com.moxa.sooth.code.datasource.model.SysDataSourceModel;
import com.moxa.sooth.code.datasource.service.ISysDataSourceService;
import com.moxa.sooth.code.datasource.view.SysDataSource;
import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.core.base.entity.Result;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/sys/dataSource")
public class SysDataSourceController extends BaseController<ISysDataSourceService, SysDataSource, SysDataSourceModel> {

    @RequestMapping(value = "/testConnection", method = RequestMethod.POST)
    public Result<?> testConnection(@RequestBody SysDataSource sysDataSource) {
        if(service.testConnection(sysDataSource)) {
            return Result.ok(null,"连接成功");
        }else{
            return Result.error("连接失败");
        }
    }
    @RequestMapping(value = "/listLabel", method = RequestMethod.GET)
    public Result<?> listLabel() {
        return Result.ok(service.listLabel());
    }
}
