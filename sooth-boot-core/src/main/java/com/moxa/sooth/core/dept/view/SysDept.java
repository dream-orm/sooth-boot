package com.moxa.sooth.core.dept.view;

import com.moxa.dream.system.annotation.Extract;
import com.moxa.dream.system.annotation.View;
import com.moxa.dream.template.resulthandler.Tree;
import com.moxa.sooth.core.base.common.aspect.annotation.Dict;
import com.moxa.sooth.core.base.dream.DictExtractor;
import com.moxa.sooth.core.base.dream.annotation.Unique;
import com.moxa.sooth.core.base.entity.BaseEntity;
import com.moxa.sooth.core.dept.table.$SysDept;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
@View($SysDept.class)
public class SysDept extends BaseEntity implements Tree {
    private List<SysDept> children = new ArrayList<>();
    /**
     * ID
     */
    private Long id;
    /**
     * 父机构ID
     */
    private String parentId;
    /**
     * 机构/部门名称
     */

    private String deptName;

    @Unique(msg="部门编码已存在")
    private String deptCode;
    /**
     * 排序
     */

    private Double orderNo;
    /**
     * 描述
     */

    private String description;
    @Dict(dicCode = "status")
    @Extract(DictExtractor.class)
    private Integer status;
    /**
     * 删除状态（0，正常，1已删除）
     */
    @Extract(DictExtractor.class)
    private String delFlag;

    @Override
    public String getTreeId() {
        return String.valueOf(id);
    }

    @Override
    public List<? extends Tree> getChildren() {
        return children;
    }
}
