package com.moxa.sooth.core.base.dream;

import cn.hutool.core.util.StrUtil;
import com.moxa.dream.template.fetch.Fetcher;
import com.moxa.dream.util.common.ObjectWrapper;
import com.moxa.sooth.core.base.config.App;
import com.moxa.sooth.core.base.entity.BaseDict;
import com.moxa.sooth.core.base.exception.SoothBootException;
import com.moxa.sooth.core.base.service.SysApiService;

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
        String textValue = sysApiService.translateDict(table, name, code, value instanceof Boolean ? value : String.valueOf(value));
        if (result instanceof BaseDict) {
            ((BaseDict) result).put(property, textValue);
        } else {
            throw new SoothBootException(result.getClass() + "必须继承" + BaseDict.class.getName());
        }
    }
}
