package com.moxa.sooth.code.datasource.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.code.datasource.service.ISysDataSourceService;
import com.moxa.sooth.code.datasource.util.DbUtil;
import com.moxa.sooth.code.datasource.view.SysDataSource;
import org.springframework.stereotype.Service;

/**
 * @Description: 多数据源管理
 * @Author: jeecg-boot
 * @Date: 2019-12-25
 * @Version: V1.0
 */
@Service
public class SysDataSourceServiceImpl extends ServiceImpl<SysDataSource, SysDataSource> implements ISysDataSourceService {

    @Override
    public boolean testConnection(SysDataSource sysDataSource) {
        DbUtil.getConnection(sysDataSource);
        return true;
    }
}
