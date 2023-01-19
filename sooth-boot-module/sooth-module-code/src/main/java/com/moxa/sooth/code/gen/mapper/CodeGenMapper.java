package com.moxa.sooth.code.gen.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.Param;
import com.moxa.dream.system.annotation.Sql;
import com.moxa.sooth.code.gen.view.GenTable;

import java.util.List;

@Mapper
public interface CodeGenMapper {
    @Sql("select id from gen_base_class where name=@?(name) limit 1")
    Long selectByName(String name);

    @Sql("select @all() from gen_base_class")
    List<GenTable> selectAll();

    @Sql("delete from gen_table_field where table_id in (@foreach(tableIdList))")
    int deleteTableFieldByTableIds(@Param("tableIdList") List<Long> tableIdList);
}
