package com.moxa.sooth.module.base.dict.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.module.base.core.exception.SoothException;
import com.moxa.sooth.module.base.dict.mapper.SysDictMapper;
import com.moxa.sooth.module.base.dict.model.SysDictCodeExistModel;
import com.moxa.sooth.module.base.dict.service.ISysDictItemService;
import com.moxa.sooth.module.base.dict.service.ISysDictService;
import com.moxa.sooth.module.base.dict.view.SysDictView;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Slf4j
public class SysDictServiceImpl extends ServiceImpl<SysDictView, SysDictView> implements ISysDictService {
    @Autowired
    private SysDictMapper sysDictMapper;

    @Autowired
    private ISysDictItemService dictItemService;

    @Override
    public String getDictItemName(String code, Object value) {
        String val;
        if (value instanceof Boolean) {
            Boolean bool = (Boolean) value;
            val = bool ? "1" : "0";
        } else {
            val = String.valueOf(value);
        }
        return sysDictMapper.getDictItemName(code, val);
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public int deleteById(Object id) {
        dictItemService.deleteByDictId(id);
        return super.deleteById(id);
    }

    private void checkCodeExist(SysDictView sysDictView) {
        SysDictCodeExistModel dictCodeExistModel = new SysDictCodeExistModel();
        dictCodeExistModel.setCode(sysDictView.getCode());
        if (templateMapper.exist(SysDictView.class, dictCodeExistModel)) {
            throw new SoothException("字典编码" + sysDictView.getCode() + "已经存在");
        }
    }

    @Override
    public int insert(SysDictView sysDictView) {
        checkCodeExist(sysDictView);
        return super.insert(sysDictView);
    }
}
