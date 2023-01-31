package com.moxa.sooth.code.gen.service;

import com.moxa.sooth.code.gen.model.GenCodeModel;


public interface IGenCodeService {

    byte[] generate(GenCodeModel genCodeModel);
}
