package com.moxa.sooth.core.button.service.impl;

import cn.hutool.core.collection.CollUtil;
import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.core.button.model.SysButtonModel;
import com.moxa.sooth.core.button.service.ISysButtonService;
import com.moxa.sooth.core.button.table.SysButton;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Service
public class SysButtonServiceImpl extends ServiceImpl<SysButton, SysButton> implements ISysButtonService {

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void saveButton(Long menuId, List<String> buttonTypeList) {
        SysButtonModel buttonPermissionModel = new SysButtonModel();
        buttonPermissionModel.setMenuId(menuId);
        List<SysButton> buttons = selectList(menuId);
        Map<String,Long>buttonMap=new HashMap<>();
        if(CollUtil.isNotEmpty(buttons)){
            for(SysButton button:buttons){
                buttonMap.put(button.getMenuId()+button.getType(),button.getId());
            }
        }
        List<SysButton> saveSysButtons = new ArrayList<>();
        for (String buttonType : buttonTypeList) {
            String key = menuId +buttonType;
            if (buttonMap.remove(key)==null) {
                SysButton sysButton=new SysButton();
                sysButton.setMenuId(menuId);
                sysButton.setType(buttonType);
                saveSysButtons.add(sysButton);
            }
        }
        if (CollUtil.isNotEmpty(buttonMap)) {
            deleteByIds(buttonMap.values());
        }
        if (CollUtil.isNotEmpty(saveSysButtons)) {
            batchInsert(saveSysButtons);
        }
    }
}
