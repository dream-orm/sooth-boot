package com.moxa.sooth.module.code.datasource.view;

import com.moxa.dream.system.annotation.Extract;
import com.moxa.dream.system.annotation.View;
import com.moxa.dream.template.annotation.Wrap;
import com.moxa.sooth.module.base.core.dream.extract.PasswordExtractor;
import com.moxa.sooth.module.base.core.dream.wrap.PasswordWrapper;
import com.moxa.sooth.module.base.core.entity.BaseEntity;
import com.moxa.sooth.module.code.datasource.table.$SysDataSource;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;


@Data
@View($SysDataSource.class)
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class SysDataSource extends BaseEntity {
    /**
     * id
     */
    private Long id;
    /**
     * 数据源名称
     */
    private String name;
    /**
     * 描述
     */
    private String description;

    /**
     * 数据源地址
     */
    private String url;
    /**
     * 用户名
     */
    private String username;
    /**
     * 密码
     */
    @Extract(PasswordExtractor.class)
    @Wrap(PasswordWrapper.class)
    private String password;

}
