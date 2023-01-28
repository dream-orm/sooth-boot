package com.moxa.sooth.core.button.view;

import com.moxa.dream.system.annotation.Ignore;
import com.moxa.dream.template.resulthandler.Tree;
import lombok.Data;

import java.util.List;
@Data
public class MenuButton implements Tree<Long> {
    private Long id;
    private Long parentId;
    private String name;
    private String type;
    private boolean disableCheckbox;
    @Ignore
    private List<MenuButton>children;

    @Override
    public Long getTreeId() {
        return id;
    }

    @Override
    public Long getParentId() {
        return parentId;
    }

    @Override
    public List<? extends Tree> getChildren() {
        return children;
    }

    @Override
    public void setChildren(List children) {
        this.children=children;
    }
}
