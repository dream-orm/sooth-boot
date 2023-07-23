package com.moxa.sooth.module.code.fieldtype.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.Sql;
import com.moxa.sooth.module.code.fieldtype.view.SysFieldTypeLV;

import java.util.List;

@Mapper
public interface FieldTypeMapper {
    @Sql("select id from sys_field_type where column_type=@?(columnType) limit 1")
    Long selectByColumnType(String columnType);

    @Sql("select @all() from sys_field_type")
    List<SysFieldTypeLV> selectAll();

    @Sql("select distinct attr_type from sys_field_type")
    List<SysFieldTypeLV> listAttrType();

}
