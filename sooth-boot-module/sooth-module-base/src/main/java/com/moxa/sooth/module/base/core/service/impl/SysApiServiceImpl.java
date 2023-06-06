package com.moxa.sooth.module.base.core.service.impl;


import cn.hutool.core.util.StrUtil;
import com.moxa.dream.antlr.exception.AntlrException;
import com.moxa.dream.antlr.expr.SymbolExpr;
import com.moxa.dream.antlr.factory.InvokerFactory;
import com.moxa.dream.antlr.read.ExprReader;
import com.moxa.dream.antlr.smt.Statement;
import com.moxa.dream.antlr.sql.ToSQL;
import com.moxa.dream.mate.block.invoker.BlockInvoker;
import com.moxa.dream.template.mapper.TemplateMapper;
import com.moxa.dream.util.common.ObjectMap;
import com.moxa.sooth.module.base.buttonPermission.service.ISysButtonPermissionService;
import com.moxa.sooth.module.base.core.entity.LoginUser;
import com.moxa.sooth.module.base.core.exception.SoothException;
import com.moxa.sooth.module.base.core.service.SysApiService;
import com.moxa.sooth.module.base.dict.service.ISysDictService;
import com.moxa.sooth.module.base.interfacePermission.service.ISysInterfacePermissionService;
import com.moxa.sooth.module.base.role.service.ISysRoleService;
import com.moxa.sooth.module.base.user.service.ISysUserService;
import com.moxa.sooth.module.base.user.view.SysUser;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Set;


@Slf4j
@Service
public class SysApiServiceImpl implements SysApiService {
    @Autowired
    private ISysUserService sysUserService;
    @Autowired
    private ISysDictService sysDictService;
    @Autowired
    private ISysRoleService sysRoleService;
    @Autowired
    private ISysButtonPermissionService buttonPermissionService;
    @Autowired
    private ISysInterfacePermissionService interfacePermissionService;
    @Autowired
    private TemplateMapper templateMapper;
    @Autowired
    private ToSQL toSQL;
    @Autowired
    private InvokerFactory invokerFactory;
    @Override
    public LoginUser getLoginUser(String username) {
        SysUser sysUser = sysUserService.selectOneUser(username);
        if (sysUser == null) {
            throw new SoothException("用户不存在");
        }
        Long id = sysUser.getId();
        LoginUser loginUser = new LoginUser();
        loginUser.setId(id);
        loginUser.setUsername(sysUser.getUsername());
        loginUser.setPassword(sysUser.getPassword());
        loginUser.setRealname(sysUser.getRealname());
        loginUser.setAvator(sysUser.getAvatar());
        loginUser.setSex(sysUser.getSex());
        loginUser.setPhone(sysUser.getPhone());
        Set<String> permissionUrls = interfacePermissionService.getPermissionUrls(id);
        loginUser.setPermissionUrls(permissionUrls);
        Set<String> roles = sysRoleService.getRoles(id);
        loginUser.setRoles(roles);
        Set<String> permCodes = buttonPermissionService.getPermCodes(id);
        loginUser.setPermCodes(permCodes);
        return loginUser;
    }

    @Override
    public String getDictItemName(String table, String name, String code, Object value) {
        if (StrUtil.isBlank(table)) {
            return sysDictService.getDictItemName(code, value);
        } else {
            String nameTans=name;
            BlockInvoker blockInvoker=(BlockInvoker) invokerFactory.getInvoker(BlockInvoker.FUNCTION,BlockInvoker.DEFAULT_NAMESPACE);
            if(blockInvoker!=null&&blockInvoker.getFilterSet().contains(name)) {
                try {
                    Statement statement = new SymbolExpr(new ExprReader("`" + name + "`")).expr();
                    nameTans = toSQL.toStr(statement, null, null);
                } catch (AntlrException e) {
                    throw new SoothException(e.getMessage());
                }
            }
            return templateMapper.selectOne("select " + nameTans + " from " + table + " where " + code + "=@?(value)", new ObjectMap(value), String.class);
        }
    }
}
