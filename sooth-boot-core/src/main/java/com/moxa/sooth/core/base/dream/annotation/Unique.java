package com.moxa.sooth.core.base.dream.annotation;

import com.moxa.dream.template.annotation.Validated;
import com.moxa.sooth.core.base.dream.vaalidate.UniqueValidator;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Validated(UniqueValidator.class)
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.FIELD)
public @interface Unique {
    String msg();
}
