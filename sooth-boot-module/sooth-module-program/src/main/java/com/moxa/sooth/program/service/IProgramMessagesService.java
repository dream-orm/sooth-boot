package com.moxa.sooth.program.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.program.table.ProgramMessages;
import com.moxa.sooth.program.view.ProgramMessagesEditView;

import java.util.List;


public interface IProgramMessagesService extends IService<ProgramMessagesEditView,ProgramMessagesEditView> {

    List<ProgramMessages>listMachineName();

    List<ProgramMessages>listProgramName();
}