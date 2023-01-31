package com.moxa.sooth.core.base.util;

import cn.hutool.core.util.StrUtil;
import com.moxa.sooth.core.base.exception.SoothBootException;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUtil {
    public static Connection getConnection(DataSource dataSource){
        if(dataSource!=null) {
            try {
                return dataSource.getConnection();
            }catch (Exception e){
                throw new SoothBootException("连接失败：" + e.getMessage());
            }
        }
        return null;
    }
    public static Connection getConnection(String url, String username, String password) {
        if (StrUtil.isEmpty(url)) {
            throw new SoothBootException("连接URL不能为空");
        }
        if (StrUtil.isEmpty(username)) {
            throw new SoothBootException("用户名不能为空");
        }
        if (StrUtil.isEmpty(password)) {
            throw new SoothBootException("密码不能为空");
        }
        try {
            return DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            throw new SoothBootException("连接失败：" + e.getMessage());
        }
    }

    public static void close(Connection connection) {
        if (connection != null) {
            try {
                if (!connection.isClosed()) {
                    connection.close();
                }
            } catch (SQLException e) {

            }
        }
    }
}
