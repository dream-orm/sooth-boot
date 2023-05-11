package com.moxa.sooth.program.service.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.Sql;
import com.moxa.sooth.program.table.ProgramInfo;

import java.util.List;
import java.util.Map;

@Mapper
public interface ProgramInfoMapper {
    @Sql("select distinct machine_name machineName from program_info")
    List<ProgramInfo>listMachineName();
    @Sql("select distinct program_name machineName from program_info")
    List<ProgramInfo>listProgramName();
}
