package com.moxa.sooth.code.datasource.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.code.datasource.service.ISysDataSourceService;
import com.moxa.sooth.code.datasource.util.DbUtil;
import com.moxa.sooth.code.datasource.view.SysDataSource;
import com.moxa.sooth.code.datasource.view.SysDataSourceListView;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysDataSourceServiceImpl extends ServiceImpl<SysDataSource, SysDataSource> implements ISysDataSourceService {

    @Override
    public boolean testConnection(SysDataSource sysDataSource) {
        DbUtil.getConnection(sysDataSource);
        return true;
    }

    @Override
    public List<SysDataSourceListView> listLabel() {
        return templateMapper.selectList(SysDataSourceListView.class, null);
    }
}
