package com.moxa.sooth.module.code.gen.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.module.code.gen.model.GenCodeModel;
import com.moxa.sooth.module.code.gen.view.GenTable;
import com.moxa.sooth.module.code.gen.view.GenTableField;

import java.util.List;
import java.util.Map;


public interface IGenCodeService extends IService<GenTable, GenTable> {

    List<GenTable> getTableList(long databaseId);

    void tableImport(Long datasourceId, List<String> tableNameList);

    List<GenTableField> getTableFieldList(long tableId);

    List<Map<String, String>> preview(GenCodeModel genCodeModel);

    byte[] generate(GenCodeModel genCodeModel);
}
