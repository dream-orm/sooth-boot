package com.moxa.sooth.dict.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.core.base.entity.BaseEntity;
import com.moxa.sooth.dict.table.$SysCategory;
import lombok.Data;

/**
 * 分类字典
 */
@Data
@View($SysCategory.class)
public class SysCategory extends BaseEntity implements Comparable<SysCategory> {
    /**
     * 主键
     */
    private String id;
    /**
     * 父级节点
     */
    private String pid;
    /**
     * 类型名称
     */

    private String name;
    /**
     * 类型编码
     */

    private String code;
    /**
     * 所属部门
     */
    private String sysOrgCode;
    /**
     * 是否有子节点
     */

    private String hasChild;

    @Override
    public int compareTo(SysCategory o) {
        //比较条件我们定的是按照code的长度升序
        // <0：当前对象比传入对象小。
        // =0：当前对象等于传入对象。
        // >0：当前对象比传入对象大。
        int s = this.code.length() - o.code.length();
        return s;
    }

    @Override
    public String toString() {
        return "SysCategory [code=" + code + ", name=" + name + "]";
    }
}
