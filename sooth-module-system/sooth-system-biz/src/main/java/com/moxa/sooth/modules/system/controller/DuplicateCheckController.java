package com.moxa.sooth.modules.system.controller;

import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.core.base.common.constant.SymbolConstant;
import com.moxa.sooth.core.base.common.util.SqlInjectionUtil;
import com.moxa.sooth.modules.system.mapper.SysDictMapper;
import com.moxa.sooth.modules.system.model.DuplicateCheckVo;
import com.moxa.sooth.modules.system.security.DictQueryBlackListHandler;
import com.moxa.sooth.core.base.common.aspect.annotation.Api;
import lombok.extern.slf4j.Slf4j;
import cn.hutool.core.util.StrUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

/**
 * @Title: DuplicateCheckAction
 * @Description: 重复校验工具
 * @Author 张代浩
 * @Date 2019-03-25
 * @Version V1.0
 */
@Slf4j
@RestController
@RequestMapping("/sys/duplicate")
@Api(tags = "重复校验")
public class DuplicateCheckController {

    @Autowired
    SysDictMapper sysDictMapper;

    @Autowired
    DictQueryBlackListHandler dictQueryBlackListHandler;

    /**
     * 校验数据是否在系统中是否存在
     *
     * @return
     */
    @RequestMapping(value = "/check", method = RequestMethod.GET)

    public Result<String> doDuplicateCheck(DuplicateCheckVo duplicateCheckVo, HttpServletRequest request) {
        Long num = null;

        log.info("----duplicate check------：" + duplicateCheckVo.toString());
        //关联表字典（举例：sys_user,realname,id）
        //SQL注入校验（只限制非法串改数据库）
        final String[] sqlInjCheck = {duplicateCheckVo.getTableName(), duplicateCheckVo.getFieldName()};
        SqlInjectionUtil.filterContent(sqlInjCheck);
        // update-begin-author:taoyan date:20211227 for: JTC-25 【online报表】oracle 操作问题 录入弹框啥都不填直接保存 ①编码不是应该提示必填么？②报错也应该是具体文字提示，不是后台错误日志
        if (StrUtil.isEmpty(duplicateCheckVo.getFieldVal())) {
            Result rs = new Result();
            rs.setCode(500);
            rs.setSuccess(true);
            rs.setMessage("数据为空,不作处理！");
            return rs;
        }
        //update-begin-author:taoyan date:20220329 for: VUEN-223【安全漏洞】当前被攻击的接口
        String checkSql = duplicateCheckVo.getTableName() + SymbolConstant.COMMA + duplicateCheckVo.getFieldName() + SymbolConstant.COMMA;
        if (!dictQueryBlackListHandler.isPass(checkSql)) {
            return Result.error(dictQueryBlackListHandler.getError());
        }
        //update-end-author:taoyan date:20220329 for: VUEN-223【安全漏洞】当前被攻击的接口
        // update-end-author:taoyan date:20211227 for: JTC-25 【online报表】oracle 操作问题 录入弹框啥都不填直接保存 ①编码不是应该提示必填么？②报错也应该是具体文字提示，不是后台错误日志
        if (StrUtil.isNotBlank(duplicateCheckVo.getDataId())) {
            // [2].编辑页面校验
            num = sysDictMapper.duplicateCheckCountSql(duplicateCheckVo);
        } else {
            // [1].添加页面校验
            num = sysDictMapper.duplicateCheckCountSqlNoDataId(duplicateCheckVo);
        }

        if (num == null || num == 0) {
            // 该值可用
            return Result.ok("该值可用！");
        } else {
            // 该值不可用
            log.info("该值不可用，系统中已存在！");
            return Result.error("该值不可用，系统中已存在！");
        }
    }
}
