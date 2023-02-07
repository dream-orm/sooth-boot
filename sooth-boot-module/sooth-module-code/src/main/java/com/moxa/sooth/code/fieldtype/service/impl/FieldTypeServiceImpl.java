package com.moxa.sooth.code.fieldtype.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.code.fieldtype.mapper.FieldTypeMapper;
import com.moxa.sooth.code.fieldtype.service.IFieldTypeService;
import com.moxa.sooth.code.fieldtype.view.FieldType;
import com.moxa.sooth.code.gen.util.DbSourceUtil;
import com.moxa.sooth.core.base.exception.SoothBootException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Field;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class FieldTypeServiceImpl extends ServiceImpl<FieldType, FieldType> implements IFieldTypeService {
    @Autowired
    private FieldTypeMapper fieldTypeMapper;


    @Override
    public void initFieldType() {
        Field[] fields = Types.class.getDeclaredFields();
        Map<Integer, DbSourceUtil.DataType> dataTypeMap = DbSourceUtil.dataTypeMap;
        List<FieldType> fieldTypeList = new ArrayList<>();
        List<FieldType> fieldTypeList2 = new ArrayList<>();
        for (Field field : fields) {
            if (field.getType() == int.class) {
                try {
                    int fieldCode = (int) field.get(null);
                    FieldType fieldType = templateMapper.selectById(FieldType.class, fieldCode);
                    DbSourceUtil.DataType dataType = dataTypeMap.get(fieldCode);
                    String attrType = null;
                    if (dataType != null) {
                        attrType = dataType.getJavaType();
                    }
                    if (attrType == null) {
                        attrType = "Object";
                    }
                    if (fieldType == null) {
                        String fieldName = field.getName();
                        fieldType = new FieldType();
                        fieldType.setId(fieldCode);
                        fieldType.setColumnType(fieldName);
                        fieldType.setAttrType(attrType);
                        fieldTypeList.add(fieldType);
                    } else if (!attrType.equals(fieldType.getAttrType())) {
                        fieldType.setAttrType(attrType);
                        fieldTypeList2.add(fieldType);
                    }

                } catch (IllegalAccessException e) {
                    throw new SoothBootException(e);
                }
            }
        }
        if (!fieldTypeList.isEmpty()) {
            templateMapper.batchInsert(fieldTypeList);
        }
        if (!fieldTypeList2.isEmpty()) {
            templateMapper.batchUpdateById(fieldTypeList2);
        }
    }

    @Override
    public List listAttrType() {
        return fieldTypeMapper.listAttrType();
    }
}
