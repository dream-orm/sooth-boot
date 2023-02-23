package com.moxa.sooth.module.code.fieldtype.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.module.code.fieldtype.view.SysFieldTypeLV;

import java.util.List;

public interface ISysFieldTypeService extends IService<SysFieldTypeLV, SysFieldTypeLV> {

    void initFieldType();

    List listAttrType();
}
