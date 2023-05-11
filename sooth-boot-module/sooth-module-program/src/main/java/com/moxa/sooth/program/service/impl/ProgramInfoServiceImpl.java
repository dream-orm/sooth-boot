package com.moxa.sooth.program.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.program.service.IProgramInfoService;
import com.moxa.sooth.program.service.mapper.ProgramInfoMapper;
import com.moxa.sooth.program.table.ProgramInfo;
import com.moxa.sooth.program.view.ProgramInfoEditView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProgramInfoServiceImpl extends ServiceImpl<ProgramInfoEditView, ProgramInfoEditView> implements IProgramInfoService {
    @Autowired
    private ProgramInfoMapper programInfoMapper;
    @Override
    public List<ProgramInfo>listMachineName() {
        return programInfoMapper.listMachineName();
    }

    @Override
    public List<ProgramInfo>listProgramName() {
        return programInfoMapper.listProgramName();
    }
}