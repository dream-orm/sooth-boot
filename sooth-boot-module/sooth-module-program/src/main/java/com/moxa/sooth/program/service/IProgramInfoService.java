package com.moxa.sooth.program.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.program.table.ProgramInfo;
import com.moxa.sooth.program.view.ProgramInfoEditView;

import java.util.List;


public interface IProgramInfoService extends IService<ProgramInfoEditView,ProgramInfoEditView> {

    List<ProgramInfo>listMachineName();

    List<ProgramInfo>listProgramName();
}