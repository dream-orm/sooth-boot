package com.moxa.sooth.code.gen.model;

import lombok.Data;

import java.util.List;

@Data
public class GenCodeModel {
    private Long id;
    private Long baseId;
    private List<Long> templateIds;
    private String entityName;
    private String moduleName;
    private String packageName;
    private String className;
    private String tableComment;
}
