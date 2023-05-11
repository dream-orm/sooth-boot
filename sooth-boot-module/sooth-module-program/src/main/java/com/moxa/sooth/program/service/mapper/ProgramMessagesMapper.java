package com.moxa.sooth.program.service.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.Sql;
import com.moxa.sooth.program.table.ProgramMessages;

import java.util.List;
import java.util.Map;

@Mapper
public interface ProgramMessagesMapper {
    @Sql("select distinct machine_name machineName from program_messages")
    List<ProgramMessages>listMachineName();
    @Sql("select distinct program_name programName from program_messages")
    List<ProgramMessages>listProgramName();
}
