package com.moxa.sooth.core.base.common.aspect.annotation;

import java.lang.annotation.*;


@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface AutoDict {

    /**
     * 暂时无用
     *
     * @return
     */
    String value() default "";

}
