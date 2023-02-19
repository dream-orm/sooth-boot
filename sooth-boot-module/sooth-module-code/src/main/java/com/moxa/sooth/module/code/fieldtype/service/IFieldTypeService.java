package com.moxa.sooth.module.code.fieldtype.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.module.code.fieldtype.view.FieldType;

import java.util.List;

public interface IFieldTypeService extends IService<FieldType, FieldType> {

    void initFieldType();

    List listAttrType();
}
