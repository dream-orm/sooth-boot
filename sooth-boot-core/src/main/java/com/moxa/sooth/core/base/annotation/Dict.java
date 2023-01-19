package com.moxa.sooth.core.base.annotation;

import com.moxa.dream.template.annotation.Fetch;
import com.moxa.sooth.core.base.dream.fetch.DictFetcher;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Fetch(DictFetcher.class)
@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
public @interface Dict {

    String code();


    String name() default "";


    String table() default "";
}
