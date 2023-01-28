package com.moxa.sooth.core.button.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.sooth.core.button.mapper.provider.SysButtonProvider;
import com.moxa.sooth.core.button.view.MenuButton;

import java.util.List;

@Mapper(SysButtonProvider.class)
public interface SysButtonMapper {
    List<MenuButton> listMenuButtonTree(Long userId);
}
