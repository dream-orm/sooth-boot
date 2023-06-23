package com.moxa.sooth.module.base.core.dream.extract;

import com.moxa.dream.system.extractor.Extractor;
import com.moxa.dream.util.reflection.factory.ObjectFactory;
import com.moxa.sooth.module.base.core.config.App;
import com.moxa.sooth.module.base.core.entity.BaseDict;
import com.moxa.sooth.module.base.core.exception.SoothException;
import com.moxa.sooth.module.base.core.service.SysApiService;


public class DictExtractor implements Extractor {
    private String code;
    private String name;
    private  String table;
    @Override
    public void setArgs(String[] args) {
        code=args[0];
        if(args.length>1) {
            table = args[1];
            name = args[2];
        }
    }

    @Override
    public void extract(String property, Object value, ObjectFactory objectFactory) {
        objectFactory.set(property, value);
        SysApiService sysApiService = App.getBean(SysApiService.class);
        String nameValue = sysApiService.getDictItemName(table, name, code, value);
        if (nameValue != null) {
            Object result=objectFactory.getObject();
            if (result instanceof BaseDict) {
                ((BaseDict) result).put(property, nameValue);
            } else {
                throw new SoothException(result.getClass() + "必须继承" + BaseDict.class.getName());
            }
        }
    }
}
