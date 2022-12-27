package com.moxa.sooth.modules.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.moxa.sooth.core.base.common.exception.SoothBootException;
import com.moxa.sooth.modules.system.entity.SysCategory;
import com.moxa.sooth.modules.system.model.TreeSelectModel;

import java.util.List;
import java.util.Map;

/**
 * @Description: 分类字典
 * @Author: jeecg-boot
 * @Date: 2019-05-29
 * @Version: V1.0
 */
public interface ISysCategoryService extends IService<SysCategory> {

    /**
     * 根节点父ID的值
     */
    public static final String ROOT_PID_VALUE = "0";

    /**
     * 存在子节点
     */
    public static final String HAS_CHILD = "1";

    /**
     * 添加分类字典
     *
     * @param sysCategory
     */
    void addSysCategory(SysCategory sysCategory);

    /**
     * 修改分类字典
     *
     * @param sysCategory
     */
    void updateSysCategory(SysCategory sysCategory);

    /**
     * 根据父级编码加载分类字典的数据
     *
     * @param pcode
     * @return
     * @throws SoothBootException
     */
    public List<TreeSelectModel> queryListByCode(String pcode) throws SoothBootException;

    /**
     * 根据pid查询子节点集合
     *
     * @param pid
     * @return
     */
    public List<TreeSelectModel> queryListByPid(String pid);

    /**
     * 根据pid查询子节点集合,支持查询条件
     *
     * @param pid
     * @param condition
     * @return
     */
    public List<TreeSelectModel> queryListByPid(String pid, Map<String, String> condition);

    /**
     * 根据code查询id
     *
     * @param code
     * @return
     */
    public String queryIdByCode(String code);

    /**
     * 删除节点时同时删除子节点及修改父级节点
     *
     * @param ids
     */
    void deleteSysCategory(String ids);

    /**
     * 分类字典控件数据回显[表单页面]
     *
     * @param ids
     * @return
     */
    List<String> loadDictItem(String ids);

    /**
     * 分类字典控件数据回显[表单页面]
     *
     * @param ids
     * @param delNotExist 是否移除不存在的项，设为false如果某个key不存在数据库中，则直接返回key本身
     * @return
     */
    List<String> loadDictItem(String ids, boolean delNotExist);

}
