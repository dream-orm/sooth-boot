package com.moxa.sooth.code.datasource.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.code.datasource.view.SysDataSource;

/**
 * @Description: 多数据源管理
 * @Author: jeecg-boot
 * @Date: 2019-12-25
 * @Version: V1.0
 */
public interface ISysDataSourceService extends IService<SysDataSource, SysDataSource> {

    boolean testConnection(SysDataSource sysDataSource);
}
