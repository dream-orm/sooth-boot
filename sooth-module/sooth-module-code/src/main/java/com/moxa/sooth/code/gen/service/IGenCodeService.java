package com.moxa.sooth.code.gen.service;

import com.moxa.sooth.code.gen.model.GenCodeModel;


public interface IGenCodeService {

    void preview(long tableId);

    void generate(GenCodeModel genCodeModel);
}
