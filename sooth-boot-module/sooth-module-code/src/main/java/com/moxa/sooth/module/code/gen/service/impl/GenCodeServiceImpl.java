package com.moxa.sooth.module.code.gen.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.io.IoUtil;
import cn.hutool.core.util.ArrayUtil;
import cn.hutool.core.util.StrUtil;
import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.dream.template.mapper.TemplateMapper;
import com.moxa.dream.util.common.ObjectUtil;
import com.moxa.sooth.module.base.core.entity.LoginUser;
import com.moxa.sooth.module.base.core.exception.SoothException;
import com.moxa.sooth.module.base.core.util.ClientUtil;
import com.moxa.sooth.module.base.core.util.DbUtil;
import com.moxa.sooth.module.code.baseclass.service.IBaseClassService;
import com.moxa.sooth.module.code.baseclass.view.BaseClass;
import com.moxa.sooth.module.code.datasource.service.ISysDataSourceService;
import com.moxa.sooth.module.code.datasource.view.SysDataSource;
import com.moxa.sooth.module.code.gen.model.GenCodeModel;
import com.moxa.sooth.module.code.gen.model.GenTableExistModel;
import com.moxa.sooth.module.code.gen.model.GenTableFieldModel;
import com.moxa.sooth.module.code.gen.service.IGenCodeService;
import com.moxa.sooth.module.code.gen.service.IGenTableFieldService;
import com.moxa.sooth.module.code.gen.util.DbSourceUtil;
import com.moxa.sooth.module.code.gen.util.TemplateUtil;
import com.moxa.sooth.module.code.gen.view.GenCodeView;
import com.moxa.sooth.module.code.gen.view.GenTable;
import com.moxa.sooth.module.code.gen.view.GenTableField;
import com.moxa.sooth.module.code.template.service.IGenTemplateService;
import com.moxa.sooth.module.code.template.view.GenTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

@Service
public class GenCodeServiceImpl extends ServiceImpl<GenTable, GenTable> implements IGenCodeService {
    @Autowired
    private TemplateMapper templateMapper;
    @Autowired
    private IGenTemplateService templateService;
    @Autowired
    private IGenTableFieldService genTableFieldService;
    @Autowired
    private IBaseClassService baseClassService;
    @Autowired
    private ISysDataSourceService dataSourceService;


    @Override
    public List<GenTable> getTableList(long id) {
        SysDataSource sysDataSource = dataSourceService.selectById(id);
        List<GenTable> tableList = DbSourceUtil.getTableList(DbUtil.getConnection(sysDataSource.getUrl(), sysDataSource.getUsername(), sysDataSource.getPassword()), null);
        return tableList;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void tableImport(Long datasourceId, List<String> tableNameList) {
        SysDataSource sysDataSource = dataSourceService.selectById(datasourceId);

        Connection connection = DbUtil.getConnection(sysDataSource.getUrl(), sysDataSource.getUsername(), sysDataSource.getPassword());
        try {
            for (String tableName : tableNameList) {
                GenTableExistModel genTableExistModel = new GenTableExistModel();
                genTableExistModel.setTableName(tableName);
                if (templateMapper.exist(GenTable.class, genTableExistModel)) {
                    continue;
                }
                List<GenTable> tableList = DbSourceUtil.getTableList(connection, tableName);
                if (ObjectUtil.isNull(tableList)) {
                    throw new SoothException("数据表名" + tableName + "未找到");
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
        GenTable genTable = selectById(genCodeModel.getId());
        if (genTable == null) {
            throw new SoothException("生成表不存在");
        }
        GenCodeView genCodeView = new GenCodeView();
        genCodeView.setTableName(genTable.getTableName());
        genCodeView.setTableComment(genTable.getTableComment());
        genCodeView.setClassName(genCodeModel.getClassName());
        genCodeView.setModuleName(genCodeModel.getModuleName());
        genCodeView.setEntityName(genCodeModel.getEntityName());
        genCodeView.setPackageName(genCodeModel.getPackageName());
        LoginUser loginUser = ClientUtil.getLoginUser();
        if (loginUser != null) {
            genCodeView.setAuthor(loginUser.getUsername());
        }
        Long baseId = genCodeModel.getBaseId();
        if (baseId != null) {
            BaseClass baseClass = baseClassService.selectById(baseId);
            if (baseClass == null) {
                throw new SoothException("基类未找到");
            }
            genCodeView.setBaseClass(baseClass.getClassName());
            String[] fields = baseClass.getFields();
            if (ArrayUtil.isNotEmpty(fields)) {
                genCodeView.setBaseFields(fields);
            }
        }
        List<GenTableField> columns = genTableFieldService.selectList(genCodeModel.getId());
        genCodeView.setColumns(columns);
        List<GenTemplate> genTemplateList = templateService.selectByIds(genCodeModel.getTemplateIds());
        Map<String, Object> map = BeanUtil.beanToMap(genCodeView);
        List<Map<String, String>> resultList = new ArrayList<>();
        if (!CollUtil.isEmpty(genTemplateList)) {
            for (GenTemplate genTemplate : genTemplateList) {
                map.put("name", genTemplate.getName());
                String fileName = TemplateUtil.getContent(genTemplate.getFileName(), map);
                String content = genTemplate.getContent();
                String template = TemplateUtil.getContent(content, map);
                Map<String, String> resultMap = new HashMap<>();
                resultMap.put("fileName", fileName);
                resultMap.put("content", template);
                resultList.add(resultMap);
            }
        } else {
            throw new SoothException("模板不存在");
        }
        return resultList;
    }

    @Override
    public byte[] generate(GenCodeModel genCodeModel) {
        List<Map<String, String>> mapList = preview(genCodeModel);
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        ZipOutputStream zip = new ZipOutputStream(outputStream);
        try {
            for (Map<String, String> map : mapList) {
                // 添加到zip
                zip.putNextEntry(new ZipEntry(map.get("fileName")));
                zip.write(map.get("content").getBytes(StandardCharsets.UTF_8));
                zip.closeEntry();
            }
        } catch (IOException e) {
            throw new SoothException(e.getMessage(), e);
        } finally {
            IoUtil.close(zip);
            // zip压缩包数据
            IoUtil.close(outputStream);
        }
        return outputStream.toByteArray();
    }
}
