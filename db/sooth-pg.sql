/*
 Navicat Premium Data Transfer

 Source Server         : 194
 Source Server Type    : PostgreSQL
 Source Server Version : 90224
 Source Host           : 192.168.0.194:5432
 Source Catalog        : sooth
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90224
 File Encoding         : 65001

 Date: 02/02/2023 09:05:05
*/


-- ----------------------------
-- Table structure for gen_base_class
-- ----------------------------
DROP TABLE IF EXISTS "public"."gen_base_class";
CREATE TABLE "public"."gen_base_class" (
  "id" int8 NOT NULL,
  "class_name" varchar(200) COLLATE "pg_catalog"."default",
  "fields" varchar(500) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_by" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."gen_base_class"."id" IS 'id';
COMMENT ON COLUMN "public"."gen_base_class"."class_name" IS '基类全类名';
COMMENT ON COLUMN "public"."gen_base_class"."fields" IS '基类字段，多个用英文逗号分隔';
COMMENT ON COLUMN "public"."gen_base_class"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."gen_base_class"."update_time" IS '创建时间';
COMMENT ON COLUMN "public"."gen_base_class"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."gen_base_class"."update_by" IS '更新人';
COMMENT ON TABLE "public"."gen_base_class" IS '基类管理';

-- ----------------------------
-- Records of gen_base_class
-- ----------------------------
INSERT INTO "public"."gen_base_class" VALUES (88010129606, 'com.moxa.MyTest', 'hello,world', '2023-01-16 21:59:18', '2023-01-19 21:31:57', 'admin', 'admin');

-- ----------------------------
-- Table structure for gen_field_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."gen_field_type";
CREATE TABLE "public"."gen_field_type" (
  "id" int8 NOT NULL,
  "column_type" varchar(200) COLLATE "pg_catalog"."default",
  "attr_type" varchar(200) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."gen_field_type"."id" IS 'id';
COMMENT ON COLUMN "public"."gen_field_type"."column_type" IS '字段类型';
COMMENT ON COLUMN "public"."gen_field_type"."attr_type" IS '属性类型';
COMMENT ON TABLE "public"."gen_field_type" IS '字段类型管理';

-- ----------------------------
-- Records of gen_field_type
-- ----------------------------
INSERT INTO "public"."gen_field_type" VALUES (-7, 'BIT', 'Byte');
INSERT INTO "public"."gen_field_type" VALUES (-6, 'TINYINT', 'Byte');
INSERT INTO "public"."gen_field_type" VALUES (5, 'SMALLINT', 'Short');
INSERT INTO "public"."gen_field_type" VALUES (4, 'INTEGER', 'Integer');
INSERT INTO "public"."gen_field_type" VALUES (-5, 'BIGINT', 'Long');
INSERT INTO "public"."gen_field_type" VALUES (6, 'FLOAT', 'Float');
INSERT INTO "public"."gen_field_type" VALUES (7, 'REAL', 'Float');
INSERT INTO "public"."gen_field_type" VALUES (8, 'DOUBLE', 'Double');
INSERT INTO "public"."gen_field_type" VALUES (2, 'NUMERIC', 'java.math.BigDecimal');
INSERT INTO "public"."gen_field_type" VALUES (3, 'DECIMAL', 'java.math.BigDecimal');
INSERT INTO "public"."gen_field_type" VALUES (1, 'CHAR', 'String');
INSERT INTO "public"."gen_field_type" VALUES (12, 'VARCHAR', 'String');
INSERT INTO "public"."gen_field_type" VALUES (-1, 'LONGVARCHAR', 'String');
INSERT INTO "public"."gen_field_type" VALUES (91, 'DATE', 'java.util.Date');
INSERT INTO "public"."gen_field_type" VALUES (92, 'TIME', 'java.sql.Time');
INSERT INTO "public"."gen_field_type" VALUES (93, 'TIMESTAMP', 'java.util.Date');
INSERT INTO "public"."gen_field_type" VALUES (-2, 'BINARY', 'Byte[]');
INSERT INTO "public"."gen_field_type" VALUES (-3, 'VARBINARY', 'Byte[]');
INSERT INTO "public"."gen_field_type" VALUES (-4, 'LONGVARBINARY', 'Byte[]');
INSERT INTO "public"."gen_field_type" VALUES (0, 'NULL', 'Object');
INSERT INTO "public"."gen_field_type" VALUES (1111, 'OTHER', 'Object');
INSERT INTO "public"."gen_field_type" VALUES (2000, 'JAVA_OBJECT', 'Object');
INSERT INTO "public"."gen_field_type" VALUES (2001, 'DISTINCT', 'Object');
INSERT INTO "public"."gen_field_type" VALUES (2002, 'STRUCT', 'Object');
INSERT INTO "public"."gen_field_type" VALUES (2003, 'ARRAY', 'Object');
INSERT INTO "public"."gen_field_type" VALUES (2004, 'BLOB', 'java.io.InputStream');
INSERT INTO "public"."gen_field_type" VALUES (2005, 'CLOB', 'String');
INSERT INTO "public"."gen_field_type" VALUES (2006, 'REF', 'Object');
INSERT INTO "public"."gen_field_type" VALUES (70, 'DATALINK', 'Object');
INSERT INTO "public"."gen_field_type" VALUES (16, 'BOOLEAN', 'Boolean');
INSERT INTO "public"."gen_field_type" VALUES (-8, 'ROWID', 'Object');
INSERT INTO "public"."gen_field_type" VALUES (-15, 'NCHAR', 'String');
INSERT INTO "public"."gen_field_type" VALUES (-9, 'NVARCHAR', 'String');
INSERT INTO "public"."gen_field_type" VALUES (-16, 'LONGNVARCHAR', 'String');
INSERT INTO "public"."gen_field_type" VALUES (2011, 'NCLOB', 'String');
INSERT INTO "public"."gen_field_type" VALUES (2009, 'SQLXML', 'Object');
INSERT INTO "public"."gen_field_type" VALUES (2012, 'REF_CURSOR', 'Object');
INSERT INTO "public"."gen_field_type" VALUES (2013, 'TIME_WITH_TIMEZONE', 'Object');
INSERT INTO "public"."gen_field_type" VALUES (2014, 'TIMESTAMP_WITH_TIMEZONE', 'Object');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS "public"."gen_table";
CREATE TABLE "public"."gen_table" (
  "id" int8 NOT NULL,
  "table_name" varchar(200) COLLATE "pg_catalog"."default",
  "class_name" varchar(200) COLLATE "pg_catalog"."default",
  "table_comment" varchar(200) COLLATE "pg_catalog"."default",
  "author" varchar(200) COLLATE "pg_catalog"."default",
  "email" varchar(200) COLLATE "pg_catalog"."default",
  "package_name" varchar(200) COLLATE "pg_catalog"."default",
  "version" varchar(200) COLLATE "pg_catalog"."default",
  "generator_type" int2,
  "backend_path" varchar(500) COLLATE "pg_catalog"."default",
  "frontend_path" varchar(500) COLLATE "pg_catalog"."default",
  "module_name" varchar(200) COLLATE "pg_catalog"."default",
  "function_name" varchar(200) COLLATE "pg_catalog"."default",
  "form_layout" int2,
  "datasource_id" int8,
  "baseclass_id" int8,
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_by" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."gen_table"."id" IS 'id';
COMMENT ON COLUMN "public"."gen_table"."table_name" IS '表名';
COMMENT ON COLUMN "public"."gen_table"."class_name" IS '类名';
COMMENT ON COLUMN "public"."gen_table"."table_comment" IS '说明';
COMMENT ON COLUMN "public"."gen_table"."author" IS '作者';
COMMENT ON COLUMN "public"."gen_table"."email" IS '邮箱';
COMMENT ON COLUMN "public"."gen_table"."package_name" IS '项目包名';
COMMENT ON COLUMN "public"."gen_table"."version" IS '项目版本号';
COMMENT ON COLUMN "public"."gen_table"."generator_type" IS '生成方式  0：zip压缩包   1：自定义目录';
COMMENT ON COLUMN "public"."gen_table"."backend_path" IS '后端生成路径';
COMMENT ON COLUMN "public"."gen_table"."frontend_path" IS '前端生成路径';
COMMENT ON COLUMN "public"."gen_table"."module_name" IS '模块名';
COMMENT ON COLUMN "public"."gen_table"."function_name" IS '功能名';
COMMENT ON COLUMN "public"."gen_table"."form_layout" IS '表单布局  1：一列   2：两列';
COMMENT ON COLUMN "public"."gen_table"."datasource_id" IS '数据源ID';
COMMENT ON COLUMN "public"."gen_table"."baseclass_id" IS '基类ID';
COMMENT ON COLUMN "public"."gen_table"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."gen_table"."update_time" IS '创建时间';
COMMENT ON COLUMN "public"."gen_table"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."gen_table"."update_by" IS '更新人';
COMMENT ON TABLE "public"."gen_table" IS '代码生成表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO "public"."gen_table" VALUES (159475879045, 'gen_base_class', 'GenBaseClass', '基类管理', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 20:10:10.61', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (159475880581, 'gen_field_type', 'GenFieldType', '字段类型管理', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 20:10:10.634', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (159475882309, 'gen_table', 'GenTable', '代码生成表', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 20:10:10.66', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (159475884165, 'gen_table_field', 'GenTableField', '代码生成表字段', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 20:10:10.69', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (159475885957, 'gen_template', 'GenTemplate', '模板配置', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 20:10:10.717', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (159475887493, 'gen_template_group', 'GenTemplateGroup', '模板配置组', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 20:10:10.742', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (159475888837, 'sys_button', 'SysButton', '角色权限表', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 20:10:10.762', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (159475890245, 'sys_button_permission', 'SysButtonPermission', '角色权限表', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 20:10:10.785', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (159475891845, 'sys_data_permission', 'SysDataPermission', '角色权限表', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 20:10:10.81', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (159475894213, 'sys_data_source', 'SysDataSource', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 20:10:10.847', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (159475896325, 'sys_dept', 'SysDept', '组织机构表', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 20:10:10.879', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (159475897797, 'sys_dict', 'SysDict', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 20:10:10.903', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (159475899461, 'sys_dict_item', 'SysDictItem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 20:10:10.929', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (159475900997, 'sys_log', 'SysLog', '系统日志表', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 20:10:10.953', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (159475902661, 'sys_menu', 'SysMenu', '菜单权限表', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 20:10:10.979', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (159475904261, 'sys_role', 'SysRole', '角色表', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 20:10:11.004', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (159475905669, 'sys_role_permission', 'SysRolePermission', '角色权限表', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 20:10:11.026', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (159475907205, 'sys_user', 'SysUser', '用户表', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 20:10:11.05', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (159475908485, 'sys_user_dept', 'SysUserDept', '用户部门表', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 20:10:11.07', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (159475909893, 'sys_user_role', 'SysUserRole', '用户角色表', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 20:10:11.092', NULL, 'admin', NULL);

-- ----------------------------
-- Table structure for gen_table_field
-- ----------------------------
DROP TABLE IF EXISTS "public"."gen_table_field";
CREATE TABLE "public"."gen_table_field" (
  "id" int8 NOT NULL,
  "table_id" int8,
  "column_name" varchar(200) COLLATE "pg_catalog"."default",
  "column_type" int4,
  "column_comment" varchar(200) COLLATE "pg_catalog"."default",
  "attr_name" varchar(200) COLLATE "pg_catalog"."default",
  "attr_type" varchar(200) COLLATE "pg_catalog"."default",
  "package_name" varchar(200) COLLATE "pg_catalog"."default",
  "sort" int4,
  "auto_fill" varchar(20) COLLATE "pg_catalog"."default",
  "primary_pk" int2,
  "base_field" int2,
  "form_item" int2,
  "form_required" int2,
  "form_type" varchar(200) COLLATE "pg_catalog"."default",
  "form_dict" varchar(200) COLLATE "pg_catalog"."default",
  "form_validator" varchar(200) COLLATE "pg_catalog"."default",
  "grid_item" int2,
  "grid_sort" int2,
  "query_item" int2,
  "query_type" varchar(200) COLLATE "pg_catalog"."default",
  "query_form_type" varchar(200) COLLATE "pg_catalog"."default",
  "query_dict" varchar(200) COLLATE "pg_catalog"."default",
  "type_name" varchar(200) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."gen_table_field"."id" IS 'id';
COMMENT ON COLUMN "public"."gen_table_field"."table_id" IS '表ID';
COMMENT ON COLUMN "public"."gen_table_field"."column_name" IS '字段名称';
COMMENT ON COLUMN "public"."gen_table_field"."column_type" IS '字段类型';
COMMENT ON COLUMN "public"."gen_table_field"."column_comment" IS '字段说明';
COMMENT ON COLUMN "public"."gen_table_field"."attr_name" IS '属性名';
COMMENT ON COLUMN "public"."gen_table_field"."attr_type" IS '属性类型';
COMMENT ON COLUMN "public"."gen_table_field"."package_name" IS '属性包名';
COMMENT ON COLUMN "public"."gen_table_field"."sort" IS '排序';
COMMENT ON COLUMN "public"."gen_table_field"."auto_fill" IS '自动填充  DEFAULT、INSERT、UPDATE、INSERT_UPDATE';
COMMENT ON COLUMN "public"."gen_table_field"."primary_pk" IS '主键 0：否  1：是';
COMMENT ON COLUMN "public"."gen_table_field"."base_field" IS '基类字段 0：否  1：是';
COMMENT ON COLUMN "public"."gen_table_field"."form_item" IS '表单项 0：否  1：是';
COMMENT ON COLUMN "public"."gen_table_field"."form_required" IS '表单必填 0：否  1：是';
COMMENT ON COLUMN "public"."gen_table_field"."form_type" IS '表单类型';
COMMENT ON COLUMN "public"."gen_table_field"."form_dict" IS '表单字典类型';
COMMENT ON COLUMN "public"."gen_table_field"."form_validator" IS '表单效验';
COMMENT ON COLUMN "public"."gen_table_field"."grid_item" IS '列表项 0：否  1：是';
COMMENT ON COLUMN "public"."gen_table_field"."grid_sort" IS '列表排序 0：否  1：是';
COMMENT ON COLUMN "public"."gen_table_field"."query_item" IS '查询项 0：否  1：是';
COMMENT ON COLUMN "public"."gen_table_field"."query_type" IS '查询方式';
COMMENT ON COLUMN "public"."gen_table_field"."query_form_type" IS '查询表单类型';
COMMENT ON COLUMN "public"."gen_table_field"."query_dict" IS '查询字典类型';
COMMENT ON COLUMN "public"."gen_table_field"."type_name" IS '字段类型名称';
COMMENT ON TABLE "public"."gen_table_field" IS '代码生成表字段';

-- ----------------------------
-- Records of gen_table_field
-- ----------------------------
INSERT INTO "public"."gen_table_field" VALUES (159475879237, 159475879045, 'id', -5, 'id', 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475879238, 159475879045, 'class_name', 12, '基类全类名', 'className', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475879239, 159475879045, 'fields', 12, '基类字段，多个用英文逗号分隔', 'fields', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475879240, 159475879045, 'create_time', 93, '创建时间', 'createTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp');
INSERT INTO "public"."gen_table_field" VALUES (159475879241, 159475879045, 'update_time', 93, '创建时间', 'updateTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp');
INSERT INTO "public"."gen_table_field" VALUES (159475879242, 159475879045, 'create_by', 12, '创建人', 'createBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475879243, 159475879045, 'update_by', 12, '更新人', 'updateBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475880709, 159475880581, 'id', -5, 'id', 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475880710, 159475880581, 'column_type', 12, '字段类型', 'columnType', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475880711, 159475880581, 'attr_type', 12, '属性类型', 'attrType', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475882373, 159475882309, 'id', -5, 'id', 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475882374, 159475882309, 'table_name', 12, '表名', 'tableName', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475882375, 159475882309, 'class_name', 12, '类名', 'className', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475882376, 159475882309, 'table_comment', 12, '说明', 'tableComment', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475882377, 159475882309, 'author', 12, '作者', 'author', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475882378, 159475882309, 'email', 12, '邮箱', 'email', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475882379, 159475882309, 'package_name', 12, '项目包名', 'packageName', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475882380, 159475882309, 'version', 12, '项目版本号', 'version', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475882381, 159475882309, 'generator_type', 5, '生成方式  0：zip压缩包   1：自定义目录', 'generatorType', 'Short', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int2');
INSERT INTO "public"."gen_table_field" VALUES (159475882382, 159475882309, 'backend_path', 12, '后端生成路径', 'backendPath', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475882383, 159475882309, 'frontend_path', 12, '前端生成路径', 'frontendPath', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475882384, 159475882309, 'module_name', 12, '模块名', 'moduleName', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475882385, 159475882309, 'function_name', 12, '功能名', 'functionName', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475882386, 159475882309, 'form_layout', 5, '表单布局  1：一列   2：两列', 'formLayout', 'Short', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int2');
INSERT INTO "public"."gen_table_field" VALUES (159475882387, 159475882309, 'datasource_id', -5, '数据源ID', 'datasourceId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475882388, 159475882309, 'baseclass_id', -5, '基类ID', 'baseclassId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475882389, 159475882309, 'create_time', 93, '创建时间', 'createTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp');
INSERT INTO "public"."gen_table_field" VALUES (159475882390, 159475882309, 'update_time', 93, '创建时间', 'updateTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp');
INSERT INTO "public"."gen_table_field" VALUES (159475882391, 159475882309, 'create_by', 12, '创建人', 'createBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475882392, 159475882309, 'update_by', 12, '更新人', 'updateBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475884293, 159475884165, 'id', -5, 'id', 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475884294, 159475884165, 'table_id', -5, '表ID', 'tableId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475884295, 159475884165, 'column_name', 12, '字段名称', 'columnName', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475884296, 159475884165, 'column_type', 4, '字段类型', 'columnType', 'Integer', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int4');
INSERT INTO "public"."gen_table_field" VALUES (159475884297, 159475884165, 'column_comment', 12, '字段说明', 'columnComment', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475884298, 159475884165, 'attr_name', 12, '属性名', 'attrName', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475884299, 159475884165, 'attr_type', 12, '属性类型', 'attrType', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475884300, 159475884165, 'package_name', 12, '属性包名', 'packageName', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475884301, 159475884165, 'sort', 4, '排序', 'sort', 'Integer', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int4');
INSERT INTO "public"."gen_table_field" VALUES (159475884302, 159475884165, 'auto_fill', 12, '自动填充  DEFAULT、INSERT、UPDATE、INSERT_UPDATE', 'autoFill', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475884303, 159475884165, 'primary_pk', 5, '主键 0：否  1：是', 'primaryPk', 'Short', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int2');
INSERT INTO "public"."gen_table_field" VALUES (159475884304, 159475884165, 'base_field', 5, '基类字段 0：否  1：是', 'baseField', 'Short', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int2');
INSERT INTO "public"."gen_table_field" VALUES (159475884305, 159475884165, 'form_item', 5, '表单项 0：否  1：是', 'formItem', 'Short', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int2');
INSERT INTO "public"."gen_table_field" VALUES (159475884306, 159475884165, 'form_required', 5, '表单必填 0：否  1：是', 'formRequired', 'Short', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int2');
INSERT INTO "public"."gen_table_field" VALUES (159475884307, 159475884165, 'form_type', 12, '表单类型', 'formType', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475884308, 159475884165, 'form_dict', 12, '表单字典类型', 'formDict', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475884309, 159475884165, 'form_validator', 12, '表单效验', 'formValidator', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475884310, 159475884165, 'grid_item', 5, '列表项 0：否  1：是', 'gridItem', 'Short', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int2');
INSERT INTO "public"."gen_table_field" VALUES (159475884311, 159475884165, 'grid_sort', 5, '列表排序 0：否  1：是', 'gridSort', 'Short', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int2');
INSERT INTO "public"."gen_table_field" VALUES (159475884312, 159475884165, 'query_item', 5, '查询项 0：否  1：是', 'queryItem', 'Short', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int2');
INSERT INTO "public"."gen_table_field" VALUES (159475884313, 159475884165, 'query_type', 12, '查询方式', 'queryType', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475884314, 159475884165, 'query_form_type', 12, '查询表单类型', 'queryFormType', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475884315, 159475884165, 'query_dict', 12, '查询字典类型', 'queryDict', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475884316, 159475884165, 'type_name', 12, '字段类型名称', 'typeName', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475886085, 159475885957, 'id', -5, 'id', 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475886086, 159475885957, 'name', 12, '表名', 'name', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475886087, 159475885957, 'content', 12, NULL, 'content', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'text');
INSERT INTO "public"."gen_table_field" VALUES (159475886088, 159475885957, 'create_time', 93, '创建时间', 'createTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp');
INSERT INTO "public"."gen_table_field" VALUES (159475886089, 159475885957, 'update_by', 12, '更新人登录名称', 'updateBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475886090, 159475885957, 'update_time', 93, '更新日期', 'updateTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp');
INSERT INTO "public"."gen_table_field" VALUES (159475886091, 159475885957, 'create_by', 12, '创建人登录名称', 'createBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475886092, 159475885957, 'group_id', -5, '分组id', 'groupId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475886093, 159475885957, 'valid_status', 5, '有效状态', 'validStatus', 'Short', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int2');
INSERT INTO "public"."gen_table_field" VALUES (159475887557, 159475887493, 'id', -5, 'id', 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475887558, 159475887493, 'name', 12, '表名', 'name', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475888901, 159475888837, 'id', -5, NULL, 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475888902, 159475888837, 'menu_id', -5, '菜单id', 'menuId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475888903, 159475888837, 'type', 12, '按钮权限类型', 'type', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475890373, 159475890245, 'id', -5, NULL, 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475890374, 159475890245, 'button_id', -5, '按钮id', 'buttonId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475890375, 159475890245, 'role_id', -5, '角色id', 'roleId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475891973, 159475891845, 'id', -5, NULL, 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475891974, 159475891845, 'permission_code', 4, '权限', 'permissionCode', 'Integer', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int4');
INSERT INTO "public"."gen_table_field" VALUES (159475891975, 159475891845, 'dept_ids', 12, '指定部门', 'deptIds', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'text');
INSERT INTO "public"."gen_table_field" VALUES (159475891976, 159475891845, 'role_id', -5, '角色id', 'roleId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475894789, 159475894213, 'id', -5, NULL, 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475894790, 159475894213, 'name', 12, '数据源名称', 'name', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475894791, 159475894213, 'description', 12, '描述', 'description', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475894792, 159475894213, 'url', 12, '数据源地址', 'url', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475894793, 159475894213, 'username', 12, '用户名', 'username', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475894794, 159475894213, 'password', 12, '密码', 'password', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475894795, 159475894213, 'create_by', 12, '创建人', 'createBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475894796, 159475894213, 'create_time', 93, '创建日期', 'createTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp');
INSERT INTO "public"."gen_table_field" VALUES (159475894797, 159475894213, 'update_by', 12, '更新人', 'updateBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475894798, 159475894213, 'update_time', 93, '更新日期', 'updateTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp');
INSERT INTO "public"."gen_table_field" VALUES (159475896389, 159475896325, 'dept_id', -5, 'ID', 'deptId', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475896390, 159475896325, 'parent_id', -5, '父机构ID', 'parentId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475896391, 159475896325, 'dept_name', 12, '机构/部门名称', 'deptName', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475896392, 159475896325, 'dept_code', 12, '机构/部门编码', 'deptCode', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475896393, 159475896325, 'order_no', 8, '排序', 'orderNo', 'Double', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'float8');
INSERT INTO "public"."gen_table_field" VALUES (159475896394, 159475896325, 'description', 12, '描述', 'description', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475896395, 159475896325, 'status', 4, '状态（1启用，0不启用）', 'status', 'Integer', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int4');
INSERT INTO "public"."gen_table_field" VALUES (159475896396, 159475896325, 'del_flag', 4, '删除状态（0，正常，1已删除）', 'delFlag', 'Integer', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int4');
INSERT INTO "public"."gen_table_field" VALUES (159475896397, 159475896325, 'create_by', 12, '创建人', 'createBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475896398, 159475896325, 'create_time', 93, '创建日期', 'createTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp');
INSERT INTO "public"."gen_table_field" VALUES (159475896399, 159475896325, 'update_by', 12, '更新人', 'updateBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475896400, 159475896325, 'update_time', 93, '更新日期', 'updateTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp');
INSERT INTO "public"."gen_table_field" VALUES (159475897989, 159475897797, 'id', -5, NULL, 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475897990, 159475897797, 'name', 12, '字典名称', 'name', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475897991, 159475897797, 'code', 12, '字典编码', 'code', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475897992, 159475897797, 'description', 12, '描述', 'description', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475897993, 159475897797, 'del_flag', 4, '删除状态', 'delFlag', 'Integer', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int4');
INSERT INTO "public"."gen_table_field" VALUES (159475897994, 159475897797, 'create_by', 12, '创建人', 'createBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475897995, 159475897797, 'create_time', 93, '创建时间', 'createTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp');
INSERT INTO "public"."gen_table_field" VALUES (159475897996, 159475897797, 'update_by', 12, '更新人', 'updateBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475897997, 159475897797, 'update_time', 93, '更新时间', 'updateTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp');
INSERT INTO "public"."gen_table_field" VALUES (159475897998, 159475897797, 'type', 4, '字典类型0为string,1为number', 'type', 'Integer', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int4');
INSERT INTO "public"."gen_table_field" VALUES (159475899589, 159475899461, 'id', -5, NULL, 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475899590, 159475899461, 'dict_id', -5, '字典id', 'dictId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475899591, 159475899461, 'name', 12, '字典项文本', 'name', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475899592, 159475899461, 'value', 12, '字典项值', 'value', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475899593, 159475899461, 'description', 12, '描述', 'description', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475899594, 159475899461, 'order_no', 8, '排序', 'orderNo', 'Double', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'float8');
INSERT INTO "public"."gen_table_field" VALUES (159475901189, 159475900997, 'id', -5, NULL, 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475901190, 159475900997, 'log_type', 12, '日志类型', 'logType', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475901191, 159475900997, 'username', 12, '操作用户账号', 'username', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475901192, 159475900997, 'realname', 12, '操作用户名称', 'realname', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475901193, 159475900997, 'ip', 12, 'IP', 'ip', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475901194, 159475900997, 'method', 12, '请求java方法', 'method', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475901195, 159475900997, 'request_url', 12, '请求路径', 'requestUrl', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475901196, 159475900997, 'request_param', 12, '请求参数', 'requestParam', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'text');
INSERT INTO "public"."gen_table_field" VALUES (159475901197, 159475900997, 'request_type', 12, '请求类型', 'requestType', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475901198, 159475900997, 'cost_time', -5, '耗时', 'costTime', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475901199, 159475900997, 'create_time', 93, '创建时间', 'createTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp');
INSERT INTO "public"."gen_table_field" VALUES (159475901200, 159475900997, 'user_agent', 12, '浏览器', 'userAgent', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475901201, 159475900997, 'status', 4, '状态', 'status', 'Integer', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int4');
INSERT INTO "public"."gen_table_field" VALUES (159475901202, 159475900997, 'biz_module', 12, '业务模块', 'bizModule', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475901203, 159475900997, 'description', 12, '操作描述', 'description', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475901204, 159475900997, 'message', 12, '错误信息', 'message', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475901205, 159475900997, 'exception_class', 12, '异常类', 'exceptionClass', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475901206, 159475900997, 'stack_trace', 12, '详尽异常', 'stackTrace', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'text');
INSERT INTO "public"."gen_table_field" VALUES (159475902789, 159475902661, 'id', -5, '主键id', 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475902790, 159475902661, 'parent_id', -5, '父id', 'parentId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475902791, 159475902661, 'name', 12, '菜单标题', 'name', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475902792, 159475902661, 'url', 12, '路径', 'url', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475902793, 159475902661, 'component', 12, '组件', 'component', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475902794, 159475902661, 'redirect', 12, '一级菜单跳转地址', 'redirect', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475902795, 159475902661, 'menu_type', 4, '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)', 'menuType', 'Integer', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int4');
INSERT INTO "public"."gen_table_field" VALUES (159475902796, 159475902661, 'sort_no', 8, '菜单排序', 'sortNo', 'Double', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'float8');
INSERT INTO "public"."gen_table_field" VALUES (159475902797, 159475902661, 'always_show', 5, '聚合子路由: 1是0否', 'alwaysShow', 'Short', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int2');
INSERT INTO "public"."gen_table_field" VALUES (159475902798, 159475902661, 'icon', 12, '菜单图标', 'icon', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475902799, 159475902661, 'hidden', 4, '是否隐藏路由: 0否,1是', 'hidden', 'Integer', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int4');
INSERT INTO "public"."gen_table_field" VALUES (159475902800, 159475902661, 'hide_tab', 4, '是否隐藏tab: 0否,1是', 'hideTab', 'Integer', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int4');
INSERT INTO "public"."gen_table_field" VALUES (159475902801, 159475902661, 'description', 12, '描述', 'description', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475902802, 159475902661, 'create_by', 12, '创建人', 'createBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475902803, 159475902661, 'create_time', 93, '创建时间', 'createTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp');
INSERT INTO "public"."gen_table_field" VALUES (159475902804, 159475902661, 'update_by', 12, '更新人', 'updateBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475902805, 159475902661, 'update_time', 93, '更新时间', 'updateTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp');
INSERT INTO "public"."gen_table_field" VALUES (159475902806, 159475902661, 'del_flag', 4, '删除状态 0正常 1已删除', 'delFlag', 'Integer', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int4');
INSERT INTO "public"."gen_table_field" VALUES (159475902807, 159475902661, 'keep_alive', 5, '缓存路由: 1是0否', 'keepAlive', 'Short', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int2');
INSERT INTO "public"."gen_table_field" VALUES (159475904453, 159475904261, 'id', -5, '主键id', 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475904454, 159475904261, 'role_name', 12, '角色名称', 'roleName', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475904455, 159475904261, 'role_code', 12, '角色编码', 'roleCode', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475904456, 159475904261, 'dept_id', -5, '部门id', 'deptId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475904457, 159475904261, 'description', 12, '描述', 'description', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475904458, 159475904261, 'create_by', 12, '创建人', 'createBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475904459, 159475904261, 'create_time', 93, '创建时间', 'createTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp');
INSERT INTO "public"."gen_table_field" VALUES (159475904460, 159475904261, 'update_by', 12, '更新人', 'updateBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475904461, 159475904261, 'update_time', 93, '更新时间', 'updateTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp');
INSERT INTO "public"."gen_table_field" VALUES (159475905797, 159475905669, 'id', -5, NULL, 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475905798, 159475905669, 'role_id', -5, '角色id', 'roleId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475905799, 159475905669, 'permission_id', -5, '权限id', 'permissionId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475907333, 159475907205, 'id', -5, '主键id', 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475907334, 159475907205, 'username', 12, '登录账号', 'username', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475907335, 159475907205, 'realname', 12, '真实姓名', 'realname', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475907336, 159475907205, 'password', 12, '密码', 'password', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475907337, 159475907205, 'avatar', 12, '头像', 'avatar', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475907338, 159475907205, 'sex', 5, '性别', 'sex', 'Short', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int2');
INSERT INTO "public"."gen_table_field" VALUES (159475907339, 159475907205, 'phone', 12, '电话', 'phone', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475907340, 159475907205, 'del_flag', 5, '删除状态(0-正常,1-已删除)', 'delFlag', 'Short', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int2');
INSERT INTO "public"."gen_table_field" VALUES (159475907341, 159475907205, 'create_by', 12, '创建人', 'createBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475907342, 159475907205, 'create_time', 93, '创建时间', 'createTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp');
INSERT INTO "public"."gen_table_field" VALUES (159475907343, 159475907205, 'update_by', 12, '更新人', 'updateBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varchar');
INSERT INTO "public"."gen_table_field" VALUES (159475907344, 159475907205, 'update_time', 93, '更新时间', 'updateTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp');
INSERT INTO "public"."gen_table_field" VALUES (159475908613, 159475908485, 'id', -5, '主键id', 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475908614, 159475908485, 'user_id', -5, '用户id', 'userId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475908615, 159475908485, 'dept_id', -5, '部门id', 'deptId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475910021, 159475909893, 'id', -5, '主键id', 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475910022, 159475909893, 'user_id', -5, '用户id', 'userId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');
INSERT INTO "public"."gen_table_field" VALUES (159475910023, 159475909893, 'role_id', -5, '角色id', 'roleId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'int8');

-- ----------------------------
-- Table structure for gen_template
-- ----------------------------
DROP TABLE IF EXISTS "public"."gen_template";
CREATE TABLE "public"."gen_template" (
  "id" int8 NOT NULL,
  "name" varchar(200) COLLATE "pg_catalog"."default",
  "content" text COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "group_id" int8,
  "file_name" varchar(200) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."gen_template"."id" IS 'id';
COMMENT ON COLUMN "public"."gen_template"."name" IS '模板名称';
COMMENT ON COLUMN "public"."gen_template"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."gen_template"."update_by" IS '更新人登录名称';
COMMENT ON COLUMN "public"."gen_template"."update_time" IS '更新日期';
COMMENT ON COLUMN "public"."gen_template"."create_by" IS '创建人登录名称';
COMMENT ON COLUMN "public"."gen_template"."group_id" IS '分组id';
COMMENT ON COLUMN "public"."gen_template"."file_name" IS '模板文件名';
COMMENT ON TABLE "public"."gen_template" IS '模板配置';

-- ----------------------------
-- Records of gen_template
-- ----------------------------
INSERT INTO "public"."gen_template" VALUES (362832993636357, 'table', 'package ${packageName}.${moduleName}.${entityName}.table;

import lombok.Data;

/**
 * @Description: ${tableComment}
 * @Author: ${author}
 * @Date:   ${.now?string["yyyy-MM-dd"]}
 */
@Data
@Table("${tableName}")
public class ${className} {

    <#list columns as column>
/**${column.columnComment}*/
    <#if column.primaryPk>
    @Id
    </#if>
   @Column(value="${column.columnName}",jdbcType="Types.column.${column.columnType}")
    private ${column.attrType} ${column.attrName};
</#list>
}', '2022-12-11 08:31:15', 'admin', '2023-01-31 21:11:37.968', NULL, 82324589637, '${className}.java');

-- ----------------------------
-- Table structure for gen_template_group
-- ----------------------------
DROP TABLE IF EXISTS "public"."gen_template_group";
CREATE TABLE "public"."gen_template_group" (
  "id" int8 NOT NULL,
  "name" varchar(200) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."gen_template_group"."id" IS 'id';
COMMENT ON COLUMN "public"."gen_template_group"."name" IS '表名';
COMMENT ON TABLE "public"."gen_template_group" IS '模板配置组';

-- ----------------------------
-- Records of gen_template_group
-- ----------------------------
INSERT INTO "public"."gen_template_group" VALUES (82324589637, '基础模板组');

-- ----------------------------
-- Table structure for sys_button
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_button";
CREATE TABLE "public"."sys_button" (
  "id" int8 NOT NULL,
  "menu_id" int8,
  "type" varchar(100) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_button"."menu_id" IS '菜单id';
COMMENT ON COLUMN "public"."sys_button"."type" IS '按钮权限类型';
COMMENT ON TABLE "public"."sys_button" IS '角色权限表';

-- ----------------------------
-- Records of sys_button
-- ----------------------------
INSERT INTO "public"."sys_button" VALUES (153157080517, 3, 'add');
INSERT INTO "public"."sys_button" VALUES (153157080518, 3, 'edit');
INSERT INTO "public"."sys_button" VALUES (153157080519, 3, 'remove');
INSERT INTO "public"."sys_button" VALUES (153157080520, 3, 'removeBatch');
INSERT INTO "public"."sys_button" VALUES (153162963205, 4, 'add');
INSERT INTO "public"."sys_button" VALUES (153162963206, 4, 'edit');
INSERT INTO "public"."sys_button" VALUES (153162963207, 4, 'remove');
INSERT INTO "public"."sys_button" VALUES (153162963208, 4, 'removeBatch');
INSERT INTO "public"."sys_button" VALUES (153165063429, 5, 'add');
INSERT INTO "public"."sys_button" VALUES (153165063430, 5, 'edit');
INSERT INTO "public"."sys_button" VALUES (153165063431, 5, 'remove');
INSERT INTO "public"."sys_button" VALUES (153165063432, 5, 'removeBatch');
INSERT INTO "public"."sys_button" VALUES (153166387781, 2, 'add');
INSERT INTO "public"."sys_button" VALUES (153166387782, 2, 'edit');
INSERT INTO "public"."sys_button" VALUES (153166387783, 2, 'remove');
INSERT INTO "public"."sys_button" VALUES (153166387784, 2, 'removeBatch');
INSERT INTO "public"."sys_button" VALUES (153366975621, 2, 'menu_permission');
INSERT INTO "public"."sys_button" VALUES (153366975622, 2, 'button_permission');
INSERT INTO "public"."sys_button" VALUES (153366975623, 2, 'data_permission');
INSERT INTO "public"."sys_button" VALUES (159925289733, 3, 'remove_batch');
INSERT INTO "public"."sys_button" VALUES (173652824133, 5, 'remove_batch');
INSERT INTO "public"."sys_button" VALUES (173652824134, 5, 'button_setting');
INSERT INTO "public"."sys_button" VALUES (173652824135, 5, 'add_sub');
INSERT INTO "public"."sys_button" VALUES (173653609605, 4, 'remove_batch');
INSERT INTO "public"."sys_button" VALUES (173664974213, 8, 'add');
INSERT INTO "public"."sys_button" VALUES (173664974214, 8, 'edit');
INSERT INTO "public"."sys_button" VALUES (173664974215, 8, 'remove');
INSERT INTO "public"."sys_button" VALUES (173664974216, 8, 'remove_batch');
INSERT INTO "public"."sys_button" VALUES (178966814853, 20, 'add');
INSERT INTO "public"."sys_button" VALUES (178966814854, 20, 'edit');
INSERT INTO "public"."sys_button" VALUES (178966814855, 20, 'remove');
INSERT INTO "public"."sys_button" VALUES (178966814856, 20, 'remove_batch');
INSERT INTO "public"."sys_button" VALUES (178967663493, 17, 'edit');
INSERT INTO "public"."sys_button" VALUES (178968322373, 18, 'add');
INSERT INTO "public"."sys_button" VALUES (178968322374, 18, 'edit');
INSERT INTO "public"."sys_button" VALUES (178968322375, 18, 'remove');
INSERT INTO "public"."sys_button" VALUES (178968322376, 18, 'remove_batch');
INSERT INTO "public"."sys_button" VALUES (178969028229, 19, 'add');
INSERT INTO "public"."sys_button" VALUES (178969028230, 19, 'edit');
INSERT INTO "public"."sys_button" VALUES (178969028231, 19, 'remove');
INSERT INTO "public"."sys_button" VALUES (178969028232, 19, 'remove_batch');
INSERT INTO "public"."sys_button" VALUES (178969766725, 11, 'add');
INSERT INTO "public"."sys_button" VALUES (178969766726, 11, 'edit');
INSERT INTO "public"."sys_button" VALUES (178969766727, 11, 'remove');
INSERT INTO "public"."sys_button" VALUES (178969766728, 11, 'remove_batch');
INSERT INTO "public"."sys_button" VALUES (179002517125, 19, 'import');
INSERT INTO "public"."sys_button" VALUES (179002517126, 19, 'generate');
INSERT INTO "public"."sys_button" VALUES (179002517127, 19, 'sync');

-- ----------------------------
-- Table structure for sys_button_permission
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_button_permission";
CREATE TABLE "public"."sys_button_permission" (
  "id" int8 NOT NULL,
  "button_id" int8,
  "role_id" int8
)
;
COMMENT ON COLUMN "public"."sys_button_permission"."button_id" IS '按钮id';
COMMENT ON COLUMN "public"."sys_button_permission"."role_id" IS '角色id';
COMMENT ON TABLE "public"."sys_button_permission" IS '角色权限表';

-- ----------------------------
-- Records of sys_button_permission
-- ----------------------------
INSERT INTO "public"."sys_button_permission" VALUES (179003146885, 153157080517, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146886, 153157080518, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146887, 153157080519, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146888, 159925289733, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146889, 153162963205, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146890, 153162963206, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146891, 153162963207, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146892, 173653609605, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146893, 173664974213, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146894, 173664974214, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146895, 173664974215, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146896, 173664974216, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146897, 178966814853, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146898, 178966814854, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146899, 178966814855, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146900, 178966814856, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146901, 178967663493, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146902, 178968322373, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146903, 178968322374, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146904, 178968322375, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146905, 178968322376, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146906, 178969028229, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146907, 178969028230, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146908, 178969028231, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146909, 179002517125, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146910, 178969028232, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146911, 179002517126, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146912, 179002517127, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146913, 178969766725, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146914, 178969766726, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146915, 178969766727, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146916, 178969766728, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146917, 153165063429, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146918, 153165063430, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146919, 153165063431, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146920, 173652824133, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146921, 173652824134, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146922, 173652824135, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146923, 153166387781, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146924, 153166387782, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146925, 153166387783, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146926, 153366975621, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146927, 153366975622, 1);
INSERT INTO "public"."sys_button_permission" VALUES (179003146928, 153366975623, 1);

-- ----------------------------
-- Table structure for sys_data_permission
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_data_permission";
CREATE TABLE "public"."sys_data_permission" (
  "id" int8 NOT NULL,
  "permission_code" int4,
  "dept_ids" text COLLATE "pg_catalog"."default",
  "role_id" int8
)
;
COMMENT ON COLUMN "public"."sys_data_permission"."permission_code" IS '权限';
COMMENT ON COLUMN "public"."sys_data_permission"."dept_ids" IS '指定部门';
COMMENT ON COLUMN "public"."sys_data_permission"."role_id" IS '角色id';
COMMENT ON TABLE "public"."sys_data_permission" IS '角色权限表';

-- ----------------------------
-- Records of sys_data_permission
-- ----------------------------
INSERT INTO "public"."sys_data_permission" VALUES (130099105285, 4, '', 1);
INSERT INTO "public"."sys_data_permission" VALUES (131663002949, 3, '', 131517140997);

-- ----------------------------
-- Table structure for sys_data_source
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_data_source";
CREATE TABLE "public"."sys_data_source" (
  "id" int8 NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "url" varchar(500) COLLATE "pg_catalog"."default",
  "username" varchar(100) COLLATE "pg_catalog"."default",
  "password" varchar(100) COLLATE "pg_catalog"."default",
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."sys_data_source"."name" IS '数据源名称';
COMMENT ON COLUMN "public"."sys_data_source"."description" IS '描述';
COMMENT ON COLUMN "public"."sys_data_source"."url" IS '数据源地址';
COMMENT ON COLUMN "public"."sys_data_source"."username" IS '用户名';
COMMENT ON COLUMN "public"."sys_data_source"."password" IS '密码';
COMMENT ON COLUMN "public"."sys_data_source"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."sys_data_source"."create_time" IS '创建日期';
COMMENT ON COLUMN "public"."sys_data_source"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."sys_data_source"."update_time" IS '更新日期';

-- ----------------------------
-- Records of sys_data_source
-- ----------------------------
INSERT INTO "public"."sys_data_source" VALUES (93397288581, 'localhost数据源', NULL, 'jdbc:mysql://127.0.0.1:3306/sooth?characterEncoding=UTF-8&useUnicode=true&useSSL=false&tinyInt1isBit=false&allowPublicKeyRetrieval=true&serverTimezone=Asia/Shanghai', 'root', '443967e8cfda5646d4f3e044f7a18704', 'admin', '2023-01-17 21:22:12', NULL, NULL);
INSERT INTO "public"."sys_data_source" VALUES (87734678533, 'mysql基础数据源', NULL, 'jdbc:mysql://192.168.0.3/sooth?useUnicode=true&characterEncoding=utf-8&allowMultiQueries=true&useAffectedRows=true&zeroDateTimeBehavior=convertToNull&serverTimezone=Asia/Shanghai', 'root', '6d95f0648637a3895996ce82aeb6e157', 'admin', '2023-01-16 20:47:34', 'admin', '2023-01-29 20:00:51.226');
INSERT INTO "public"."sys_data_source" VALUES (159443767877, 'pg数据源', NULL, 'jdbc:postgresql://192.168.0.194:5432/sooth', 'postgres', '443967e8cfda5646d4f3e044f7a18704', 'admin', '2023-01-29 20:01:48.834', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dept";
CREATE TABLE "public"."sys_dept" (
  "dept_id" int8 NOT NULL,
  "parent_id" int8,
  "dept_name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "dept_code" varchar(100) COLLATE "pg_catalog"."default",
  "order_no" float8,
  "description" varchar(500) COLLATE "pg_catalog"."default",
  "status" int4,
  "del_flag" int4,
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."sys_dept"."dept_id" IS 'ID';
COMMENT ON COLUMN "public"."sys_dept"."parent_id" IS '父机构ID';
COMMENT ON COLUMN "public"."sys_dept"."dept_name" IS '机构/部门名称';
COMMENT ON COLUMN "public"."sys_dept"."dept_code" IS '机构/部门编码';
COMMENT ON COLUMN "public"."sys_dept"."order_no" IS '排序';
COMMENT ON COLUMN "public"."sys_dept"."description" IS '描述';
COMMENT ON COLUMN "public"."sys_dept"."status" IS '状态（1启用，0不启用）';
COMMENT ON COLUMN "public"."sys_dept"."del_flag" IS '删除状态（0，正常，1已删除）';
COMMENT ON COLUMN "public"."sys_dept"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."sys_dept"."create_time" IS '创建日期';
COMMENT ON COLUMN "public"."sys_dept"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."sys_dept"."update_time" IS '更新日期';
COMMENT ON TABLE "public"."sys_dept" IS '组织机构表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO "public"."sys_dept" VALUES (42083908293, 1, '中台研发部', '0101', 1, '', 0, NULL, 'admin', '2023-01-08 14:39:21', NULL, NULL);
INSERT INTO "public"."sys_dept" VALUES (42089689925, NULL, '产品部', '02', 2, NULL, 0, NULL, 'admin', '2023-01-08 14:40:51', NULL, NULL);
INSERT INTO "public"."sys_dept" VALUES (42202626373, NULL, '测试部', '03', 3, NULL, 0, NULL, 'admin', '2023-01-08 15:10:16', NULL, NULL);
INSERT INTO "public"."sys_dept" VALUES (1, NULL, '研发部', '01', 1, '', NULL, NULL, 'admin', '2023-01-02 00:40:23', 'admin', '2023-01-29 21:54:35.946');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dict";
CREATE TABLE "public"."sys_dict" (
  "id" int8 NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "del_flag" int4,
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "type" int4
)
;
COMMENT ON COLUMN "public"."sys_dict"."name" IS '字典名称';
COMMENT ON COLUMN "public"."sys_dict"."code" IS '字典编码';
COMMENT ON COLUMN "public"."sys_dict"."description" IS '描述';
COMMENT ON COLUMN "public"."sys_dict"."del_flag" IS '删除状态';
COMMENT ON COLUMN "public"."sys_dict"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."sys_dict"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_dict"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."sys_dict"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_dict"."type" IS '字典类型0为string,1为number';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO "public"."sys_dict" VALUES (8616451013, '性别', 'sex', NULL, NULL, 'admin', '2023-01-02 13:23:52', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict" VALUES (71375867077, '数据权限', 'data_permission', '控制数据查看范围', NULL, 'admin', '2023-01-13 21:47:28', 'admin', '2023-01-13 21:47:46', NULL);
INSERT INTO "public"."sys_dict" VALUES (74316854597, '数据库类型', 'database_type', NULL, NULL, 'admin', '2023-01-14 10:33:21', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict" VALUES (76765765253, '成功状态', 'success_status', NULL, NULL, 'admin', '2023-01-14 21:11:05', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict" VALUES (77499306373, '日志类型', 'log_type', NULL, NULL, 'admin', '2023-01-15 00:22:07', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict" VALUES (140960825093, '按钮权限', 'button_type', NULL, NULL, 'admin', '2023-01-26 11:48:33', 'admin', '2023-01-26 14:57:05', 0);
INSERT INTO "public"."sys_dict" VALUES (153462050245, '是否', 'whether', NULL, NULL, 'admin', '2023-01-28 18:04:05', NULL, NULL, 0);

-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dict_item";
CREATE TABLE "public"."sys_dict_item" (
  "id" int8 NOT NULL,
  "dict_id" int8,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "value" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "order_no" float8
)
;
COMMENT ON COLUMN "public"."sys_dict_item"."dict_id" IS '字典id';
COMMENT ON COLUMN "public"."sys_dict_item"."name" IS '字典项文本';
COMMENT ON COLUMN "public"."sys_dict_item"."value" IS '字典项值';
COMMENT ON COLUMN "public"."sys_dict_item"."description" IS '描述';
COMMENT ON COLUMN "public"."sys_dict_item"."order_no" IS '排序';

-- ----------------------------
-- Records of sys_dict_item
-- ----------------------------
INSERT INTO "public"."sys_dict_item" VALUES (8617419717, 8616451013, '男', '0', NULL, 1);
INSERT INTO "public"."sys_dict_item" VALUES (8617941573, 8616451013, '女', '1', NULL, 1);
INSERT INTO "public"."sys_dict_item" VALUES (71381259781, 71375867077, '本人', '1', '只能查看本部门且本人创建的数据', 1);
INSERT INTO "public"."sys_dict_item" VALUES (71389730373, 71375867077, '本部门', '2', '只能查看本部门数据', 2);
INSERT INTO "public"."sys_dict_item" VALUES (71398373445, 71375867077, '本部门以及子部门', '3', '只能查看部门以及子部门数据', 3);
INSERT INTO "public"."sys_dict_item" VALUES (71400237445, 71375867077, '所有部门', '4', '查看所有部门数据', 4);
INSERT INTO "public"."sys_dict_item" VALUES (74318393285, 74316854597, 'MySQL', 'MySQL', NULL, 1);
INSERT INTO "public"."sys_dict_item" VALUES (76767618309, 76765765253, '成功', '0', NULL, 1);
INSERT INTO "public"."sys_dict_item" VALUES (76768298309, 76765765253, '失败', '1', NULL, 2);
INSERT INTO "public"."sys_dict_item" VALUES (77513234117, 77499306373, '认证日志', 'auth', NULL, 1);
INSERT INTO "public"."sys_dict_item" VALUES (77514748549, 77499306373, '操作日志', 'operate', NULL, 2);
INSERT INTO "public"."sys_dict_item" VALUES (140963430661, 140960825093, '编辑', 'edit', '通用', 2);
INSERT INTO "public"."sys_dict_item" VALUES (140964512005, 140960825093, '删除', 'remove', '通用', 3);
INSERT INTO "public"."sys_dict_item" VALUES (140965814533, 140960825093, '批量删除', 'remove_batch', '通用', 4);
INSERT INTO "public"."sys_dict_item" VALUES (140966682309, 140960825093, '新增', 'add', '通用', 1);
INSERT INTO "public"."sys_dict_item" VALUES (153235156869, 140960825093, '菜单权限', 'menu_permission', '角色管理', 5);
INSERT INTO "public"."sys_dict_item" VALUES (153236810181, 140960825093, '按钮权限', 'button_permission', '角色管理', 5);
INSERT INTO "public"."sys_dict_item" VALUES (153239148101, 140960825093, '数据权限', 'data_permission', '角色管理', 5);
INSERT INTO "public"."sys_dict_item" VALUES (153391879877, 140960825093, '按钮配置', 'button_setting', '菜单权限', 5);
INSERT INTO "public"."sys_dict_item" VALUES (153395673029, 140960825093, '添加下级', 'add_sub', '菜单权限', 5);
INSERT INTO "public"."sys_dict_item" VALUES (153462962053, 153462050245, '是', '1', NULL, 2);
INSERT INTO "public"."sys_dict_item" VALUES (153463594373, 153462050245, '否', '0', NULL, 1);
INSERT INTO "public"."sys_dict_item" VALUES (178905837061, 140960825093, '角色用户', 'role_user', '角色权限', 6);
INSERT INTO "public"."sys_dict_item" VALUES (178986906693, 140960825093, '导入', 'import', '通用', 4);
INSERT INTO "public"."sys_dict_item" VALUES (178989785861, 140960825093, '导出', 'export', '通用', 4);
INSERT INTO "public"."sys_dict_item" VALUES (178991094853, 140960825093, '同步', 'sync', '', 5);
INSERT INTO "public"."sys_dict_item" VALUES (178992321221, 140960825093, '生成', 'generate', '', 5);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_log";
CREATE TABLE "public"."sys_log" (
  "id" int8 NOT NULL,
  "log_type" varchar(100) COLLATE "pg_catalog"."default",
  "username" varchar(100) COLLATE "pg_catalog"."default",
  "realname" varchar(100) COLLATE "pg_catalog"."default",
  "ip" varchar(100) COLLATE "pg_catalog"."default",
  "method" varchar(500) COLLATE "pg_catalog"."default",
  "request_url" varchar(255) COLLATE "pg_catalog"."default",
  "request_param" text COLLATE "pg_catalog"."default",
  "request_type" varchar(10) COLLATE "pg_catalog"."default",
  "cost_time" int8,
  "create_time" timestamp(6),
  "user_agent" varchar(255) COLLATE "pg_catalog"."default",
  "status" int4,
  "biz_module" varchar(255) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "message" varchar(255) COLLATE "pg_catalog"."default",
  "exception_class" varchar(255) COLLATE "pg_catalog"."default",
  "stack_trace" text COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_log"."log_type" IS '日志类型';
COMMENT ON COLUMN "public"."sys_log"."username" IS '操作用户账号';
COMMENT ON COLUMN "public"."sys_log"."realname" IS '操作用户名称';
COMMENT ON COLUMN "public"."sys_log"."ip" IS 'IP';
COMMENT ON COLUMN "public"."sys_log"."method" IS '请求java方法';
COMMENT ON COLUMN "public"."sys_log"."request_url" IS '请求路径';
COMMENT ON COLUMN "public"."sys_log"."request_param" IS '请求参数';
COMMENT ON COLUMN "public"."sys_log"."request_type" IS '请求类型';
COMMENT ON COLUMN "public"."sys_log"."cost_time" IS '耗时';
COMMENT ON COLUMN "public"."sys_log"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_log"."user_agent" IS '浏览器';
COMMENT ON COLUMN "public"."sys_log"."status" IS '状态';
COMMENT ON COLUMN "public"."sys_log"."biz_module" IS '业务模块';
COMMENT ON COLUMN "public"."sys_log"."description" IS '操作描述';
COMMENT ON COLUMN "public"."sys_log"."message" IS '错误信息';
COMMENT ON COLUMN "public"."sys_log"."exception_class" IS '异常类';
COMMENT ON COLUMN "public"."sys_log"."stack_trace" IS '详尽异常';
COMMENT ON TABLE "public"."sys_log" IS '系统日志表';

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_menu";
CREATE TABLE "public"."sys_menu" (
  "id" int8 NOT NULL,
  "parent_id" int8,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "url" varchar(255) COLLATE "pg_catalog"."default",
  "component" varchar(255) COLLATE "pg_catalog"."default",
  "redirect" varchar(255) COLLATE "pg_catalog"."default",
  "menu_type" int4,
  "sort_no" float8,
  "fixed_tab" int2,
  "icon" varchar(255) COLLATE "pg_catalog"."default",
  "hidden" int4,
  "hide_tab" int4,
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(255) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "del_flag" int4,
  "keep_alive" int2,
  "component_name" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_menu"."id" IS '主键id';
COMMENT ON COLUMN "public"."sys_menu"."parent_id" IS '父id';
COMMENT ON COLUMN "public"."sys_menu"."name" IS '菜单标题';
COMMENT ON COLUMN "public"."sys_menu"."url" IS '路径';
COMMENT ON COLUMN "public"."sys_menu"."component" IS '组件';
COMMENT ON COLUMN "public"."sys_menu"."redirect" IS '一级菜单跳转地址';
COMMENT ON COLUMN "public"."sys_menu"."menu_type" IS '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)';
COMMENT ON COLUMN "public"."sys_menu"."sort_no" IS '菜单排序';
COMMENT ON COLUMN "public"."sys_menu"."fixed_tab" IS '聚合子路由: 1是0否';
COMMENT ON COLUMN "public"."sys_menu"."icon" IS '菜单图标';
COMMENT ON COLUMN "public"."sys_menu"."hidden" IS '是否隐藏路由: 0否,1是';
COMMENT ON COLUMN "public"."sys_menu"."hide_tab" IS '是否隐藏tab: 0否,1是';
COMMENT ON COLUMN "public"."sys_menu"."description" IS '描述';
COMMENT ON COLUMN "public"."sys_menu"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."sys_menu"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_menu"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."sys_menu"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_menu"."del_flag" IS '删除状态 0正常 1已删除';
COMMENT ON COLUMN "public"."sys_menu"."keep_alive" IS '缓存路由: 1是0否';
COMMENT ON COLUMN "public"."sys_menu"."component_name" IS '组件名称';
COMMENT ON TABLE "public"."sys_menu" IS '菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO "public"."sys_menu" VALUES (1, NULL, '系统管理', '/system', 'layouts/default/index', '/system/user', 0, 2, 0, 'ant-design:setting', 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2022-12-20 23:27:32', 0, NULL, 'system');
INSERT INTO "public"."sys_menu" VALUES (6, NULL, 'Dashboard', '/dashboard', 'layouts/default/index', '/dashboard/home', 0, 1, 0, 'ion:grid-outline', 0, 0, NULL, 'admin', '2021-09-15 19:51:23', 'admin', '2023-01-27 10:21:31', NULL, 0, 'dashboard');
INSERT INTO "public"."sys_menu" VALUES (9, NULL, '系统监控', '/monitor', 'layouts/default/index', NULL, 0, 5, 0, 'ant-design:video-camera-filled', 0, 0, NULL, 'admin', '2021-09-19 09:19:22', 'admin', '2022-12-20 23:27:52', 0, NULL, 'monitor');
INSERT INTO "public"."sys_menu" VALUES (15, NULL, '基础管理', '/basic', 'layouts/default/index', NULL, 0, 3, 0, 'ant-design:android-outlined', 0, 0, NULL, 'admin', '2022-11-12 20:34:52', 'admin', '2022-12-20 23:27:39', 0, NULL, 'basic');
INSERT INTO "public"."sys_menu" VALUES (16, NULL, '代码生成器', '/generate', 'layouts/default/index', NULL, 0, 3, 0, 'ant-design:block-outlined', 0, 0, NULL, 'admin', '2022-11-18 20:22:43', 'admin', '2023-01-26 15:42:21', NULL, NULL, 'generate');
INSERT INTO "public"."sys_menu" VALUES (22, NULL, '权限管理', '/privilege', 'layouts/default/index', '', 0, 4, 0, 'ant-design:property-safety-outlined', 0, 0, NULL, 'admin', '2023-01-13 20:47:59', 'admin', '2023-01-13 20:49:22', NULL, NULL, 'privilege');
INSERT INTO "public"."sys_menu" VALUES (2, 22, '角色管理', '/privilege/role', 'privilege/role/index', NULL, 1, 2, 0, 'ant-design:solution', 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2023-01-13 21:35:23', NULL, 1, 'privilege-role');
INSERT INTO "public"."sys_menu" VALUES (5, 22, '菜单管理', '/privilege/menu', 'privilege/menu/index', NULL, 1, 1, 0, 'ant-design:menu-outlined', 0, 0, NULL, 'admin', '2019-09-08 15:00:05', 'admin', '2023-01-27 10:43:27', NULL, 1, 'privilege-menu');
INSERT INTO "public"."sys_menu" VALUES (8, 15, '数据字典', '/basic/dict', 'basic/dict/index', NULL, 1, 10, 0, 'ant-design:hdd-twotone', 0, 0, NULL, 'admin', '2021-09-17 16:31:27', 'admin', '2023-01-02 00:20:50', NULL, 1, 'basic-dict');
INSERT INTO "public"."sys_menu" VALUES (11, 16, '数据源管理', '/generate/datasource', 'generate/datasource/index', NULL, 1, 3, 0, 'ant-design:hdd-filled', 0, 0, NULL, 'admin', '2021-09-19 16:48:17', 'admin', '2023-01-13 22:19:14', NULL, 1, 'generate-datasource');
INSERT INTO "public"."sys_menu" VALUES (12, 15, '日志管理', '/basic/log', 'basic/log/index', NULL, 1, 5, 0, 'ant-design:interaction-outlined', 0, 0, NULL, 'admin', '2021-09-19 18:15:56', 'admin', '2023-01-15 15:00:17', NULL, 1, 'basic-log');
INSERT INTO "public"."sys_menu" VALUES (13, 9, '性能监控', '/monitor/server', 'monitor/server/index', NULL, 1, 9, 0, 'ant-design:thunderbolt-filled', 0, 0, NULL, 'admin', '2021-09-20 11:42:22', 'admin', '2023-01-02 00:20:10', NULL, 1, 'monitor-server');
INSERT INTO "public"."sys_menu" VALUES (14, 9, 'Redis监控', '/monitor/redis', 'monitor/redis/index', NULL, 1, 10, 0, 'ant-design:trademark-outlined', 0, 0, NULL, 'admin', '2021-09-20 14:31:04', 'admin', '2023-01-02 00:20:17', NULL, 1, 'monitor-redis');
INSERT INTO "public"."sys_menu" VALUES (23, 1, '账户设置', '/system/setting', '/system/setting/index', NULL, 1, 10, 0, 'ant-design:user-switch-outlined', 1, 0, NULL, 'admin', '2023-01-13 23:47:22', 'admin', '2023-01-26 15:50:00', NULL, 1, 'system-setting');
INSERT INTO "public"."sys_menu" VALUES (4, 1, '部门管理', '/system/dept', 'system/dept/index', NULL, 1, 2, 0, 'ant-design:team', 0, 0, NULL, 'admin', '2019-01-29 18:47:40', 'admin', '2023-01-29 22:07:02.811', NULL, 1, 'system-dept');
INSERT INTO "public"."sys_menu" VALUES (3, 1, '用户管理', '/system/user', 'system/user/index', NULL, 1, 1, 0, 'ant-design:user', 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2023-02-02 00:09:55.829', NULL, 1, 'system-user');
INSERT INTO "public"."sys_menu" VALUES (17, 16, '类型映射', '/generate/field-type', 'generate/field-type/index', NULL, 1, 1, 0, 'ant-design:gateway-outlined', 0, 0, NULL, 'admin', '2022-11-18 20:26:01', 'admin', '2023-01-12 08:52:09', NULL, 1, 'generate-field-type');
INSERT INTO "public"."sys_menu" VALUES (18, 16, '基类管理', '/generate/base-class', 'generate/base-class/index', NULL, 1, 1, 0, 'ant-design:flag-twotone', 0, 0, NULL, 'admin', '2022-11-18 20:29:20', 'admin', '2023-01-12 08:51:49', NULL, 1, 'generate-base-class');
INSERT INTO "public"."sys_menu" VALUES (19, 16, '代码生成', '/generate/code-gen', 'generate/code-gen/index', NULL, 1, 1, 0, 'ant-design:file-word-outlined', 0, 0, NULL, 'admin', '2022-11-18 20:30:52', 'admin', '2023-01-12 08:51:26', NULL, 1, 'generate-code-gen');
INSERT INTO "public"."sys_menu" VALUES (21, 6, '首页', '/dashboard/home', 'dashboard/home/index', NULL, 1, 1, 1, 'ant-design:home-twotone', 0, 0, NULL, 'admin', '2022-12-20 23:12:49', 'admin', '2023-01-25 15:16:46', NULL, 1, 'dashboard-home');
INSERT INTO "public"."sys_menu" VALUES (20, 16, '模板配置', '/generate/template', 'generate/template/index', NULL, 1, 1, 0, 'ant-design:radius-setting-outlined', 0, 0, NULL, 'admin', '2022-11-29 21:24:46', 'admin', '2023-01-12 08:50:42', NULL, 1, 'generate-template');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role";
CREATE TABLE "public"."sys_role" (
  "id" int8 NOT NULL,
  "role_name" varchar(200) COLLATE "pg_catalog"."default",
  "role_code" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "dept_id" int8,
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."sys_role"."id" IS '主键id';
COMMENT ON COLUMN "public"."sys_role"."role_name" IS '角色名称';
COMMENT ON COLUMN "public"."sys_role"."role_code" IS '角色编码';
COMMENT ON COLUMN "public"."sys_role"."dept_id" IS '部门id';
COMMENT ON COLUMN "public"."sys_role"."description" IS '描述';
COMMENT ON COLUMN "public"."sys_role"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."sys_role"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_role"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."sys_role"."update_time" IS '更新时间';
COMMENT ON TABLE "public"."sys_role" IS '角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO "public"."sys_role" VALUES (131517140997, '测试员', 'test', 42202626373, NULL, 'admin', '2023-01-24 18:49:15', NULL, NULL);
INSERT INTO "public"."sys_role" VALUES (1, '管理员', 'admin', 42083908293, '管理员', NULL, '2018-12-21 18:03:39', 'admin', '2023-01-29 22:07:24.277');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role_permission";
CREATE TABLE "public"."sys_role_permission" (
  "id" int8 NOT NULL,
  "role_id" int8,
  "permission_id" int8
)
;
COMMENT ON COLUMN "public"."sys_role_permission"."role_id" IS '角色id';
COMMENT ON COLUMN "public"."sys_role_permission"."permission_id" IS '权限id';
COMMENT ON TABLE "public"."sys_role_permission" IS '角色权限表';

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO "public"."sys_role_permission" VALUES (71181784773, 1, 6);
INSERT INTO "public"."sys_role_permission" VALUES (71181784774, 1, 21);
INSERT INTO "public"."sys_role_permission" VALUES (71181784837, 1, 1);
INSERT INTO "public"."sys_role_permission" VALUES (71181784838, 1, 3);
INSERT INTO "public"."sys_role_permission" VALUES (71181784839, 1, 2);
INSERT INTO "public"."sys_role_permission" VALUES (71181784840, 1, 4);
INSERT INTO "public"."sys_role_permission" VALUES (71181784841, 1, 15);
INSERT INTO "public"."sys_role_permission" VALUES (71181784843, 1, 11);
INSERT INTO "public"."sys_role_permission" VALUES (71181784844, 1, 12);
INSERT INTO "public"."sys_role_permission" VALUES (71181784845, 1, 8);
INSERT INTO "public"."sys_role_permission" VALUES (71181784846, 1, 16);
INSERT INTO "public"."sys_role_permission" VALUES (71181784847, 1, 17);
INSERT INTO "public"."sys_role_permission" VALUES (71181784848, 1, 18);
INSERT INTO "public"."sys_role_permission" VALUES (71181784849, 1, 19);
INSERT INTO "public"."sys_role_permission" VALUES (71181784850, 1, 20);
INSERT INTO "public"."sys_role_permission" VALUES (71181784851, 1, 22);
INSERT INTO "public"."sys_role_permission" VALUES (71181784852, 1, 5);
INSERT INTO "public"."sys_role_permission" VALUES (71181784853, 1, 9);
INSERT INTO "public"."sys_role_permission" VALUES (71181784854, 1, 13);
INSERT INTO "public"."sys_role_permission" VALUES (71181784855, 1, 14);
INSERT INTO "public"."sys_role_permission" VALUES (71199952453, 1, 23);
INSERT INTO "public"."sys_role_permission" VALUES (162361300613, 131517140997, 6);
INSERT INTO "public"."sys_role_permission" VALUES (162361300614, 131517140997, 21);
INSERT INTO "public"."sys_role_permission" VALUES (162361300615, 131517140997, 1);
INSERT INTO "public"."sys_role_permission" VALUES (162361300616, 131517140997, 3);
INSERT INTO "public"."sys_role_permission" VALUES (162361300617, 131517140997, 4);
INSERT INTO "public"."sys_role_permission" VALUES (162361300618, 131517140997, 23);
INSERT INTO "public"."sys_role_permission" VALUES (162361300619, 131517140997, 16);
INSERT INTO "public"."sys_role_permission" VALUES (162361300620, 131517140997, 18);
INSERT INTO "public"."sys_role_permission" VALUES (162361300621, 131517140997, 19);
INSERT INTO "public"."sys_role_permission" VALUES (162361300622, 131517140997, 17);
INSERT INTO "public"."sys_role_permission" VALUES (162361300623, 131517140997, 20);
INSERT INTO "public"."sys_role_permission" VALUES (162361300624, 131517140997, 11);
INSERT INTO "public"."sys_role_permission" VALUES (162361300625, 131517140997, 15);
INSERT INTO "public"."sys_role_permission" VALUES (162361300626, 131517140997, 12);
INSERT INTO "public"."sys_role_permission" VALUES (162361300627, 131517140997, 8);
INSERT INTO "public"."sys_role_permission" VALUES (162361300628, 131517140997, 22);
INSERT INTO "public"."sys_role_permission" VALUES (162361300629, 131517140997, 5);
INSERT INTO "public"."sys_role_permission" VALUES (162361300630, 131517140997, 2);
INSERT INTO "public"."sys_role_permission" VALUES (162361300631, 131517140997, 9);
INSERT INTO "public"."sys_role_permission" VALUES (162361300632, 131517140997, 13);
INSERT INTO "public"."sys_role_permission" VALUES (162361300633, 131517140997, 14);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user";
CREATE TABLE "public"."sys_user" (
  "id" int8 NOT NULL,
  "username" varchar(100) COLLATE "pg_catalog"."default",
  "realname" varchar(100) COLLATE "pg_catalog"."default",
  "password" varchar(255) COLLATE "pg_catalog"."default",
  "avatar" varchar(255) COLLATE "pg_catalog"."default",
  "sex" int2,
  "phone" varchar(45) COLLATE "pg_catalog"."default",
  "del_flag" int2,
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."sys_user"."id" IS '主键id';
COMMENT ON COLUMN "public"."sys_user"."username" IS '登录账号';
COMMENT ON COLUMN "public"."sys_user"."realname" IS '真实姓名';
COMMENT ON COLUMN "public"."sys_user"."password" IS '密码';
COMMENT ON COLUMN "public"."sys_user"."avatar" IS '头像';
COMMENT ON COLUMN "public"."sys_user"."sex" IS '性别';
COMMENT ON COLUMN "public"."sys_user"."phone" IS '电话';
COMMENT ON COLUMN "public"."sys_user"."del_flag" IS '删除状态(0-正常,1-已删除)';
COMMENT ON COLUMN "public"."sys_user"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."sys_user"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_user"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."sys_user"."update_time" IS '更新时间';
COMMENT ON TABLE "public"."sys_user" IS '用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO "public"."sys_user" VALUES (1, 'admin', '管理员', '$2a$10$GK123CZgMaU2HQXFJGM46Or3EcQyZktQm6xeN1rR548Zvb/KA6QPG', '', 0, '13913814981', 0, NULL, '2019-06-21 17:54:10', 'admin', '2023-01-30 14:04:35.831');
INSERT INTO "public"."sys_user" VALUES (85465348741, 'test', '测试员', '$2a$10$Wm4Op/aI30y5DhhZ6vHrluc09JeoMysgU83URfH0kJLh4UOJ2UDyK', NULL, 1, NULL, 0, 'admin', '2023-01-16 10:56:36', 'admin', '2023-01-31 14:52:42.287');

-- ----------------------------
-- Table structure for sys_user_dept
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user_dept";
CREATE TABLE "public"."sys_user_dept" (
  "id" int8 NOT NULL,
  "user_id" int8,
  "dept_id" int8
)
;
COMMENT ON COLUMN "public"."sys_user_dept"."id" IS '主键id';
COMMENT ON COLUMN "public"."sys_user_dept"."user_id" IS '用户id';
COMMENT ON COLUMN "public"."sys_user_dept"."dept_id" IS '部门id';
COMMENT ON TABLE "public"."sys_user_dept" IS '用户部门表';

-- ----------------------------
-- Records of sys_user_dept
-- ----------------------------
INSERT INTO "public"."sys_user_dept" VALUES (62824114501, 1, 42083908293);
INSERT INTO "public"."sys_user_dept" VALUES (62826415877, 1, 1);
INSERT INTO "public"."sys_user_dept" VALUES (85465353221, 85465348741, 42202626373);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user_role";
CREATE TABLE "public"."sys_user_role" (
  "id" int8 NOT NULL,
  "user_id" int8,
  "role_id" int8
)
;
COMMENT ON COLUMN "public"."sys_user_role"."id" IS '主键id';
COMMENT ON COLUMN "public"."sys_user_role"."user_id" IS '用户id';
COMMENT ON COLUMN "public"."sys_user_role"."role_id" IS '角色id';
COMMENT ON TABLE "public"."sys_user_role" IS '用户角色表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO "public"."sys_user_role" VALUES (8613065349, 1, 1);
INSERT INTO "public"."sys_user_role" VALUES (169315988677, 85465348741, 131517140997);

-- ----------------------------
-- Primary Key structure for table gen_base_class
-- ----------------------------
ALTER TABLE "public"."gen_base_class" ADD CONSTRAINT "gen_base_class_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table gen_field_type
-- ----------------------------
ALTER TABLE "public"."gen_field_type" ADD CONSTRAINT "gen_field_type_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table gen_table
-- ----------------------------
ALTER TABLE "public"."gen_table" ADD CONSTRAINT "gen_table_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table gen_table_field
-- ----------------------------
ALTER TABLE "public"."gen_table_field" ADD CONSTRAINT "gen_table_field_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table gen_template
-- ----------------------------
ALTER TABLE "public"."gen_template" ADD CONSTRAINT "gen_template_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table gen_template_group
-- ----------------------------
ALTER TABLE "public"."gen_template_group" ADD CONSTRAINT "gen_template_group_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_button
-- ----------------------------
ALTER TABLE "public"."sys_button" ADD CONSTRAINT "sys_button_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_button_permission
-- ----------------------------
ALTER TABLE "public"."sys_button_permission" ADD CONSTRAINT "sys_button_permission_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_data_permission
-- ----------------------------
ALTER TABLE "public"."sys_data_permission" ADD CONSTRAINT "sys_data_permission_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_data_source
-- ----------------------------
ALTER TABLE "public"."sys_data_source" ADD CONSTRAINT "sys_data_source_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_dept
-- ----------------------------
ALTER TABLE "public"."sys_dept" ADD CONSTRAINT "sys_dept_pkey" PRIMARY KEY ("dept_id");

-- ----------------------------
-- Primary Key structure for table sys_dict
-- ----------------------------
ALTER TABLE "public"."sys_dict" ADD CONSTRAINT "sys_dict_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_dict_item
-- ----------------------------
ALTER TABLE "public"."sys_dict_item" ADD CONSTRAINT "sys_dict_item_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_log
-- ----------------------------
ALTER TABLE "public"."sys_log" ADD CONSTRAINT "sys_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE "public"."sys_menu" ADD CONSTRAINT "sys_menu_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE "public"."sys_role" ADD CONSTRAINT "sys_role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_role_permission
-- ----------------------------
ALTER TABLE "public"."sys_role_permission" ADD CONSTRAINT "sys_role_permission_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE "public"."sys_user" ADD CONSTRAINT "sys_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_user_dept
-- ----------------------------
ALTER TABLE "public"."sys_user_dept" ADD CONSTRAINT "sys_user_dept_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_user_role
-- ----------------------------
ALTER TABLE "public"."sys_user_role" ADD CONSTRAINT "sys_user_role_pkey" PRIMARY KEY ("id");
