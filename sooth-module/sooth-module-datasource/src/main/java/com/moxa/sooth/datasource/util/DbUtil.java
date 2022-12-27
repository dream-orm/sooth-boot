package com.moxa.sooth.datasource.util;

import com.moxa.sooth.core.base.common.exception.SoothBootException;
import com.moxa.sooth.datasource.view.SysDataSource;
import cn.hutool.core.util.StrUtil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUtil {
    public static Connection getConnection(SysDataSource sysDataSource) {
        String dbUsername = sysDataSource.getDbUsername();
        String dbPassword = sysDataSource.getDbPassword();
        String dbUrl = sysDataSource.getDbUrl();
        if (StrUtil.isEmpty(dbUrl)) {
            throw new SoothBootException("连接URL不能为空");
        }
        if (StrUtil.isEmpty(dbUsername)) {
            throw new SoothBootException("用户名不能为空");
        }
        if (StrUtil.isEmpty(dbPassword)) {
            throw new SoothBootException("密码不能为空");
        }
        try {
            return DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        } catch (SQLException e) {
            throw new SoothBootException(e.getMessage(), e);
        }
    }

    public static void close(Connection connection) {
        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
            }
        } catch (Exception e) {

        }
    }
}
