package com.moxa.sooth.code.gen.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.io.IoUtil;
import cn.hutool.core.util.StrUtil;
import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.dream.template.mapper.TemplateMapper;
import com.moxa.dream.util.common.ObjectUtil;
import com.moxa.sooth.code.datasource.service.ISysDataSourceService;
import com.moxa.sooth.code.datasource.view.SysDataSource;
import com.moxa.sooth.code.gen.mapper.CodeGenMapper;
import com.moxa.sooth.code.gen.model.GenCodeModel;
import com.moxa.sooth.code.gen.model.GenTableExistModel;
import com.moxa.sooth.code.gen.model.GenTableFieldModel;
import com.moxa.sooth.code.gen.service.IGenTableFieldService;
import com.moxa.sooth.code.gen.service.IGenTableService;
import com.moxa.sooth.code.gen.util.DbSourceUtil;
import com.moxa.sooth.code.gen.util.TemplateUtil;
import com.moxa.sooth.code.gen.view.GenTable;
import com.moxa.sooth.code.gen.view.GenTableField;
import com.moxa.sooth.code.template.service.IGenTemplateService;
import com.moxa.sooth.code.template.view.GenTemplate;
import com.moxa.sooth.core.base.exception.SoothBootException;
import com.moxa.sooth.core.base.util.ClientUtil;
import com.moxa.sooth.core.base.util.DbUtil;
import com.moxa.sooth.core.user.view.SysUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class GenTableServiceImpl extends ServiceImpl<GenTable, GenTable> implements IGenTableService {
    @Autowired
    private TemplateMapper templateMapper;
    @Autowired
    private CodeGenMapper codeGenMapper;
    @Autowired
    private IGenTemplateService templateService;
    @Autowired
    private IGenTableFieldService genTableFieldService;
    @Autowired
    private ISysDataSourceService dataSourceService;




    @Override
    public List<GenTable> getTableList(long id) {
        SysDataSource sysDataSource = dataSourceService.selectById(id);
        List<GenTable> tableList = DbSourceUtil.getTableList(com.moxa.sooth.core.base.util.DbUtil.getConnection(sysDataSource.getUrl(),sysDataSource.getUsername(),sysDataSource.getPassword()), null);
        return tableList;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void tableImport(Long datasourceId, List<String> tableNameList) {
        SysDataSource sysDataSource = dataSourceService.selectById(datasourceId);

        Connection connection = DbUtil.getConnection(sysDataSource.getUrl(),sysDataSource.getUsername(),sysDataSource.getPassword());
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

    @Override
    public List<Map<String, String>> preview(GenCodeModel genCodeModel) {
        if (StrUtil.isBlank(genCodeModel.getAuthor())) {
            SysUser loginUser = ClientUtil.getLoginUser();
            if(loginUser!=null){
                genCodeModel.setAuthor(loginUser.getUsername());
            }
        }
        List<GenTableField> columns = genTableFieldService.selectList(genCodeModel.getId());
        genCodeModel.setColumns(columns);
        List<GenTemplate> genTemplateList = templateService.selectByIds(genCodeModel.getTemplateIds());
        Map<String, Object> map = BeanUtil.beanToMap(genCodeModel);
        List<Map<String,String>>resultList=new ArrayList<>();
        if (!CollUtil.isEmpty(genTemplateList)) {
            for (GenTemplate genTemplate : genTemplateList) {
                map.put("name", genTemplate.getName());
                String fileName = TemplateUtil.getContent(genTemplate.getFileName(), map);
                String content = genTemplate.getContent();
                String template = TemplateUtil.getContent(content, map);
                Map<String,String>resultMap=new HashMap<>();
                resultMap.put("fileName",fileName);
                resultMap.put("content",template);
                resultList.add(resultMap);
            }
        } else {
            throw new SoothBootException("模板不存在");
        }
        return resultList;
    }
}
