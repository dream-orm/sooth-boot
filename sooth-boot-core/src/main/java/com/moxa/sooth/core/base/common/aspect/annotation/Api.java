package com.moxa.sooth.core.base.common.aspect.annotation;

import java.lang.annotation.*;

@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface Api {
    String tags();
}
