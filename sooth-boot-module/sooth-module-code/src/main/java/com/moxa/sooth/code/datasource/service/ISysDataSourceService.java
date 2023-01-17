package com.moxa.sooth.code.datasource.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.code.datasource.view.SysDataSource;
import com.moxa.sooth.code.datasource.view.SysDataSourceListView;

import java.util.List;

public interface ISysDataSourceService extends IService<SysDataSource, SysDataSource> {

    boolean testConnection(SysDataSource sysDataSource);

    List<SysDataSourceListView> listLabel();
}
