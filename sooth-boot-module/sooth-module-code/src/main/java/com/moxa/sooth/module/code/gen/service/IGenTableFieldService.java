package com.moxa.sooth.module.code.gen.service;

import com.moxa.sooth.module.code.gen.view.GenTableField;

import java.util.List;

public interface IGenTableFieldService {

    void batchSave(List<GenTableField> genTableFieldList);

    List<GenTableField> selectList(Long tableId);
}
