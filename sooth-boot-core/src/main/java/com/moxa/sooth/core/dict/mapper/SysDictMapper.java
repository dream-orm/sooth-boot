package com.moxa.sooth.core.dict.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.Param;
import com.moxa.dream.system.annotation.Sql;
import com.moxa.sooth.core.dict.view.SysDictItem;

@Mapper
public interface SysDictMapper {
    @Sql("select name from sys_dict_item  where dict_id = (select id from sys_dict where code = @?(code)) and value = @?(value)")
    String getDictItemName(@Param("code") String code, @Param("value") String value);
}
