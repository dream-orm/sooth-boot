package com.moxa.sooth.core.interfacePermission.service.impl;

import cn.hutool.core.collection.CollUtil;
import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.core.base.config.App;
import com.moxa.sooth.core.base.entity.AppMapping;
import com.moxa.sooth.core.interfacePermission.mapper.SysInterfacePermissionMapper;
import com.moxa.sooth.core.interfacePermission.service.ISysInterfacePermissionService;
import com.moxa.sooth.core.interfacePermission.table.SysInterfacePermission;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class SysInterfacePermissionServiceImpl extends ServiceImpl<SysInterfacePermission, SysInterfacePermission> implements ISysInterfacePermissionService {

    @Autowired
    private SysInterfacePermissionMapper interfacePermissionMapper;

    @Override
    public List<Map<String, Object>> listInterfacePermissionTree() {
        Map<String, List<AppMapping>> groupMap = App.APP_MAPPING.values().stream().collect(Collectors.groupingBy(AppMapping::getBizModule));
        List<Map<String, Object>> resultList = new ArrayList<>();
        if (CollUtil.isNotEmpty(groupMap)) {
            Iterator<Map.Entry<String, List<AppMapping>>> entryIterator = groupMap.entrySet().iterator();
            int i = 0;
            while (entryIterator.hasNext()) {
                Map.Entry<String, List<AppMapping>> entry = entryIterator.next();
                String menuName = entry.getKey();
                List<AppMapping> mappingList = entry.getValue();
                Collections.sort(mappingList, Comparator.comparingInt(o -> o.getPermission().hashCode()));
                Map<String, Object> resultMap = new HashMap<>();
                resultMap.put("requestUrl", String.valueOf(i++));
                resultMap.put("permission", menuName);
                resultMap.put("children", mappingList);
                resultList.add(resultMap);
            }
        }
        return resultList;
    }

    @Override
    public Set<String> getPermissionUrls(Long userId) {
        return interfacePermissionMapper.getPermissionUrls(userId);
    }

    @Override
    public List<SysInterfacePermission> getPermissions(Long roleId) {
        return interfacePermissionMapper.getPermissions(roleId);
    }

    @Override
    public void saveInterfacePermission(Long roleId, List<String> interfacePermissionList) {
        List<SysInterfacePermission> interfacePermissions = getPermissions(roleId);
        Map<String, Long> urlMap = new HashMap<>();
        for (SysInterfacePermission interfacePermission : interfacePermissions) {
            urlMap.put(interfacePermission.getUrl(), interfacePermission.getId());
        }
        List<SysInterfacePermission> saveSysInterfaces = new ArrayList<>();
        for (String url : interfacePermissionList) {
            if (urlMap.remove(url) == null) {
                SysInterfacePermission sysInterfacePermission = new SysInterfacePermission();
                sysInterfacePermission.setRoleId(roleId);
                sysInterfacePermission.setUrl(url);
                saveSysInterfaces.add(sysInterfacePermission);
            }
        }
        if (CollUtil.isNotEmpty(urlMap)) {
            deleteByIds(urlMap.values());
        }
        if (CollUtil.isNotEmpty(saveSysInterfaces)) {
            batchInsert(saveSysInterfaces);
        }
    }
}
