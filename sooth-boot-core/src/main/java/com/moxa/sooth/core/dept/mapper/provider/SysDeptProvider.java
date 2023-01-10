package com.moxa.sooth.core.dept.mapper.provider;

import cn.hutool.core.collection.CollUtil;
import com.moxa.dream.system.core.resultsethandler.ResultSetHandler;
import com.moxa.dream.system.provider.ActionProvider;
import com.moxa.dream.template.resulthandler.Tree;
import com.moxa.dream.template.resulthandler.TreeResultSetHandler;
import com.moxa.dream.template.resulthandler.TreeUtil;
import com.moxa.sooth.core.user.view.SysUser;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

public class SysDeptProvider {
    public ActionProvider selectDeepTree() {
        return new ActionProvider() {
            @Override
            public String sql() {
                return "select id,parent_id from sys_dept";
            }

            @Override
            public Class<? extends Collection> rowType() {
                return List.class;
            }

            @Override
            public Class<?> colType() {
                return SysUser.class;
            }

            @Override
            public ResultSetHandler resultSetHandler() {
                return ((resultSet, mappedStatement, session) -> {
                    List<Tree> treeList = (List<Tree>) new TreeResultSetHandler().result(resultSet, mappedStatement, session);
                    List<Long> treeIdList = ((Map<String, List<Long>>) mappedStatement.getArg()).get("list");
                    List<? extends Tree> deepTreeList = TreeUtil.deepTree(treeList, treeIdList);
                    return deepTreeId(deepTreeList);
                });
            }

            private List<Long> deepTreeId(List<? extends Tree> deepTreeList) {
                List<Long> deepTreeIdList = new ArrayList<>();
                if (CollUtil.isNotEmpty(deepTreeList)) {
                    for (Tree<Long> tree : deepTreeList) {
                        deepTreeIdList.add(tree.getTreeId());
                        List<? extends Tree> children = tree.getChildren();
                        if (CollUtil.isNotEmpty(children)) {
                            deepTreeIdList.addAll(deepTreeId(children));
                        }
                    }
                }
                return deepTreeIdList;
            }
        };
    }
}
