package com.moxa.sooth.code.fieldtype.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.Sql;
import com.moxa.sooth.code.fieldtype.view.FieldType;

import java.util.List;

@Mapper
public interface FieldTypeMapper {
    @Sql("select id from gen_field_type where column_type=@$(columnType) limit 1")
    Long selectByColumnType(String columnType);

    @Sql("select @all() from gen_field_type")
    List<FieldType> selectAll();

    @Sql("select distinct attr_type from gen_field_type")
    List<FieldType> listAttrType();

}
