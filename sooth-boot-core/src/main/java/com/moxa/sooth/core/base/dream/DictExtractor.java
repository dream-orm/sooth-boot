package com.moxa.sooth.core.base.dream;

import com.moxa.dream.system.config.MappedColumn;
import com.moxa.dream.system.extractor.Extractor;
import com.moxa.dream.util.reflection.factory.ObjectFactory;
import com.moxa.sooth.core.base.entity.BaseDict;
import com.moxa.sooth.core.base.config.SpringContextHolder;
import com.moxa.sooth.core.base.common.aspect.annotation.Dict;
import com.moxa.sooth.core.base.common.exception.SoothBootException;
import com.moxa.sooth.core.base.service.SysApiService;
import org.springframework.context.ApplicationContext;

import java.lang.reflect.Field;

public class DictExtractor implements Extractor {
    @Override
    public void extract(MappedColumn mappedColumn, Object value, ObjectFactory objectFactory) {
        if (value == null) {
            return;
        }
        objectFactory.set(mappedColumn.getProperty(), value);
//        Field field = mappedColumn.getField();
//        if (field.getAnnotation(Dict.class) != null) {
//            ApplicationContext applicationContext = SpringContextHolder.getApp();
//            SysApiService sysApiService = applicationContext.getBean(SysApiService.class);
//            String code = field.getAnnotation(Dict.class).code();
//            String name = field.getAnnotation(Dict.class).name();
//            String table = field.getAnnotation(Dict.class).table();
//            String textValue = sysApiService.translateDict(table, name, code, value);
//            Object object = objectFactory.getObject();
//            if (object instanceof BaseDict) {
//                ((BaseDict) object).put(mappedColumn.getProperty(), textValue);
//            } else {
//                throw new SoothBootException(object.getClass() + "字段属性" + field.getName() + "存在注解Dict，必须继承" + BaseDict.class.getName());
//            }
//        }
    }
}
