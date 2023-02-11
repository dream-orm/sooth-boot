package com.moxa.sooth.core.dict.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.Param;
import com.moxa.dream.system.annotation.Sql;
import com.moxa.sooth.core.dict.view.SysDictItemView;

import java.util.List;

@Mapper
public interface SysDictItemMapper {
    @Sql("select @all() from sys_dict_item  where dict_id = (select id from sys_dict where code = @?(code)) order by order_no asc")
    List<SysDictItemView> getDictItems(@Param("code") String code);

    @Sql("delete from sys_dict_item where dict_id=@?(dictId)")
    int deleteByDictId(@Param("dictId") Object dictId);
}
