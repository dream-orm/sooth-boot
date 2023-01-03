package com.moxa.sooth.code.fieldtype.service.impl;

import com.moxa.dream.system.config.Page;
import com.moxa.dream.template.mapper.TemplateMapper;
import com.moxa.sooth.code.fieldtype.mapper.FieldTypeMapper;
import com.moxa.sooth.code.fieldtype.model.FieldTypeModel;
import com.moxa.sooth.code.fieldtype.service.IFieldTypeService;
import com.moxa.sooth.code.fieldtype.util.FieldTypeUtil;
import com.moxa.sooth.code.fieldtype.view.FieldType;
import com.moxa.sooth.core.base.common.exception.SoothBootException;
import com.moxa.sooth.core.base.entity.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Field;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @Description: 多数据源管理
 * @Author: jeecg-boot
 * @Date: 2019-12-25
 * @Version: V1.0
 */
@Service
public class FieldTypeServiceImpl implements IFieldTypeService {
    @Autowired
    private TemplateMapper templateMapper;
    @Autowired
    private FieldTypeMapper fieldTypeMapper;

    @Override
    public Result save(FieldType fieldType) {
        if (fieldTypeMapper.selectByColumnType(fieldType.getColumnType()) != null) {
            throw new SoothBootException("字段类型" + fieldType.getColumnType() + "已经存在");
        }
        templateMapper.insert(fieldType);
        return Result.ok("添加成功！");
    }

    @Override
    public Result edit(FieldType fieldType) {
        templateMapper.updateById(fieldType);
        return Result.ok("编辑成功!");
    }

    @Override
    public Result delete(String id) {
        templateMapper.deleteById(FieldType.class, id);
        return Result.ok("删除成功!");
    }

    @Override
    public int removeByIds(List<String> ids) {
        return templateMapper.deleteByIds(FieldType.class, ids);
    }

    @Override
    public Page<FieldType> selectPage(FieldTypeModel fieldTypeModel, Page page) {
        return templateMapper.selectPage(FieldType.class, fieldTypeModel, page);
    }

    @Override
    public List<FieldType> selectAll() {
        return fieldTypeMapper.selectAll();
    }

    @Override
    public FieldType selectById(int id) {
        return templateMapper.selectById(FieldType.class, id);
    }

    @Override
    public void initFieldType() {
        Field[] fields = Types.class.getDeclaredFields();
        Map<Integer, String> dataTypeMap = FieldTypeUtil.getDataTypeMap();
        List<FieldType> fieldTypeList = new ArrayList<>();
        List<FieldType> fieldTypeList2 = new ArrayList<>();
        for (Field field : fields) {
            if (field.getType() == int.class) {
                try {
                    int fieldCode = (int) field.get(null);
                    FieldType fieldType = templateMapper.selectById(FieldType.class, fieldCode);
                    String attrType = dataTypeMap.get(fieldCode);
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
