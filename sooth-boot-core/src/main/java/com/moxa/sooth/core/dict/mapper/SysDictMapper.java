package com.moxa.sooth.core.dict.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.Param;
import com.moxa.dream.system.annotation.Sql;

@Mapper
public interface SysDictMapper {
    @Sql("select item_text from sys_dict_item  where dict_id = (select id from sys_dict where dict_code = @$(code)) and item_value = @$(@(value))")
    String translateDict(@Param("code") String code, @Param("value") Object value);
}
