package com.moxa.sooth.modules.system.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.moxa.sooth.core.base.common.aspect.annotation.Api;
import com.moxa.sooth.core.base.common.aspect.annotation.AutoLog;
import com.moxa.sooth.core.base.common.system.query.QueryGenerator;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.modules.system.entity.SysPosition;
import com.moxa.sooth.modules.system.service.ISysPositionService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;

/**
 * @Description: 职务表
 * @Author: jeecg-boot
 * @Date: 2019-09-19
 * @Version: V1.0
 */
@Slf4j
@Api(tags = "职务表")
@RestController
@RequestMapping("/sys/position")
public class SysPositionController {

    @Autowired
    private ISysPositionService sysPositionService;

    /**
     * 分页列表查询
     *
     * @param sysPosition
     * @param pageNo
     * @param pageSize
     * @param req
     * @return
     */
    @AutoLog(value = "职务表-分页列表查询")

    @GetMapping(value = "/list")
    public Result<IPage<SysPosition>> queryPageList(SysPosition sysPosition,
                                                    @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo,
                                                    @RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize,
                                                    HttpServletRequest req) {
        Result<IPage<SysPosition>> result = new Result<IPage<SysPosition>>();
        QueryWrapper<SysPosition> queryWrapper = QueryGenerator.initQueryWrapper(sysPosition, req.getParameterMap());
        Page<SysPosition> page = new Page<SysPosition>(pageNo, pageSize);
        IPage<SysPosition> pageList = sysPositionService.page(page, queryWrapper);
        result.setSuccess(true);
        result.setResult(pageList);
        return result;
    }

    /**
     * 添加
     *
     * @param sysPosition
     * @return
     */
    @AutoLog(value = "职务表-添加")

    @PostMapping(value = "/add")
    public Result<SysPosition> add(@RequestBody SysPosition sysPosition) {
        Result<SysPosition> result = new Result<SysPosition>();
        try {
            sysPositionService.save(sysPosition);
            result.success("添加成功！");
        } catch (Exception e) {
            log.error(e.getMessage(), e);
            result.error500("操作失败");
        }
        return result;
    }

    /**
     * 编辑
     *
     * @param sysPosition
     * @return
     */
    @AutoLog(value = "职务表-编辑")

    @RequestMapping(value = "/edit", method = {RequestMethod.PUT, RequestMethod.POST})
    public Result<SysPosition> edit(@RequestBody SysPosition sysPosition) {
        Result<SysPosition> result = new Result<SysPosition>();
        SysPosition sysPositionEntity = sysPositionService.getById(sysPosition.getId());
        if (sysPositionEntity == null) {
            result.error500("未找到对应实体");
        } else {
            boolean ok = sysPositionService.updateById(sysPosition);
            //TODO 返回false说明什么？
            if (ok) {
                result.success("修改成功!");
            }
        }

        return result;
    }

    /**
     * 通过id删除
     *
     * @param id
     * @return
     */
    @AutoLog(value = "职务表-通过id删除")

    @DeleteMapping(value = "/delete")
    public Result<?> delete(@RequestParam(name = "id", required = true) String id) {
        try {
            sysPositionService.removeById(id);
        } catch (Exception e) {
            log.error("删除失败", e.getMessage());
            return Result.error("删除失败!");
        }
        return Result.ok("删除成功!");
    }

    /**
     * 批量删除
     *
     * @param ids
     * @return
     */
    @AutoLog(value = "职务表-批量删除")

    @DeleteMapping(value = "/deleteBatch")
    public Result<SysPosition> deleteBatch(@RequestParam(name = "ids", required = true) String ids) {
        Result<SysPosition> result = new Result<SysPosition>();
        if (ids == null || "".equals(ids.trim())) {
            result.error500("参数不识别！");
        } else {
            this.sysPositionService.removeByIds(Arrays.asList(ids.split(",")));
            result.success("删除成功!");
        }
        return result;
    }

    /**
     * 通过id查询
     *
     * @param id
     * @return
     */
    @AutoLog(value = "职务表-通过id查询")

    @GetMapping(value = "/queryById")
    public Result<SysPosition> queryById(@RequestParam(name = "id", required = true) String id) {
        Result<SysPosition> result = new Result<SysPosition>();
        SysPosition sysPosition = sysPositionService.getById(id);
        if (sysPosition == null) {
            result.error500("未找到对应实体");
        } else {
            result.setResult(sysPosition);
            result.setSuccess(true);
        }
        return result;
    }

    /**
     * 通过code查询
     *
     * @param code
     * @return
     */
    @AutoLog(value = "职务表-通过code查询")

    @GetMapping(value = "/queryByCode")
    public Result<SysPosition> queryByCode(@RequestParam(name = "code", required = true) String code) {
        Result<SysPosition> result = new Result<SysPosition>();
        QueryWrapper<SysPosition> queryWrapper = new QueryWrapper<SysPosition>();
        queryWrapper.eq("code", code);
        SysPosition sysPosition = sysPositionService.getOne(queryWrapper);
        if (sysPosition == null) {
            result.error500("未找到对应实体");
        } else {
            result.setResult(sysPosition);
            result.setSuccess(true);
        }
        return result;
    }
}
