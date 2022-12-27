package com.moxa.sooth.core.base.common.aspect.annotation;

import java.lang.annotation.*;


@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface DynamicTable {
    /**
     * 需要动态解析的表名
     *
     * @return
     */
    String value();
}
