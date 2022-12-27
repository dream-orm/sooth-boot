package com.moxa.sooth.core.base.common.aspect.annotation;

import java.lang.annotation.*;


@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface Module {
    /**
     * 模块名称
     *
     * @return
     */
    String value();

}
