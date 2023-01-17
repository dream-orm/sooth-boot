package com.moxa.sooth.code.gen.service;

import com.moxa.dream.system.config.Page;
import com.moxa.sooth.code.gen.model.GenTableModel;
import com.moxa.sooth.code.gen.view.GenTable;
import com.moxa.sooth.code.gen.view.GenTableField;
import com.moxa.sooth.core.base.entity.Result;

import java.util.List;


public interface IGenTableService {


    Result save(GenTable genTable);


    Result edit(GenTable genTable);


    Result delete(String id);


    int removeByIds(List<Long> ids);


    Page<GenTable> selectPage(GenTableModel genTableModel, Page page);

    List<GenTable> selectAll();

    List<GenTable> getTableList(long databaseId);

    GenTable getTable(long id);

    void tableImport(Long datasourceId, List<String> tableNameList);

    List<GenTableField> getTableFieldList(long tableId);
}
