package com.moxa.sooth.core.dict.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.Param;
import com.moxa.dream.system.annotation.Sql;
import com.moxa.sooth.core.dict.view.SysDictItem;

import java.util.List;

@Mapper
public interface SysDictItemMapper {
    @Sql("select @all() from sys_dict_item  where dict_id = (select id from sys_dict where dict_code = @$(code))")
    List<SysDictItem> getDictItems(@Param("code") String code);
}
