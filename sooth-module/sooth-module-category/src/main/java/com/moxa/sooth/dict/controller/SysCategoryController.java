package com.moxa.sooth.dict.controller;


import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.dict.model.SysCategoryModel;
import com.moxa.sooth.dict.service.ISysCategoryService;
import com.moxa.sooth.dict.view.SysCategory;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Description: 分类字典
 * @Author: jeecg-boot
 * @Date: 2019-05-29
 * @Version: V1.0
 */
@RestController
@RequestMapping("/sys/category")
@Slf4j
public class SysCategoryController extends BaseController<ISysCategoryService, SysCategory, SysCategoryModel> {


}
