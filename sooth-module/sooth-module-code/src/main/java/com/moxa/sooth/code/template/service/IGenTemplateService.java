package com.moxa.sooth.code.template.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.code.template.view.GenTemplate;
import com.moxa.sooth.code.template.view.GenTemplateList;

import java.util.List;

/**
 * @Description: 多数据源管理
 * @Author: jeecg-boot
 * @Date: 2019-12-25
 * @Version: V1.0
 */
public interface IGenTemplateService extends IService<GenTemplateList, GenTemplate> {

    void preview(long tableId);

    List<GenTemplate> selectByGroupId(Long groupId);
}
