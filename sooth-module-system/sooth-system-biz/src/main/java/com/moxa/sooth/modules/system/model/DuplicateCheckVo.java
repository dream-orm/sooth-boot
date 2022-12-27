package com.moxa.sooth.modules.system.model;

import lombok.Data;

import java.io.Serializable;

/**
 * @Title: DuplicateCheckVo
 * @Description: 重复校验VO
 * @Author 张代浩
 * @Date 2019-03-25
 * @Version V1.0
 */
@Data
public class DuplicateCheckVo implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * 表名
     */

    private String tableName;

    /**
     * 字段名
     */

    private String fieldName;

    /**
     * 字段值
     */

    private String fieldVal;

    /**
     * 数据ID
     */

    private String dataId;

}
