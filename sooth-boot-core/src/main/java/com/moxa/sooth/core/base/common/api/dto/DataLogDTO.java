package com.moxa.sooth.core.base.common.api.dto;

import lombok.Data;


@Data
public class DataLogDTO {

    private String tableName;

    private String dataId;

    private String content;

    private String type;

    public DataLogDTO() {

    }

    public DataLogDTO(String tableName, String dataId, String content, String type) {
        this.tableName = tableName;
        this.dataId = dataId;
        this.content = content;
        this.type = type;
    }

    public DataLogDTO(String tableName, String dataId, String type) {
        this.tableName = tableName;
        this.dataId = dataId;
        this.type = type;
    }
}
