package com.moxa.sooth.core.dict.service;


import com.moxa.dream.template.service.IService;
import com.moxa.sooth.core.dict.view.SysDictItem;

import java.util.List;

public interface ISysDictItemService extends IService<SysDictItem, SysDictItem> {

    List<SysDictItem> getDictItems(String code);
}
