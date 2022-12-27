package com.moxa.sooth.system.api;

import com.alibaba.fastjson.JSONObject;
import com.moxa.sooth.core.base.common.api.CommonAPI;
import com.moxa.sooth.core.base.common.api.dto.DataLogDTO;
import com.moxa.sooth.core.base.common.api.dto.OnlineAuthDTO;
import com.moxa.sooth.core.base.common.system.vo.*;

import java.util.List;
import java.util.Map;
import java.util.Set;

public interface ISysBaseAPI extends CommonAPI {


    /**
     * 6根据用户id查询用户信息
     *
     * @param id
     * @return
     */
    LoginUser getUserById(String id);

    /**
     * 7通过用户账号查询角色集合
     *
     * @param username
     * @return
     */
    List<String> getRolesByUsername(String username);

    /**
     * 8通过用户账号查询部门集合
     *
     * @param username
     * @return 部门 id
     */
    List<String> getDepartIdsByUsername(String username);

    /**
     * 9通过用户账号查询部门 name
     *
     * @param username
     * @return 部门 name
     */
    List<String> getDepartNamesByUsername(String username);


    /**
     * 11查询所有的父级字典，按照create_time排序
     *
     * @return List<DictModel> 字典集合
     */
    List<DictModel> queryAllDict();

    /**
     * 12查询所有分类字典
     *
     * @return
     */
    List<SysCategoryModel> queryAllSysCategory();


    /**
     * 14查询所有部门 作为字典信息 id -->value,departName -->text
     *
     * @return
     */
    List<DictModel> queryAllDepartBackDictModel();

    /**
     * 16查询表字典 支持过滤数据
     *
     * @param table
     * @param text
     * @param code
     * @param filterSql
     * @return
     */
    List<DictModel> queryFilterTableDictInfo(String table, String text, String code, String filterSql);

    /**
     * 17查询指定table的 text code 获取字典，包含text和value
     *
     * @param table
     * @param text
     * @param code
     * @param keyArray
     * @return
     */
    @Deprecated
    List<String> queryTableDictByKeys(String table, String text, String code, String[] keyArray);

    /**
     * 18查询所有用户 返回ComboModel
     *
     * @return
     */
    List<ComboModel> queryAllUserBackCombo();

    /**
     * 19分页查询用户 返回JSONObject
     *
     * @param userIds  多个用户id
     * @param pageNo   当前页数
     * @param pageSize 每页显示条数
     * @return
     */
    JSONObject queryAllUser(String userIds, Integer pageNo, Integer pageSize);

    /**
     * 20获取所有角色
     *
     * @return
     */
    List<ComboModel> queryAllRole();

    /**
     * 21获取所有角色 带参
     *
     * @param roleIds 默认选中角色
     * @return
     */
    List<ComboModel> queryAllRole(String[] roleIds);

    /**
     * 22通过用户账号查询角色Id集合
     *
     * @param username
     * @return
     */
    List<String> getRoleIdsByUsername(String username);

    /**
     * 23通过部门编号查询部门id
     *
     * @param orgCode
     * @return
     */
    String getDepartIdsByOrgCode(String orgCode);

    /**
     * 24查询所有部门
     *
     * @return
     */
    List<SysDepartModel> getAllSysDepart();

    /**
     * 25查找父级部门
     *
     * @param departId
     * @return
     */
    DictModel getParentDepartId(String departId);

    /**
     * 26根据部门Id获取部门负责人
     *
     * @param deptId
     * @return
     */
    List<String> getDeptHeadByDepId(String deptId);

    /**
     * 28根据id获取所有参与用户
     *
     * @param userIds 多个用户id
     * @return
     */
    List<LoginUser> queryAllUserByIds(String[] userIds);

    /**
     * 30根据name获取所有参与用户
     *
     * @param userNames 多个用户账户
     * @return
     */
    List<LoginUser> queryUserByNames(String[] userNames);


    /**
     * 31获取用户的角色集合
     *
     * @param username
     * @return
     */
    Set<String> getUserRoleSet(String username);

    /**
     * 32获取用户的权限集合
     *
     * @param username
     * @return
     */
    Set<String> getUserPermissionSet(String username);

    /**
     * 33判断是否有online访问的权限
     *
     * @param onlineAuthDTO
     * @return
     */
    boolean hasOnlineAuth(OnlineAuthDTO onlineAuthDTO);

    /**
     * 34通过部门id获取部门全部信息
     *
     * @param id 部门id
     * @return SysDepartModel对象
     */
    SysDepartModel selectAllById(String id);

    /**
     * 35根据用户id查询用户所属公司下所有用户ids
     *
     * @param userId
     * @return
     */
    List<String> queryDeptUsersByUserId(String userId);

    /**
     * 36根据多个用户账号(逗号分隔)，查询返回多个用户信息
     *
     * @param usernames
     * @return
     */
    List<JSONObject> queryUsersByUsernames(String usernames);

    /**
     * 37根据多个用户ID(逗号分隔)，查询返回多个用户信息
     *
     * @param ids
     * @return
     */
    List<JSONObject> queryUsersByIds(String ids);

    /**
     * 38根据多个部门编码(逗号分隔)，查询返回多个部门信息
     *
     * @param orgCodes
     * @return
     */
    List<JSONObject> queryDepartsByOrgcodes(String orgCodes);

    /**
     * 39根据多个部门id(逗号分隔)，查询返回多个部门信息
     *
     * @param ids
     * @return
     */
    List<JSONObject> queryDepartsByIds(String ids);

    /**
     * 41 获取公司下级部门和公司下所有用户信息
     *
     * @param orgCode
     * @return List<Map>
     */
    List<Map> getDeptUserByOrgCode(String orgCode);

    /**
     * 查询分类字典翻译
     *
     * @param ids 多个分类字典id
     * @return List<String>
     */
    List<String> loadCategoryDictItem(String ids);

    /**
     * 根据字典code加载字典text
     *
     * @param dictCode 顺序：tableName,text,code
     * @param keys     要查询的key
     * @return
     */
    List<String> loadDictItem(String dictCode, String keys);

    /**
     * 根据字典code查询字典项
     *
     * @param dictCode 顺序：tableName,text,code
     * @param dictCode 要查询的key
     * @return
     */
    List<DictModel> getDictItems(String dictCode);

    /**
     * 根据多个字典code查询多个字典项
     *
     * @param dictCodeList
     * @return key = dictCode ； value=对应的字典项
     */
    Map<String, List<DictModel>> getManyDictItems(List<String> dictCodeList);

    /**
     * 【JSearchSelectTag下拉搜索组件专用接口】
     * 大数据量的字典表 走异步加载  即前端输入内容过滤数据
     *
     * @param dictCode 字典code格式：table,text,code
     * @param keyword  过滤关键字
     * @param pageSize 分页条数
     * @return
     */
    List<DictModel> loadDictItemByKeyword(String dictCode, String keyword, Integer pageSize);

    /**
     * 新增数据日志
     *
     * @param dataLogDto
     */
    void saveDataLog(DataLogDTO dataLogDto);

    /**
     * 添加文件到知识库
     *
     * @param sysFilesModel
     */
    void addSysFiles(SysFilesModel sysFilesModel);

    /**
     * 通过文件路径获取文件id
     *
     * @param fileId
     */
    String getFileUrl(String fileId);

    /**
     * 更新头像
     *
     * @param loginUser
     */
    void updateAvatar(LoginUser loginUser);

}
