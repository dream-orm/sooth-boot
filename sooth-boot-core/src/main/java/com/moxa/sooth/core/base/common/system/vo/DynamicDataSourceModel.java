package com.moxa.sooth.core.base.common.system.vo;

import lombok.Data;
import org.springframework.beans.BeanUtils;

/**
 * @Description: 数据源
 * @author: jeecg-boot
 */
@Data
public class DynamicDataSourceModel {

    /**
     * id
     */
    private java.lang.String id;
    /**
     * 数据源编码
     */
    private java.lang.String code;
    /**
     * 数据库类型
     */
    private java.lang.String dbType;
    /**
     * 驱动类
     */
    private java.lang.String dbDriver;
    /**
     * 数据源地址
     */
    private java.lang.String dbUrl;
    /**
     * 用户名
     */
    private java.lang.String dbUsername;
    /**
     * 密码
     */
    private java.lang.String dbPassword;

//    /**
//     * 数据库名称
//     */
//    private java.lang.String dbName;

    public DynamicDataSourceModel() {

    }

    public DynamicDataSourceModel(Object dbSource) {
        if (dbSource != null) {
            BeanUtils.copyProperties(dbSource, this);
        }
    }

}
