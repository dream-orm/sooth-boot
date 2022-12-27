package com.moxa.sooth.modules.system.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.core.base.common.system.query.QueryGenerator;
import com.moxa.sooth.core.base.common.util.oConvertUtils;
import com.moxa.sooth.modules.system.entity.SysLog;
import com.moxa.sooth.modules.system.entity.SysRole;
import com.moxa.sooth.modules.system.service.ISysLogService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;

/**
 * <p>
 * 系统日志表 前端控制器
 * </p>
 *
 * @Author zhangweijian
 * @since 2018-12-26
 */
@RestController
@RequestMapping("/sys/log")
@Slf4j
public class SysLogController {

    /**
     * 全部清除
     */
    private static final String ALL_ClEAR = "allclear";
    @Autowired
    private ISysLogService sysLogService;

    /**
     * @param syslog
     * @param pageNo
     * @param pageSize
     * @param req
     * @return
     * @功能：查询日志记录
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public Result<IPage<SysLog>> queryPageList(SysLog syslog, @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo,
                                               @RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize, HttpServletRequest req) {
        Result<IPage<SysLog>> result = new Result<IPage<SysLog>>();
        QueryWrapper<SysLog> queryWrapper = QueryGenerator.initQueryWrapper(syslog, req.getParameterMap());
        Page<SysLog> page = new Page<SysLog>(pageNo, pageSize);
        //日志关键词
        String keyWord = req.getParameter("keyWord");
        if (oConvertUtils.isNotEmpty(keyWord)) {
            queryWrapper.like("log_content", keyWord);
        }
        //TODO 过滤逻辑处理
        //TODO begin、end逻辑处理
        //TODO 一个强大的功能，前端传一个字段字符串，后台只返回这些字符串对应的字段
        //创建时间/创建人的赋值
        IPage<SysLog> pageList = sysLogService.page(page, queryWrapper);
        log.info("查询当前页：" + pageList.getCurrent());
        log.info("查询当前页数量：" + pageList.getSize());
        log.info("查询结果数量：" + pageList.getRecords().size());
        log.info("数据总数：" + pageList.getTotal());
        result.setSuccess(true);
        result.setResult(pageList);
        return result;
    }

    /**
     * @param id
     * @return
     * @功能：删除单个日志记录
     */
    @RequestMapping(value = "/delete", method = RequestMethod.DELETE)
    public Result<SysLog> delete(@RequestParam(name = "id", required = true) String id) {
        Result<SysLog> result = new Result<SysLog>();
        SysLog sysLog = sysLogService.getById(id);
        if (sysLog == null) {
            result.error500("未找到对应实体");
        } else {
            boolean ok = sysLogService.removeById(id);
            if (ok) {
                result.success("删除成功!");
            }
        }
        return result;
    }

    /**
     * @param ids
     * @return
     * @功能：批量，全部清空日志记录
     */
    @RequestMapping(value = "/deleteBatch", method = RequestMethod.DELETE)
    public Result<SysRole> deleteBatch(@RequestParam(name = "ids", required = true) String ids) {
        Result<SysRole> result = new Result<SysRole>();
        if (ids == null || "".equals(ids.trim())) {
            result.error500("参数不识别！");
        } else {
            if (ALL_ClEAR.equals(ids)) {
                this.sysLogService.removeAll();
                result.success("清除成功!");
            }
            this.sysLogService.removeByIds(Arrays.asList(ids.split(",")));
            result.success("删除成功!");
        }
        return result;
    }


}
