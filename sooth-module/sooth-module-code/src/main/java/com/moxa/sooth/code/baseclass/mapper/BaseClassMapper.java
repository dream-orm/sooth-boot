package com.moxa.sooth.code.baseclass.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.Sql;
import com.moxa.sooth.code.baseclass.view.BaseClass;

import java.util.List;

@Mapper
public interface BaseClassMapper {
    @Sql("select id from gen_base_class where name=@$(name) limit 1")
    Long selectByName(String name);

    @Sql("select @all() from gen_base_class")
    List<BaseClass> selectAll();
}
