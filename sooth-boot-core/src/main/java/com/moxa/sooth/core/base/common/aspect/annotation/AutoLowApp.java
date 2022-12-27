package com.moxa.sooth.core.base.common.aspect.annotation;

import com.moxa.sooth.core.base.common.constant.enums.LowAppAopEnum;

import java.lang.annotation.*;


@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface AutoLowApp {

    /**
     * 切面类型（add、delete、db_import等其他操作）
     *
     * @return
     */
    LowAppAopEnum action();

    /**
     * 业务类型（cgform等）
     *
     * @return
     */
    String bizType();

}
