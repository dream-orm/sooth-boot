package com.moxa.sooth.module.base.button.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.sooth.module.base.button.mapper.provider.SysButtonProvider;
import com.moxa.sooth.module.base.button.view.MenuButton;

import java.util.List;

@Mapper(SysButtonProvider.class)
public interface SysButtonMapper {
    List<MenuButton> listMenuButtonTree(Long userId);
}
