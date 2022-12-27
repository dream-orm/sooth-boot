package com.moxa.sooth.code.gen.model;

import com.moxa.sooth.code.gen.view.GenTableField;
import lombok.Data;

import java.util.List;

@Data
public class GenCodeModel {
    private Long id;
    private Long groupId;
    private String author;
    private String templateName;
    private String entityName;
    private String moduleName;
    private String packageName;
    private String tableComment;
    private String tableName;
    private String searchType;
    private String validateType;
    private String formType;
    private String listType;
    private List<GenTableField> columns;
}
