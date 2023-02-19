package com.moxa.sooth.module.code.datasource.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.module.base.core.util.DbUtil;
import com.moxa.sooth.module.code.datasource.service.ISysDataSourceService;
import com.moxa.sooth.module.code.datasource.view.SysDataSource;
import com.moxa.sooth.module.code.datasource.view.SysDataSourceListView;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysDataSourceServiceImpl extends ServiceImpl<SysDataSource, SysDataSource> implements ISysDataSourceService {

    @Override
    public boolean testConnection(SysDataSource sysDataSource) {
        DbUtil.getConnection(sysDataSource.getUrl(), sysDataSource.getUsername(), sysDataSource.getPassword());
        return true;
    }

    @Override
    public List<SysDataSourceListView> listLabel() {
        return templateMapper.selectList(SysDataSourceListView.class, null);
    }
}
