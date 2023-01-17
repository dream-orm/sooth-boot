package com.moxa.sooth.code.datasource.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.code.datasource.table.$SysDataSource;
import com.moxa.sooth.core.base.entity.BaseDict;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

@Data
@View($SysDataSource.class)
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class SysDataSourceListView extends BaseDict {
    private String id;
    private String name;
}
