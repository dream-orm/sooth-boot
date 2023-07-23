package com.moxa.sooth.module.code.datasource.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.module.base.core.entity.BaseDict;
import com.moxa.sooth.module.code.datasource.table.$SysDataSource;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

@Data
@View($SysDataSource.class)
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class SysDataSourceListView extends BaseDict {
    private Long id;
    private String name;
}
