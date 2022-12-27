package com.moxa.sooth.datasource.controller;


import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.core.base.common.aspect.annotation.Module;
import com.moxa.sooth.datasource.model.SysDataSourceModel;
import com.moxa.sooth.datasource.service.ISysDataSourceService;
import com.moxa.sooth.datasource.view.SysDataSource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@Module("多数据源管理")
@RestController
@RequestMapping("/sys/dataSource")
public class SysDataSourceController extends BaseController<ISysDataSourceService, SysDataSource, SysDataSourceModel> {
    @RequestMapping(value = "/testConnection", method = RequestMethod.POST)
    public Result<?> testConnection(@RequestBody SysDataSource sysDataSource) {
        return Result.ok(service.testConnection(sysDataSource));
    }
}
