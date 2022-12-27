package com.moxa.sooth.modules.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.moxa.sooth.core.base.common.util.IpUtils;
import com.moxa.sooth.core.base.common.util.SpringContextUtils;
import com.moxa.sooth.core.base.common.util.oConvertUtils;
import com.moxa.sooth.modules.system.entity.SysRolePermission;
import com.moxa.sooth.modules.system.mapper.SysRolePermissionMapper;
import com.moxa.sooth.modules.system.service.ISysRolePermissionService;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

/**
 * <p>
 * 角色权限表 服务实现类
 * </p>
 *
 * @Author scott
 * @since 2018-12-21
 */
@Service
public class SysRolePermissionServiceImpl extends ServiceImpl<SysRolePermissionMapper, SysRolePermission> implements ISysRolePermissionService {

    @Override
    public void saveRolePermission(String roleId, String permissionIds) {
        String ip = "";
        try {
            //获取request
            HttpServletRequest request = SpringContextUtils.getHttpServletRequest();
            //获取IP地址
            ip = IpUtils.getIpAddr(request);
        } catch (Exception e) {
            ip = "127.0.0.1";
        }
        LambdaQueryWrapper<SysRolePermission> query = new QueryWrapper<SysRolePermission>().lambda().eq(SysRolePermission::getRoleId, roleId);
        this.remove(query);
        List<SysRolePermission> list = new ArrayList<SysRolePermission>();
        String[] arr = permissionIds.split(",");
        for (String p : arr) {
            if (oConvertUtils.isNotEmpty(p)) {
                SysRolePermission rolepms = new SysRolePermission(roleId, p);
                rolepms.setOperateDate(new Date());
                rolepms.setOperateIp(ip);
                list.add(rolepms);
            }
        }
        this.saveBatch(list);
    }

    @Override
    public void saveRolePermission(String roleId, String permissionIds, String lastPermissionIds) {
        String ip = "";
        try {
            //获取request
            HttpServletRequest request = SpringContextUtils.getHttpServletRequest();
            //获取IP地址
            ip = IpUtils.getIpAddr(request);
        } catch (Exception e) {
            ip = "127.0.0.1";
        }
        List<String> add = getDiff(lastPermissionIds, permissionIds);
        if (add != null && add.size() > 0) {
            List<SysRolePermission> list = new ArrayList<SysRolePermission>();
            for (String p : add) {
                if (oConvertUtils.isNotEmpty(p)) {
                    SysRolePermission rolepms = new SysRolePermission(roleId, p);
                    rolepms.setOperateDate(new Date());
                    rolepms.setOperateIp(ip);
                    list.add(rolepms);
                }
            }
            this.saveBatch(list);
        }

        List<String> delete = getDiff(permissionIds, lastPermissionIds);
        if (delete != null && delete.size() > 0) {
            for (String permissionId : delete) {
                this.remove(new QueryWrapper<SysRolePermission>().lambda().eq(SysRolePermission::getRoleId, roleId).eq(SysRolePermission::getPermissionId, permissionId));
            }
        }
    }

    /**
     * 从diff中找出main中没有的元素
     *
     * @param main
     * @param diff
     * @return
     */
    private List<String> getDiff(String main, String diff) {
        if (oConvertUtils.isEmpty(diff)) {
            return null;
        }
        if (oConvertUtils.isEmpty(main)) {
            return Arrays.asList(diff.split(","));
        }

        String[] mainArr = main.split(",");
        String[] diffArr = diff.split(",");
        Map<String, Integer> map = new HashMap(5);
        for (String string : mainArr) {
            map.put(string, 1);
        }
        List<String> res = new ArrayList<String>();
        for (String key : diffArr) {
            if (oConvertUtils.isNotEmpty(key) && !map.containsKey(key)) {
                res.add(key);
            }
        }
        return res;
    }

}
