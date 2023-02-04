package com.moxa.sooth.code.template.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.code.template.model.GenTemplateModel;
import com.moxa.sooth.code.template.service.IGenTemplateService;
import com.moxa.sooth.code.template.view.GenTemplate;
import com.moxa.sooth.code.template.view.GenTemplateList;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class GenTemplateServiceImpl extends ServiceImpl<GenTemplateList, GenTemplate> implements IGenTemplateService {
    @Override
    public void preview(long tableId) {

    }

    @Override
    public List<GenTemplate> selectByGroupId(Long groupId) {
        GenTemplateModel genTemplateModel = new GenTemplateModel();
        genTemplateModel.setGroupId(groupId);
        return templateMapper.selectList(GenTemplate.class, genTemplateModel);
    }

    @Override
    public List<Map<String, Object>> help() {
        Map<String,Object>schemaMap=new LinkedHashMap<>(16);
        schemaMap.put("packageName","包名");
        schemaMap.put("className","类名");
        schemaMap.put("moduleName","模块名");
        schemaMap.put("entityName","业务名");
        schemaMap.put("author","登录人昵称");
        schemaMap.put("tableName","表名");
        schemaMap.put("tableComment","表描述");
        schemaMap.put("baseClass","基类");
        schemaMap.put("baseFields","基类属性字段");
        schemaMap.put("columns","表所有字段");
        schemaMap.put("_.columnName","字段名");
        schemaMap.put("_.columnType","字段类型");
        schemaMap.put("_.columnComment","字段描述");
        schemaMap.put("_.attrName","属性名");
        schemaMap.put("_.attrType","属性类型");
        schemaMap.put("_.primaryPk","是否主键");
        List<Map<String,Object>>resultList=new ArrayList<>(schemaMap.size());
        schemaMap.forEach((key,value)->{
            Map<String,Object>map=new HashMap<>();
            map.put("field",key);
            map.put("label",value);
            resultList.add(map);
        });
        return resultList;
    }

}
