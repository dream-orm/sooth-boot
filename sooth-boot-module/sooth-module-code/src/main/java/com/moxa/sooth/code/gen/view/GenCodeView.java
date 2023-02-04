package com.moxa.sooth.code.gen.view;

import lombok.Data;

import java.util.List;

@Data
public class GenCodeView {
    private String author;
    private String entityName;
    private String moduleName;
    private String packageName;
    private String className;
    private String tableComment;
    private String tableName;
    private String baseClass;
    private String[]baseFields;
    private List<GenTableField> columns;
}
