package com.moxa.sooth.core.base.common.aspect.annotation;

import java.lang.annotation.*;


@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.TYPE, ElementType.METHOD})
@Documented
public @interface OnlineAuth {

    /**
     * 请求关键字，在xxx/code之前的字符串
     *
     * @return
     */
    String value();
}
