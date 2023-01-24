package com.moxa.sooth.code.gen.service.impl;

import cn.hutool.core.util.StrUtil;
import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.dream.system.config.Page;
import com.moxa.dream.template.mapper.TemplateMapper;
import com.moxa.dream.util.common.ObjectUtil;
import com.moxa.sooth.code.datasource.service.ISysDataSourceService;
import com.moxa.sooth.code.datasource.util.DbUtil;
import com.moxa.sooth.code.datasource.view.SysDataSource;
import com.moxa.sooth.code.gen.mapper.CodeGenMapper;
import com.moxa.sooth.code.gen.model.GenTableExistModel;
import com.moxa.sooth.code.gen.model.GenTableFieldModel;
import com.moxa.sooth.code.gen.model.GenTableModel;
import com.moxa.sooth.code.gen.service.IGenTableFieldService;
import com.moxa.sooth.code.gen.service.IGenTableService;
import com.moxa.sooth.code.gen.util.DbSourceUtil;
import com.moxa.sooth.code.gen.view.GenTable;
import com.moxa.sooth.code.gen.view.GenTableField;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.core.base.exception.SoothBootException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Connection;
import java.util.List;

@Service
public class GenTableServiceImpl extends ServiceImpl<GenTable, GenTable> implements IGenTableService {
    @Autowired
    private TemplateMapper templateMapper;
    @Autowired
    private CodeGenMapper codeGenMapper;

    @Autowired
    private IGenTableFieldService genTableFieldService;
    @Autowired
    private ISysDataSourceService dataSourceService;

    @Override
    public Result save(GenTable genTable) {
        if (codeGenMapper.selectByName(genTable.getTableName()) != null) {
            throw new SoothBootException("表名称" + genTable.getTableName() + "已经存在");
        }
        templateMapper.insert(genTable);
        return Result.ok("添加成功！");
    }

    @Override
    public Result edit(GenTable genTable) {
        Long id = codeGenMapper.selectByName(genTable.getTableName());
        if (id != null && id != genTable.getId()) {
            throw new SoothBootException("字段类型" + genTable.getTableName() + "已经存在");
        }
        templateMapper.updateById(genTable);
        return Result.ok("编辑成功!");
    }

    @Override
    public Result delete(String id) {
        templateMapper.deleteById(GenTable.class, id);
        return Result.ok("删除成功!");
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public int removeByIds(List<Long> ids) {
        codeGenMapper.deleteTableFieldByTableIds(ids);
        return templateMapper.deleteByIds(GenTable.class, ids);
    }

    @Override
    public Page<GenTable> selectPage(GenTableModel genTableModel, Page page) {
        return templateMapper.selectPage(GenTable.class, genTableModel, page);
    }

    @Override
    public List<GenTable> selectAll() {
        return codeGenMapper.selectAll();
    }

    @Override
    public List<GenTable> getTableList(long id) {
        SysDataSource sysDataSource = dataSourceService.selectById(id);
        List<GenTable> tableList = DbSourceUtil.getTableList(DbUtil.getConnection(sysDataSource), null);
        return tableList;
    }

    @Override
    public GenTable getTable(long id) {
        return templateMapper.selectById(GenTable.class, id);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void tableImport(Long datasourceId, List<String> tableNameList) {
        SysDataSource sysDataSource = dataSourceService.selectById(datasourceId);
        Connection connection = DbUtil.getConnection(sysDataSource);
        try {
            for (String tableName : tableNameList) {
                GenTableExistModel genTableExistModel = new GenTableExistModel();
                genTableExistModel.setTableName(tableName);
                if (templateMapper.exist(GenTable.class, genTableExistModel)) {
                    continue;
                }
                List<GenTable> tableList = DbSourceUtil.getTableList(connection, tableName);
                if (ObjectUtil.isNull(tableList)) {
                    throw new SoothBootException("数据表名" + tableName + "未找到");
                }
                GenTable genTable = tableList.get(0);
                genTable.setClassName(Character.toUpperCase(tableName.charAt(0)) + StrUtil.toCamelCase(tableName.substring(1)));
                List<GenTableField> genTableFieldList = DbSourceUtil.listColumn(connection, genTable.getTableName());
                templateMapper.insertFetchKey(genTable);
                Long tableId = genTable.getId();
                if (!ObjectUtil.isNull(genTableFieldList)) {
                    for (GenTableField tableField : genTableFieldList) {
                        tableField.setTableId(tableId);
                    }
                    genTableFieldService.batchSave(genTableFieldList);
                }
            }
        } finally {
            DbUtil.close(connection);
        }
    }

    @Override
    public List<GenTableField> getTableFieldList(long tableId) {
        GenTableFieldModel genTableFieldModel = new GenTableFieldModel();
        genTableFieldModel.setTableId(tableId);
        return templateMapper.selectList(GenTableField.class, genTableFieldModel);
    }
}
