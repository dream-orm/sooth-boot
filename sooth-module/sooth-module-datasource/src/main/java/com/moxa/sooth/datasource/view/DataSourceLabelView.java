package com.moxa.sooth.datasource.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.core.base.entity.BaseDict;
import com.moxa.sooth.datasource.table.$SysDataSource;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * @Description: 多数据源管理
 * @Author: jeecg-boot
 * @Date: 2019-12-25
 * @Version: V1.0
 */
@Data
@View($SysDataSource.class)
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class DataSourceLabelView extends BaseDict {
    private String id;
    private String name;
}
