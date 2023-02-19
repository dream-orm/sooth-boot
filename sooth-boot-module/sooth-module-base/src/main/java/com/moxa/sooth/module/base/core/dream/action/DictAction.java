package com.moxa.sooth.module.base.core.dream.action;

import com.moxa.dream.system.config.MappedStatement;
import com.moxa.dream.system.core.action.Action;
import com.moxa.dream.system.core.session.Session;
import com.moxa.dream.util.common.ObjectWrapper;
import com.moxa.dream.util.exception.DreamRunTimeException;
import com.moxa.sooth.module.base.core.entity.BaseDict;
import com.moxa.sooth.module.base.dict.service.ISysDictService;
import com.moxa.sooth.module.base.core.config.App;

public class DictAction implements Action {
    private final String code;
    private final String property;

    public DictAction(String code) {
        this(code, code);
    }


    public DictAction(String code, String property) {
        this.code = code;
        this.property = property;
    }

    @Override
    public void doAction(Session session, MappedStatement mappedStatement, Object arg) {
        if (arg != null) {
            if (!(arg instanceof BaseDict)) {
                throw new DreamRunTimeException(arg.getClass().getName() + "必须是" + BaseDict.class.getName() + "子类");
            }
            BaseDict baseDict = (BaseDict) arg;
            ObjectWrapper dictWrapper = ObjectWrapper.wrapper(baseDict);
            Object value = dictWrapper.get(property);
            if (value != null) {
                String name = App.getBean(ISysDictService.class).getDictItemName(code, value);
                baseDict.put(property, name);
            }
        }
    }
}
