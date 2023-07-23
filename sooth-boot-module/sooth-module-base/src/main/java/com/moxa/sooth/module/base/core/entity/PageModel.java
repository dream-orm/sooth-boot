package com.moxa.sooth.module.base.core.entity;

import com.moxa.dream.system.config.Page;

public class PageModel {
    private int pageNo = 1;
    private int pageSize = 10;

    public Page toPage() {
        return new Page(pageNo, pageSize);
    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
}
