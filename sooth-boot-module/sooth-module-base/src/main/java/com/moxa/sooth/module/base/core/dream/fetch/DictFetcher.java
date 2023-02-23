package com.moxa.sooth.module.base.core.dream.fetch;

import cn.hutool.core.util.StrUtil;
import com.moxa.dream.template.fetch.Fetcher;
import com.moxa.dream.util.common.ObjectWrapper;
import com.moxa.sooth.module.base.core.config.App;
import com.moxa.sooth.module.base.core.entity.BaseDict;
import com.moxa.sooth.module.base.core.exception.SoothException;
import com.moxa.sooth.module.base.core.service.SysApiService;

import java.util.Map;

public class DictFetcher implements Fetcher {
    private static final String CODE = "code";
    private static final String NAME = "name";
    private static final String TABLE = "table";

    @Override
    public void fetch(Object result, String property, Map<String, Object> paramMap) {
        Object value = ObjectWrapper.wrapper(result).get(property);
        SysApiService sysApiService = App.getBean(SysApiService.class);
        String code = StrUtil.utf8Str(paramMap.get(CODE));
        String name = StrUtil.utf8Str(paramMap.get(NAME));
        String table = StrUtil.utf8Str(paramMap.get(TABLE));
        String nameValue = sysApiService.getDictItemName(table, name, code, value);
        if (nameValue != null) {
            if (result instanceof BaseDict) {
                ((BaseDict) result).put(property, nameValue);
            } else {
                throw new SoothException(result.getClass() + "必须继承" + BaseDict.class.getName());
            }
        }
    }
}
