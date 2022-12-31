package com.moxa.sooth.datasource.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.datasource.service.ISysDataSourceService;
import com.moxa.sooth.datasource.util.DbUtil;
import com.moxa.sooth.datasource.view.DataSourceLabelView;
import com.moxa.sooth.datasource.view.SysDataSource;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description: 多数据源管理
 * @Author: jeecg-boot
 * @Date: 2019-12-25
 * @Version: V1.0
 */
@Service
public class SysDataSourceServiceImpl extends ServiceImpl<SysDataSource,SysDataSource> implements ISysDataSourceService {

    @Override
    public boolean testConnection(SysDataSource sysDataSource) {
        DbUtil.getConnection(sysDataSource);
        return true;
    }
}