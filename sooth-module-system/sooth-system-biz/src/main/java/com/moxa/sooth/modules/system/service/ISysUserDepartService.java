package com.moxa.sooth.modules.system.service;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.moxa.sooth.modules.system.entity.SysUser;
import com.moxa.sooth.modules.system.entity.SysUserDepart;
import com.moxa.sooth.modules.system.model.DepartIdModel;

import java.util.List;

/**
 * <p>
 * SysUserDpeart用户组织机构service
 * </p>
 *
 * @Author ZhiLin
 */
public interface ISysUserDepartService extends IService<SysUserDepart> {


    /**
     * 根据指定用户id查询部门信息
     *
     * @param userId
     * @return
     */
    List<DepartIdModel> queryDepartIdsOfUser(String userId);


    /**
     * 根据部门id查询用户信息
     *
     * @param depId
     * @return
     */
    List<SysUser> queryUserByDepId(String depId);

    /**
     * 根据部门code，查询当前部门和下级部门的用户信息
     *
     * @param depCode  部门code
     * @param realname 真实姓名
     * @return List<SysUser>
     */
    List<SysUser> queryUserByDepCode(String depCode, String realname);

    /**
     * 用户组件数据查询
     *
     * @param departId
     * @param username
     * @param pageSize
     * @param pageNo
     * @param realname
     * @param id
     * @return
     */
    IPage<SysUser> queryDepartUserPageList(String departId, String username, String realname, int pageSize, int pageNo, String id);

    /**
     * 获取用户信息
     *
     * @param departId
     * @param keyword
     * @param pageSize
     * @param pageNo
     * @return
     */
    IPage<SysUser> getUserInformation(String departId, String keyword, Integer pageSize, Integer pageNo);
}
