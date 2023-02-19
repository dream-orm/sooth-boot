package com.moxa.sooth.module.base.dict.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.Param;
import com.moxa.dream.system.annotation.Sql;

@Mapper
public interface SysDictMapper {
    @Sql("select name from sys_dict_item  where dict_id = (select id from sys_dict where code = @?(code)) and value = @?(value)")
    String getDictItemName(@Param("code") String code, @Param("value") String value);
}
