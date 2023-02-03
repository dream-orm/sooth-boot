package com.moxa.sooth.core.button.service.impl;

import cn.hutool.core.collection.CollUtil;
import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.core.button.mapper.SysButtonMapper;
import com.moxa.sooth.core.button.model.SysButtonModel;
import com.moxa.sooth.core.button.service.ISysButtonService;
import com.moxa.sooth.core.button.table.SysButton;
import com.moxa.sooth.core.button.view.MenuButton;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class SysButtonServiceImpl extends ServiceImpl<SysButton, SysButton> implements ISysButtonService {

    @Autowired
    private SysButtonMapper buttonMapper;

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void saveButton(Long menuId, List<String> buttonTypeList) {
        SysButtonModel buttonModel = new SysButtonModel();
        buttonModel.setMenuId(menuId);
        List<SysButton> buttons = selectList(buttonModel);
        Map<String, Long> buttonMap = new HashMap<>();
        if (CollUtil.isNotEmpty(buttons)) {
            for (SysButton button : buttons) {
                buttonMap.put(button.getMenuId() + button.getType(), button.getId());
            }
        }
        List<SysButton> saveSysButtons = new ArrayList<>();
        for (String buttonType : buttonTypeList) {
            String key = menuId + buttonType;
            if (buttonMap.remove(key) == null) {
                SysButton sysButton = new SysButton();
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

    @Override
    public List<MenuButton> listMenuButtonTree(Long userId) {
        return buttonMapper.listMenuButtonTree(userId);
    }
}
