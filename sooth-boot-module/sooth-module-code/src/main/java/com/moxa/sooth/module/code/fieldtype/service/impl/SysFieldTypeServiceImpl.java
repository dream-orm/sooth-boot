package com.moxa.sooth.module.code.fieldtype.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.module.base.core.exception.SoothException;
import com.moxa.sooth.module.code.fieldtype.mapper.FieldTypeMapper;
import com.moxa.sooth.module.code.fieldtype.service.ISysFieldTypeService;
import com.moxa.sooth.module.code.fieldtype.view.SysFieldTypeLV;
import com.moxa.sooth.module.code.gen.util.DbSourceUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Field;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class SysFieldTypeServiceImpl extends ServiceImpl<SysFieldTypeLV, SysFieldTypeLV> implements ISysFieldTypeService {
    @Autowired
    private FieldTypeMapper fieldTypeMapper;


    @Override
    public void initFieldType() {
        Field[] fields = Types.class.getDeclaredFields();
        Map<Integer, DbSourceUtil.DataType> dataTypeMap = DbSourceUtil.dataTypeMap;
        List<SysFieldTypeLV> sysFieldTypeLVList = new ArrayList<>();
        List<SysFieldTypeLV> sysFieldTypeLVList2 = new ArrayList<>();
        for (Field field : fields) {
            if (field.getType() == int.class) {
                try {
                    int fieldCode = (int) field.get(null);
                    SysFieldTypeLV sysFieldTypeLV = templateMapper.selectById(SysFieldTypeLV.class, fieldCode);
                    DbSourceUtil.DataType dataType = dataTypeMap.get(fieldCode);
                    String attrType = null;
                    if (dataType != null) {
                        attrType = dataType.getJavaType();
                    }
                    if (attrType == null) {
                        attrType = "Object";
                    }
                    if (sysFieldTypeLV == null) {
                        String fieldName = field.getName();
                        sysFieldTypeLV = new SysFieldTypeLV();
                        sysFieldTypeLV.setId(fieldCode);
                        sysFieldTypeLV.setColumnType(fieldName);
                        sysFieldTypeLV.setAttrType(attrType);
                        sysFieldTypeLVList.add(sysFieldTypeLV);
                    } else if (!attrType.equals(sysFieldTypeLV.getAttrType())) {
                        sysFieldTypeLV.setAttrType(attrType);
                        sysFieldTypeLVList2.add(sysFieldTypeLV);
                    }

                } catch (IllegalAccessException e) {
                    throw new SoothException(e);
                }
            }
        }
        if (!sysFieldTypeLVList.isEmpty()) {
            templateMapper.batchInsert(sysFieldTypeLVList);
        }
        if (!sysFieldTypeLVList2.isEmpty()) {
            templateMapper.batchUpdateById(sysFieldTypeLVList2);
        }
    }

    @Override
    public List listAttrType() {
        return fieldTypeMapper.listAttrType();
    }
}
