package com.moxa.sooth.module.base.dict.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.module.base.dict.view.SysDictView;


public interface ISysDictService extends IService<SysDictView, SysDictView> {


    String getDictItemName(String code, Object value);
}
