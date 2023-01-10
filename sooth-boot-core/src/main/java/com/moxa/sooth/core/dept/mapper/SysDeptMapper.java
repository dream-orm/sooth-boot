package com.moxa.sooth.core.dept.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.Param;
import com.moxa.sooth.core.base.annotation.Permission;
import com.moxa.sooth.core.dept.mapper.provider.SysDeptProvider;

import java.util.List;

@Mapper(SysDeptProvider.class)
public interface SysDeptMapper {
    @Permission(false)
    List<Long> selectDeepTree(@Param("list") List<Long> treeIdList);
}
