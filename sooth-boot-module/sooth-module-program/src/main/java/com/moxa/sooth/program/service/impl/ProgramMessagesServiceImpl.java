package com.moxa.sooth.program.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.dream.template.service.IService;
import com.moxa.sooth.program.service.IProgramMessagesService;
import com.moxa.sooth.program.service.mapper.ProgramMessagesMapper;
import com.moxa.sooth.program.table.ProgramMessages;
import com.moxa.sooth.program.view.ProgramMessagesEditView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProgramMessagesServiceImpl extends ServiceImpl<ProgramMessagesEditView, ProgramMessagesEditView> implements IProgramMessagesService {
    @Autowired
   private ProgramMessagesMapper programMessagesMapper;
    @Override
    public List<ProgramMessages>listMachineName() {
        return programMessagesMapper.listMachineName();
    }

    @Override
    public List<ProgramMessages>listProgramName() {
        return programMessagesMapper.listProgramName();
    }
}