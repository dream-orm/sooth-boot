package com.moxa.sooth.core.log.annotation;

import java.lang.annotation.*;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface AutoLog {

    /**
     * 操作描述
     *
     * @return
     */
    String value() default "";
}
