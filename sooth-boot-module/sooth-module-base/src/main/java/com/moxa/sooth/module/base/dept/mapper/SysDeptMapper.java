package com.moxa.sooth.module.base.dept.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.Param;
import com.moxa.sooth.module.base.dept.mapper.provider.SysDeptProvider;

import java.util.List;

@Mapper(SysDeptProvider.class)
public interface SysDeptMapper {
    List<Long> selectDeepTree(@Param("list") List<Long> treeIdList);
}
