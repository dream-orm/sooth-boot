package com.moxa.sooth.core.base.common.aspect.annotation;

import java.lang.annotation.*;


@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.TYPE, ElementType.METHOD})
@Documented
public @interface PermissionData {
    /**
     * 暂时没用
     *
     * @return
     */
    String value() default "";


    /**
     * 配置菜单的组件路径,用于数据权限
     */
    String pageComponent() default "";
}
