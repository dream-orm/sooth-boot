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

 Date: 19/02/2023 18:45:52
*/


-- ----------------------------
-- Table structure for gen_base_class
-- ----------------------------
DROP TABLE IF EXISTS "public"."gen_base_class";
CREATE TABLE "public"."gen_base_class" (
  "id" int8 NOT NULL,
  "class_name" varchar(200) COLLATE "pg_catalog"."default",
  "fields" varchar(255) COLLATE "pg_catalog"."default",
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
INSERT INTO "public"."gen_base_class" VALUES (192027676293, 'com.moxa.sooth.core.base.entity.BaseEntity', 'createBy,createTime,updateBy,updateTime', '2023-02-04 17:27:12', NULL, 'admin', NULL);

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
INSERT INTO "public"."gen_field_type" VALUES (-16, 'LONGNVARCHAR', 'String');
INSERT INTO "public"."gen_field_type" VALUES (-15, 'NCHAR', 'String');
INSERT INTO "public"."gen_field_type" VALUES (-9, 'NVARCHAR', 'String');
INSERT INTO "public"."gen_field_type" VALUES (-8, 'ROWID', 'Object');
INSERT INTO "public"."gen_field_type" VALUES (-7, 'BIT', 'Byte');
INSERT INTO "public"."gen_field_type" VALUES (-6, 'TINYINT', 'Byte');
INSERT INTO "public"."gen_field_type" VALUES (-5, 'BIGINT', 'Long');
INSERT INTO "public"."gen_field_type" VALUES (-4, 'LONGVARBINARY', 'Byte[]');
INSERT INTO "public"."gen_field_type" VALUES (-3, 'VARBINARY', 'Byte[]');
INSERT INTO "public"."gen_field_type" VALUES (-2, 'BINARY', 'Byte[]');
INSERT INTO "public"."gen_field_type" VALUES (-1, 'LONGVARCHAR', 'String');
INSERT INTO "public"."gen_field_type" VALUES (0, 'NULL', 'Object');
INSERT INTO "public"."gen_field_type" VALUES (1, 'CHAR', 'String');
INSERT INTO "public"."gen_field_type" VALUES (2, 'NUMERIC', 'java.math.BigDecimal');
INSERT INTO "public"."gen_field_type" VALUES (3, 'DECIMAL', 'java.math.BigDecimal');
INSERT INTO "public"."gen_field_type" VALUES (4, 'INTEGER', 'Integer');
INSERT INTO "public"."gen_field_type" VALUES (5, 'SMALLINT', 'Short');
INSERT INTO "public"."gen_field_type" VALUES (6, 'FLOAT', 'Float');
INSERT INTO "public"."gen_field_type" VALUES (7, 'REAL', 'Float');
INSERT INTO "public"."gen_field_type" VALUES (8, 'DOUBLE', 'Double');
INSERT INTO "public"."gen_field_type" VALUES (12, 'VARCHAR', 'String');
INSERT INTO "public"."gen_field_type" VALUES (16, 'BOOLEAN', 'Boolean');
INSERT INTO "public"."gen_field_type" VALUES (70, 'DATALINK', 'Object');
INSERT INTO "public"."gen_field_type" VALUES (91, 'DATE', 'java.util.Date');
INSERT INTO "public"."gen_field_type" VALUES (92, 'TIME', 'java.sql.Time');
INSERT INTO "public"."gen_field_type" VALUES (93, 'TIMESTAMP', 'java.util.Date');
INSERT INTO "public"."gen_field_type" VALUES (1111, 'OTHER', 'Object');
INSERT INTO "public"."gen_field_type" VALUES (2000, 'JAVA_OBJECT', 'Object');
INSERT INTO "public"."gen_field_type" VALUES (2001, 'DISTINCT', 'Object');
INSERT INTO "public"."gen_field_type" VALUES (2002, 'STRUCT', 'Object');
INSERT INTO "public"."gen_field_type" VALUES (2003, 'ARRAY', 'Object');
INSERT INTO "public"."gen_field_type" VALUES (2004, 'BLOB', 'java.io.InputStream');
INSERT INTO "public"."gen_field_type" VALUES (2005, 'CLOB', 'String');
INSERT INTO "public"."gen_field_type" VALUES (2006, 'REF', 'Object');
INSERT INTO "public"."gen_field_type" VALUES (2009, 'SQLXML', 'Object');
INSERT INTO "public"."gen_field_type" VALUES (2011, 'NCLOB', 'String');
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
COMMENT ON COLUMN "public"."gen_table"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."gen_table"."update_time" IS '创建时间';
COMMENT ON COLUMN "public"."gen_table"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."gen_table"."update_by" IS '更新人';
COMMENT ON TABLE "public"."gen_table" IS '代码生成表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO "public"."gen_table" VALUES (190414497349, 'sys_menu', 'SysMenu', '菜单权限表', '2023-02-04 10:27:07', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (197384943109, 'gen_base_class', 'GenBaseClass', '基类管理', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (197384947013, 'gen_field_type', 'GenFieldType', '字段类型管理', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (197384948549, 'gen_table', 'GenTable', '代码生成表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (197384950085, 'gen_table_field', 'GenTableField', '代码生成表字段', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (197384952389, 'gen_template', 'GenTemplate', '模板配置', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (197384953477, 'gen_template_group', 'GenTemplateGroup', '模板配置组', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (197384954501, 'sys_button', 'SysButton', '角色权限表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (197384955717, 'sys_button_permission', 'SysButtonPermission', '角色权限表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (197384956805, 'sys_data_permission', 'SysDataPermission', '角色权限表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (197384958021, 'sys_data_source', 'SysDataSource', NULL, '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (197384959493, 'sys_dept', 'SysDept', '组织机构表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (197384960965, 'sys_dict', 'SysDict', NULL, '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (197384962373, 'sys_dict_item', 'SysDictItem', NULL, '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (197384963717, 'sys_log', 'SysLog', '系统日志表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (197384966149, 'sys_role', 'SysRole', '角色表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (197384967493, 'sys_role_permission', 'SysRolePermission', '角色权限表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (197384968837, 'sys_user', 'SysUser', '用户表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (197384970053, 'sys_user_dept', 'SysUserDept', '用户部门表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (197384971205, 'sys_user_role', 'SysUserRole', '用户角色表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO "public"."gen_table" VALUES (274868828933, 'sys_quartz', 'SysQuartz', '定时任务', '2023-02-19 17:00:25.451', NULL, 'admin', NULL);

-- ----------------------------
-- Table structure for gen_table_field
-- ----------------------------
DROP TABLE IF EXISTS "public"."gen_table_field";
CREATE TABLE "public"."gen_table_field" (
  "id" int8 NOT NULL,
  "table_id" int8,
  "column_name" varchar(200) COLLATE "pg_catalog"."default",
  "column_type" varchar(200) COLLATE "pg_catalog"."default",
  "column_comment" varchar(200) COLLATE "pg_catalog"."default",
  "attr_name" varchar(200) COLLATE "pg_catalog"."default",
  "attr_type" varchar(200) COLLATE "pg_catalog"."default",
  "order_no" int4,
  "primary_pk" int2
)
;
COMMENT ON COLUMN "public"."gen_table_field"."id" IS 'id';
COMMENT ON COLUMN "public"."gen_table_field"."table_id" IS '表ID';
COMMENT ON COLUMN "public"."gen_table_field"."column_name" IS '字段名称';
COMMENT ON COLUMN "public"."gen_table_field"."column_type" IS '字段类型';
COMMENT ON COLUMN "public"."gen_table_field"."column_comment" IS '字段说明';
COMMENT ON COLUMN "public"."gen_table_field"."attr_name" IS '属性名';
COMMENT ON COLUMN "public"."gen_table_field"."attr_type" IS '属性类型';
COMMENT ON COLUMN "public"."gen_table_field"."order_no" IS '排序';
COMMENT ON COLUMN "public"."gen_table_field"."primary_pk" IS '主键 0：否  1：是';
COMMENT ON TABLE "public"."gen_table_field" IS '代码生成表字段';

-- ----------------------------
-- Records of gen_table_field
-- ----------------------------
INSERT INTO "public"."gen_table_field" VALUES (190414499013, 190414497349, 'id', 'BIGINT', '主键id', 'id', 'Long', NULL, 1);
INSERT INTO "public"."gen_table_field" VALUES (190414499014, 190414497349, 'parent_id', 'BIGINT', '父id', 'parentId', 'Long', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (190414499015, 190414497349, 'name', 'VARCHAR', '菜单标题', 'name', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (190414499016, 190414497349, 'url', 'VARCHAR', '路径', 'url', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (190414499017, 190414497349, 'component', 'VARCHAR', '组件', 'component', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (190414499018, 190414497349, 'redirect', 'VARCHAR', '一级菜单跳转地址', 'redirect', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (190414499019, 190414497349, 'menu_type', 'INTEGER', '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)', 'menuType', 'Integer', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (190414499020, 190414497349, 'sort_no', 'DOUBLE', '菜单排序', 'sortNo', 'Double', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (190414499021, 190414497349, 'fixed_tab', 'SMALLINT', '聚合子路由: 1是0否', 'fixedTab', 'Short', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (190414499022, 190414497349, 'icon', 'VARCHAR', '菜单图标', 'icon', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (190414499023, 190414497349, 'hidden', 'INTEGER', '是否隐藏路由: 0否,1是', 'hidden', 'Integer', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (190414499024, 190414497349, 'hide_tab', 'INTEGER', '是否隐藏tab: 0否,1是', 'hideTab', 'Integer', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (190414499025, 190414497349, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (190414499026, 190414497349, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (190414499027, 190414497349, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (190414499028, 190414497349, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (190414499029, 190414497349, 'update_time', 'TIMESTAMP', '更新时间', 'updateTime', 'java.util.Date', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (190414499030, 190414497349, 'del_flag', 'INTEGER', '删除状态 0正常 1已删除', 'delFlag', 'Integer', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (190414499031, 190414497349, 'keep_alive', 'SMALLINT', '缓存路由: 1是0否', 'keepAlive', 'Short', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (190414499032, 190414497349, 'component_name', 'VARCHAR', '组件名称', 'componentName', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384944133, 197384943109, 'id', 'BIGINT', 'id', 'id', 'Long', NULL, 1);
INSERT INTO "public"."gen_table_field" VALUES (197384944134, 197384943109, 'class_name', 'VARCHAR', '基类全类名', 'className', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384944135, 197384943109, 'fields', 'VARCHAR', '基类字段，多个用英文逗号分隔', 'fields', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384944136, 197384943109, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384944137, 197384943109, 'update_time', 'TIMESTAMP', '创建时间', 'updateTime', 'java.util.Date', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384944138, 197384943109, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384944139, 197384943109, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384947333, 197384947013, 'id', 'BIGINT', 'id', 'id', 'Long', NULL, 1);
INSERT INTO "public"."gen_table_field" VALUES (197384947334, 197384947013, 'column_type', 'VARCHAR', '字段类型', 'columnType', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384947335, 197384947013, 'attr_type', 'VARCHAR', '属性类型', 'attrType', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384948933, 197384948549, 'id', 'BIGINT', 'id', 'id', 'Long', NULL, 1);
INSERT INTO "public"."gen_table_field" VALUES (197384948934, 197384948549, 'table_name', 'VARCHAR', '表名', 'tableName', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384948935, 197384948549, 'class_name', 'VARCHAR', '类名', 'className', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384948936, 197384948549, 'table_comment', 'VARCHAR', '说明', 'tableComment', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384948937, 197384948549, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384948938, 197384948549, 'update_time', 'TIMESTAMP', '创建时间', 'updateTime', 'java.util.Date', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384948939, 197384948549, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384948940, 197384948549, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384950213, 197384950085, 'id', 'BIGINT', 'id', 'id', 'Long', NULL, 1);
INSERT INTO "public"."gen_table_field" VALUES (197384950214, 197384950085, 'table_id', 'BIGINT', '表ID', 'tableId', 'Long', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384950215, 197384950085, 'column_name', 'VARCHAR', '字段名称', 'columnName', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384950216, 197384950085, 'column_type', 'VARCHAR', '字段类型', 'columnType', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384950217, 197384950085, 'column_comment', 'VARCHAR', '字段说明', 'columnComment', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384950218, 197384950085, 'attr_name', 'VARCHAR', '属性名', 'attrName', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384950219, 197384950085, 'attr_type', 'VARCHAR', '属性类型', 'attrType', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384950220, 197384950085, 'order_no', 'INTEGER', '排序', 'orderNo', 'Integer', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384950221, 197384950085, 'primary_pk', 'SMALLINT', '主键 0：否  1：是', 'primaryPk', 'Short', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384952517, 197384952389, 'id', 'BIGINT', 'id', 'id', 'Long', NULL, 1);
INSERT INTO "public"."gen_table_field" VALUES (197384952518, 197384952389, 'name', 'VARCHAR', '模板名称', 'name', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384952519, 197384952389, 'content', 'VARCHAR', NULL, 'content', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384952520, 197384952389, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384952521, 197384952389, 'update_by', 'VARCHAR', '更新人登录名称', 'updateBy', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384952522, 197384952389, 'update_time', 'TIMESTAMP', '更新日期', 'updateTime', 'java.util.Date', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384952523, 197384952389, 'create_by', 'VARCHAR', '创建人登录名称', 'createBy', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384952524, 197384952389, 'group_id', 'BIGINT', '分组id', 'groupId', 'Long', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384952525, 197384952389, 'file_name', 'VARCHAR', '模板文件名', 'fileName', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384953541, 197384953477, 'id', 'BIGINT', 'id', 'id', 'Long', NULL, 1);
INSERT INTO "public"."gen_table_field" VALUES (197384953542, 197384953477, 'name', 'VARCHAR', '表名', 'name', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384954629, 197384954501, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1);
INSERT INTO "public"."gen_table_field" VALUES (197384954630, 197384954501, 'menu_id', 'BIGINT', '菜单id', 'menuId', 'Long', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384954631, 197384954501, 'type', 'VARCHAR', '按钮权限类型', 'type', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384955845, 197384955717, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1);
INSERT INTO "public"."gen_table_field" VALUES (197384955846, 197384955717, 'button_id', 'BIGINT', '按钮id', 'buttonId', 'Long', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384955847, 197384955717, 'role_id', 'BIGINT', '角色id', 'roleId', 'Long', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384956869, 197384956805, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1);
INSERT INTO "public"."gen_table_field" VALUES (197384956870, 197384956805, 'permission_code', 'INTEGER', '权限', 'permissionCode', 'Integer', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384956871, 197384956805, 'dept_ids', 'VARCHAR', '指定部门', 'deptIds', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384956872, 197384956805, 'role_id', 'BIGINT', '角色id', 'roleId', 'Long', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384958213, 197384958021, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1);
INSERT INTO "public"."gen_table_field" VALUES (197384958214, 197384958021, 'name', 'VARCHAR', '数据源名称', 'name', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384958215, 197384958021, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384958216, 197384958021, 'url', 'VARCHAR', '数据源地址', 'url', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384958217, 197384958021, 'username', 'VARCHAR', '用户名', 'username', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384958218, 197384958021, 'password', 'VARCHAR', '密码', 'password', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384958219, 197384958021, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384958220, 197384958021, 'create_time', 'TIMESTAMP', '创建日期', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384958221, 197384958021, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384958222, 197384958021, 'update_time', 'TIMESTAMP', '更新日期', 'updateTime', 'java.util.Date', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384959685, 197384959493, 'dept_id', 'BIGINT', 'ID', 'deptId', 'Long', NULL, 1);
INSERT INTO "public"."gen_table_field" VALUES (197384959686, 197384959493, 'parent_id', 'BIGINT', '父机构ID', 'parentId', 'Long', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384959687, 197384959493, 'dept_name', 'VARCHAR', '机构/部门名称', 'deptName', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384959688, 197384959493, 'dept_code', 'VARCHAR', '机构/部门编码', 'deptCode', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384959689, 197384959493, 'order_no', 'DOUBLE', '排序', 'orderNo', 'Double', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384959690, 197384959493, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384959691, 197384959493, 'status', 'INTEGER', '状态（1启用，0不启用）', 'status', 'Integer', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384959692, 197384959493, 'del_flag', 'INTEGER', '删除状态（0，正常，1已删除）', 'delFlag', 'Integer', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384959693, 197384959493, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384959694, 197384959493, 'create_time', 'TIMESTAMP', '创建日期', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384959695, 197384959493, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384959696, 197384959493, 'update_time', 'TIMESTAMP', '更新日期', 'updateTime', 'java.util.Date', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384961093, 197384960965, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1);
INSERT INTO "public"."gen_table_field" VALUES (197384961094, 197384960965, 'name', 'VARCHAR', '字典名称', 'name', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384961095, 197384960965, 'code', 'VARCHAR', '字典编码', 'code', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384961096, 197384960965, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384961097, 197384960965, 'del_flag', 'INTEGER', '删除状态', 'delFlag', 'Integer', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384961098, 197384960965, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384961099, 197384960965, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384961157, 197384960965, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384961158, 197384960965, 'update_time', 'TIMESTAMP', '更新时间', 'updateTime', 'java.util.Date', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384961159, 197384960965, 'type', 'INTEGER', '字典类型0为string,1为number', 'type', 'Integer', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384962501, 197384962373, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1);
INSERT INTO "public"."gen_table_field" VALUES (197384962502, 197384962373, 'dict_id', 'BIGINT', '字典id', 'dictId', 'Long', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384962503, 197384962373, 'name', 'VARCHAR', '字典项文本', 'name', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384962504, 197384962373, 'value', 'VARCHAR', '字典项值', 'value', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384962505, 197384962373, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384962506, 197384962373, 'order_no', 'DOUBLE', '排序', 'orderNo', 'Double', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384963909, 197384963717, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1);
INSERT INTO "public"."gen_table_field" VALUES (197384963910, 197384963717, 'log_type', 'VARCHAR', '日志类型', 'logType', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384963911, 197384963717, 'username', 'VARCHAR', '操作用户账号', 'username', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384963912, 197384963717, 'realname', 'VARCHAR', '操作用户名称', 'realname', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384963913, 197384963717, 'ip', 'VARCHAR', 'IP', 'ip', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384963914, 197384963717, 'method', 'VARCHAR', '请求java方法', 'method', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384963915, 197384963717, 'request_url', 'VARCHAR', '请求路径', 'requestUrl', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384963916, 197384963717, 'request_param', 'VARCHAR', '请求参数', 'requestParam', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384963917, 197384963717, 'request_type', 'VARCHAR', '请求类型', 'requestType', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384963918, 197384963717, 'cost_time', 'BIGINT', '耗时', 'costTime', 'Long', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384963919, 197384963717, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384963920, 197384963717, 'user_agent', 'VARCHAR', '浏览器', 'userAgent', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384963921, 197384963717, 'status', 'INTEGER', '状态', 'status', 'Integer', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384963922, 197384963717, 'biz_module', 'VARCHAR', '业务模块', 'bizModule', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384963923, 197384963717, 'description', 'VARCHAR', '操作描述', 'description', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384963924, 197384963717, 'message', 'VARCHAR', '错误信息', 'message', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384963925, 197384963717, 'exception_class', 'VARCHAR', '异常类', 'exceptionClass', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384963926, 197384963717, 'stack_trace', 'VARCHAR', '详尽异常', 'stackTrace', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384966341, 197384966149, 'id', 'BIGINT', '主键id', 'id', 'Long', NULL, 1);
INSERT INTO "public"."gen_table_field" VALUES (197384966342, 197384966149, 'role_name', 'VARCHAR', '角色名称', 'roleName', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384966343, 197384966149, 'role_code', 'VARCHAR', '角色编码', 'roleCode', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384966344, 197384966149, 'dept_id', 'BIGINT', '部门id', 'deptId', 'Long', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384966345, 197384966149, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384966346, 197384966149, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384966347, 197384966149, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384966348, 197384966149, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384966349, 197384966149, 'update_time', 'TIMESTAMP', '更新时间', 'updateTime', 'java.util.Date', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384967621, 197384967493, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1);
INSERT INTO "public"."gen_table_field" VALUES (197384967622, 197384967493, 'role_id', 'BIGINT', '角色id', 'roleId', 'Long', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384967623, 197384967493, 'permission_id', 'BIGINT', '权限id', 'permissionId', 'Long', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384968965, 197384968837, 'id', 'BIGINT', '主键id', 'id', 'Long', NULL, 1);
INSERT INTO "public"."gen_table_field" VALUES (197384968966, 197384968837, 'username', 'VARCHAR', '登录账号', 'username', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384968967, 197384968837, 'realname', 'VARCHAR', '真实姓名', 'realname', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384968968, 197384968837, 'password', 'VARCHAR', '密码', 'password', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384968969, 197384968837, 'avatar', 'VARCHAR', '头像', 'avatar', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384968970, 197384968837, 'sex', 'SMALLINT', '性别', 'sex', 'Short', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384968971, 197384968837, 'phone', 'VARCHAR', '电话', 'phone', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384968972, 197384968837, 'del_flag', 'SMALLINT', '删除状态(0-正常,1-已删除)', 'delFlag', 'Short', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384968973, 197384968837, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384968974, 197384968837, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384968975, 197384968837, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384968976, 197384968837, 'update_time', 'TIMESTAMP', '更新时间', 'updateTime', 'java.util.Date', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384970181, 197384970053, 'id', 'BIGINT', '主键id', 'id', 'Long', NULL, 1);
INSERT INTO "public"."gen_table_field" VALUES (197384970182, 197384970053, 'user_id', 'BIGINT', '用户id', 'userId', 'Long', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384970183, 197384970053, 'dept_id', 'BIGINT', '部门id', 'deptId', 'Long', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384971333, 197384971205, 'id', 'BIGINT', '主键id', 'id', 'Long', NULL, 1);
INSERT INTO "public"."gen_table_field" VALUES (197384971334, 197384971205, 'user_id', 'BIGINT', '用户id', 'userId', 'Long', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (197384971335, 197384971205, 'role_id', 'BIGINT', '角色id', 'roleId', 'Long', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (274859735429, 274859734981, 'id', 'VARCHAR', NULL, 'id', 'String', NULL, 1);
INSERT INTO "public"."gen_table_field" VALUES (274859735430, 274859734981, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (274859735431, 274859734981, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (274859735432, 274859734981, 'del_flag', 'INTEGER', '删除状态', 'delFlag', 'Integer', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (274859735433, 274859734981, 'update_by', 'VARCHAR', '修改人', 'updateBy', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (274859735434, 274859734981, 'update_time', 'TIMESTAMP', '修改时间', 'updateTime', 'java.util.Date', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (274859735435, 274859734981, 'job_name', 'VARCHAR', '任务名', 'jobName', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (274859735436, 274859734981, 'cron_expression', 'VARCHAR', 'cron表达式', 'cronExpression', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (274859735437, 274859734981, 'parameter', 'VARCHAR', '参数', 'parameter', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (274859735438, 274859734981, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (274859735439, 274859734981, 'status', 'INTEGER', '状态 0正常 -1停止', 'status', 'Integer', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (274868829253, 274868828933, 'id', 'VARCHAR', NULL, 'id', 'String', NULL, 1);
INSERT INTO "public"."gen_table_field" VALUES (274868829254, 274868828933, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (274868829255, 274868828933, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (274868829256, 274868828933, 'del_flag', 'INTEGER', '删除状态', 'delFlag', 'Integer', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (274868829257, 274868828933, 'update_by', 'VARCHAR', '修改人', 'updateBy', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (274868829258, 274868828933, 'update_time', 'TIMESTAMP', '修改时间', 'updateTime', 'java.util.Date', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (274868829259, 274868828933, 'name', 'VARCHAR', '任务名', 'name', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (274868829260, 274868828933, 'cron', 'VARCHAR', 'cron表达式', 'cron', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (274868829261, 274868828933, 'parameter', 'VARCHAR', '参数', 'parameter', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (274868829262, 274868828933, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0);
INSERT INTO "public"."gen_table_field" VALUES (274868829263, 274868828933, 'status', 'INTEGER', '状态 0正常 -1停止', 'status', 'Integer', NULL, 0);

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
INSERT INTO "public"."gen_template" VALUES (192034258629, '编辑视图', 'package ${packageName}.${moduleName}.${entityName}.table;

import com.moxa.dream.system.annotation.View;
import lombok.Data;
import ${packageName}.${moduleName}.${entityName}.table.${className};

/**
 * @Description: ${tableComment!''''}
 * @Author: ${author!''''}
 * @Date: ${.now?string["yyyy-MM-dd HH:mm:ss"]}
 */
@Data
@View(${className}.class)
<#if baseClass??>
public class ${className}EditView extends ${baseClass} {
<#else>
public class ${className}EditView {  
</#if>  
    <#list columns as column>
    <#if !baseFields??||baseFields?seq_index_of("${column.attrName}")==-1>
		/**
     * ${column.columnComment}
     */
    private ${column.attrType} ${column.attrName};
		</#if>
</#list>
}', '2023-02-04 17:28:55', 'admin', '2023-02-04 19:46:23', 'admin', 82324589637, '${className}EditView.java');
INSERT INTO "public"."gen_template" VALUES (192578414789, '查询条件接受类', 'package ${packageName}.${moduleName}.${entityName}.model;

import lombok.Data;

@Data
public class ${className}Model {
  
}', '2023-02-04 19:50:38', 'admin', '2023-02-04 19:54:07', 'admin', 82324589637, '${className}Model.java');
INSERT INTO "public"."gen_template" VALUES (192596589061, '列表视图', 'package ${packageName}.${moduleName}.${entityName}.view;

import lombok.Data;

@Data
public class ${className}ListView {
  
}', '2023-02-04 19:55:22', NULL, NULL, 'admin', 82324589637, '${className}ListView.java');
INSERT INTO "public"."gen_template" VALUES (192608309829, '接口服务类', 'package ${packageName}.${moduleName}.${entityName}.service;

import com.moxa.dream.template.service.IService;
import ${packageName}.${moduleName}.${entityName}.view.${className}ListView;
import ${packageName}.${moduleName}.${entityName}.view.${className}EditView;


public class I${className}Service extends IService<${className}ListView,${className}EditView> {
  
}', '2023-02-04 19:58:25', NULL, NULL, 'admin', 82324589637, 'I${className}Service.java');
INSERT INTO "public"."gen_template" VALUES (192619070789, '接口实现类', 'package ${packageName}.${moduleName}.${entityName}.service.impl;

import com.moxa.dream.template.service.IService;
import ${packageName}.${moduleName}.${entityName}.service.I${className}Service;
import ${packageName}.${moduleName}.${entityName}.view.${className}ListView;
import ${packageName}.${moduleName}.${entityName}.view.${className}EditView;
import org.springframework.stereotype.Service;

@Service
public class ${className}ServiceImpl extends ServiceImpl<${className}ListView,${className}EditView> implements I${className}Service{
  
}', '2023-02-04 20:01:13', NULL, NULL, 'admin', 82324589637, '${className}ServiceImpl.java');
INSERT INTO "public"."gen_template" VALUES (192633866053, '视图控制类', 'package ${packageName}.${moduleName}.${entityName}.service.impl;

import com.moxa.sooth.core.base.controller.BaseController;
import ${packageName}.${moduleName}.${entityName}.service.I${className}Service;
import ${packageName}.${moduleName}.${entityName}.model.${className}Model;
import ${packageName}.${moduleName}.${entityName}.view.${className}EditView;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/${moduleName}/${entityName}")
public class ${className}Controller extends BaseController<I${className}Service, ${className}EditView, ${className}Model>{
  
}', '2023-02-04 20:05:04', NULL, NULL, 'admin', 82324589637, '${className}Controller.java');
INSERT INTO "public"."gen_template" VALUES (192662837189, 'api请求页', 'import { BaseApi } from ''/@/api/base/baseApi'';

class ${entityName?cap_first}Api extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
}

export const ${entityName}Api = new ${entityName?cap_first}Api(''/${moduleName}/${entityName}'').api;', '2023-02-04 20:12:37', 'admin', '2023-02-04 20:13:07', 'admin', 82324589637, '${entityName}.api.ts');
INSERT INTO "public"."gen_template" VALUES (192688658309, '列表页', '<template>
  <div>
    <BasicTable @register="registerTable">
      <template #toolbar>
        <Button v-auth="PermEnum.ADD" type="primary" @click="handleAdd"> 新增</Button>
      </template>
      <template #selected>
        <a v-auth="PermEnum.REMOVE_BATCH" @click="handleRemoveBatch">删除</a>
      </template>
      <template #action="{ record }">
        <TableAction
          :actions="getTableAction(record)"
          :dropDownActions="getDropDownAction(record)"
        />
      </template>
    </BasicTable>
    <${entityName?cap_first}Modal @register="registerModal" @success="handleSuccess" />
  </div>
</template>
<script lang="ts" name="system-dept" setup>
  import { Button } from ''ant-design-vue'';
  import { BasicTable, useTable, TableAction, ActionItem } from ''/@/components/Table'';
  import { PermEnum } from ''/@/enums/permEnum'';
  import { useModal } from ''/@/components/Modal'';
  import ${entityName?cap_first}Modal from ''./${entityName?cap_first}Modal.vue'';
  import { columns, searchFormSchema } from ''./${entityName}.data'';
  import { ${entityName}Api } from ''./${entityName}.api.api'';
  const [registerModal, { openModal }] = useModal();
  const [registerTable, { reload, getSelectRowKeys }] = useTable({
    title: ''列表'',
    api: ${entityName}Api.page,
    columns,
    formConfig: {
      labelWidth: 80,
      schemas: searchFormSchema,
    },
    useSearchForm: true,
    showTableSetting: true,
    bordered: true,
    actionColumn: {
      width: 120,
      title: ''操作'',
    },
  });

  function handleAdd() {
    openModal(true, {
      isUpdate: false,
    });
  }

  function handleEdit(record: Recordable) {
    openModal(true, {
      record,
      isUpdate: true,
    });
  }

  async function handleDelete(record: Recordable) {
    await ${entityName}Api.remove({ id: record.deptId });
    reload();
  }
  async function handleRemoveBatch() {
    const selectRowKeys = getSelectRowKeys();
    await ${entityName}Api.removeBatch(selectRowKeys, reload);
  }
  function handleSuccess() {
    reload();
  }

  function getTableAction(record): ActionItem[] {
    return [
      {
        tooltip: ''修改'',
        icon: ''clarity:note-edit-line'',
        onClick: handleEdit.bind(null, record),
        auth: PermEnum.EDIT,
      },
      {
        tooltip: ''删除'',
        icon: ''ant-design:delete-outlined'',
        color: ''error'',
        auth: PermEnum.REMOVE,
        popConfirm: {
          title: ''是否确认删除'',
          confirm: handleDelete.bind(null, record),
        },
      },
    ];
  }

  function getDropDownAction(record): ActionItem[] | null {
    return null;
  }
</script>', '2023-02-04 20:19:20', NULL, NULL, 'admin', 82324589637, 'index.vue');
INSERT INTO "public"."gen_template" VALUES (192702147397, '弹窗页', '<template>
  <BasicModal v-bind="$attrs" @register="registerModal" :title="getTitle" @ok="handleSubmit">
    <BasicForm @register="registerForm" />
  </BasicModal>
</template>
<script lang="ts">
  import { defineComponent, ref, computed, unref } from ''vue'';
  import { BasicModal, useModalInner } from ''/@/components/Modal'';
  import { BasicForm, useForm } from ''/@/components/Form/index'';
  import { formSchema } from ''./${entityName}.data'';

  import { ${entityName}Api } from ''./${entityName}.api'';

  export default defineComponent({
    name: ''${entityName?cap_first}Modal'',
    components: { BasicModal, BasicForm },
    emits: [''success'', ''register''],
    setup(_, { emit }) {
      const isUpdate = ref(true);

      const [registerForm, { setFieldsValue, updateSchema, validate }] = useForm({
        labelWidth: 80,
        baseColProps: { span: 24 },
        schemas: formSchema,
        showActionButtonGroup: false,
      });

      const [registerModal, { openOKLoading, closeModal }] = useModalInner(async (data) => {
        isUpdate.value = !!data?.isUpdate;
        if (unref(isUpdate)) {
          setFieldsValue({
            ...data.record,
          });
      });

      const getTitle = computed(() => (!unref(isUpdate) ? ''新增'' : ''编辑''));

      async function handleSubmit() {
        const values = await validate();
        openOKLoading(async () => {
          await ${entityName}Api.saveOrEdit(values, unref(isUpdate));
          closeModal();
          emit(''success'');
        });
      }
      return { registerModal, registerForm, getTitle, handleSubmit };
    },
  });
</script>', '2023-02-04 20:22:51', NULL, NULL, 'admin', 82324589637, '${entityName?cap_first}.vue');
INSERT INTO "public"."gen_template" VALUES (192707297157, '数据页', 'import { BasicColumn } from ''/@/components/Table'';
import { FormSchema } from ''/@/components/Table'';

export const columns: BasicColumn[] = [
];

export const searchFormSchema: FormSchema[] = [
];

export const formSchema: FormSchema[] = [
];', '2023-02-04 20:24:12', NULL, NULL, 'admin', 82324589637, '${entityName}.data.ts');
INSERT INTO "public"."gen_template" VALUES (362832993636357, '数据库表java类映射', 'package ${packageName}.${moduleName}.${entityName}.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;

/**
 * @Description: ${tableComment!''''}
 * @Author: ${author!''''}
 * @Date: ${.now?string["yyyy-MM-dd HH:mm:ss"]}
 */
@Data
@Table("${tableName}")
public class ${className} {

    <#list columns as column>
  
		/**
     * ${column.columnComment!''''}
     */
    <#if column.primaryPk>
    @Id
    </#if>
    @Column(value = "${column.columnName}", jdbcType = Types.${column.columnType})
    private ${column.attrType} ${column.attrName};
</#list>
}', '2022-12-11 08:31:15', 'admin', '2023-02-19 17:03:06.025', NULL, 82324589637, '${className}.java');

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
INSERT INTO "public"."sys_button" VALUES (187263535685, 2, 'remove_batch');
INSERT INTO "public"."sys_button" VALUES (192006785029, 12, 'remove_batch');
INSERT INTO "public"."sys_button" VALUES (208603001541, 2, 'role_user');
INSERT INTO "public"."sys_button" VALUES (270339307653, 270244951749, 'add');
INSERT INTO "public"."sys_button" VALUES (270339307654, 270244951749, 'edit');
INSERT INTO "public"."sys_button" VALUES (270339307655, 270244951749, 'remove');
INSERT INTO "public"."sys_button" VALUES (270339307656, 270244951749, 'remove_batch');

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
INSERT INTO "public"."sys_button_permission" VALUES (226159902597, 153157080517, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902598, 153157080518, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902599, 153157080519, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902600, 159925289733, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902601, 153162963205, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902602, 153162963206, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902603, 153162963207, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902604, 173653609605, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902605, 178966814853, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902606, 178966814854, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902607, 178966814855, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902608, 178966814856, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902609, 178967663493, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902610, 178968322373, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902611, 178968322374, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902612, 178968322375, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902613, 178968322376, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902614, 178969028229, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902615, 178969028230, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902616, 178969028231, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902617, 178969028232, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902618, 179002517125, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902619, 179002517127, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902620, 179002517126, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902621, 178969766725, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902622, 178969766726, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902623, 178969766727, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902624, 178969766728, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902625, 192006785029, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902626, 173664974213, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902627, 173664974214, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902628, 173664974215, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902629, 173664974216, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902630, 153165063429, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902631, 153165063430, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902632, 153165063431, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902633, 173652824133, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902634, 173652824135, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902635, 173652824134, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902636, 153166387781, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902637, 153166387782, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902638, 153166387783, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902639, 187263535685, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902640, 153366975622, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902641, 153366975621, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902642, 153366975623, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (226159902643, 208603001541, 226157928197);
INSERT INTO "public"."sys_button_permission" VALUES (274846950853, 153157080517, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950854, 153157080518, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950855, 153157080519, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950856, 159925289733, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950857, 153162963205, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950858, 153162963206, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950859, 153162963207, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950860, 173653609605, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950861, 192006785029, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950862, 173664974213, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950863, 173664974214, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950864, 173664974215, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950865, 173664974216, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950866, 178966814853, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950867, 178966814854, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950868, 178966814855, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950869, 178966814856, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950870, 178967663493, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950871, 178968322373, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950872, 178968322374, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950873, 178968322375, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950874, 178968322376, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950875, 178969028229, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950876, 178969028230, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950877, 178969028231, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950878, 178969028232, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950879, 179002517125, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950880, 179002517127, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950881, 179002517126, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950882, 178969766725, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950883, 178969766726, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950884, 178969766727, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950885, 178969766728, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950886, 153165063429, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950887, 153165063430, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950888, 153165063431, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950889, 173652824133, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950890, 173652824135, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950891, 173652824134, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950892, 153166387781, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950893, 153166387782, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950894, 153166387783, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950895, 187263535685, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950896, 153366975622, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950897, 153366975621, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950917, 153366975623, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950918, 208603001541, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950919, 270339307653, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950920, 270339307654, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950921, 270339307655, 1);
INSERT INTO "public"."sys_button_permission" VALUES (274846950922, 270339307656, 1);

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
INSERT INTO "public"."sys_data_permission" VALUES (131663002949, 3, '', 131517140997);
INSERT INTO "public"."sys_data_permission" VALUES (226160867909, 3, '', 226157928197);
INSERT INTO "public"."sys_data_permission" VALUES (130099105285, 4, '', 1);

-- ----------------------------
-- Table structure for sys_data_source
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_data_source";
CREATE TABLE "public"."sys_data_source" (
  "id" int8 NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "url" text COLLATE "pg_catalog"."default",
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
INSERT INTO "public"."sys_data_source" VALUES (87734678533, 'mysql基础数据源', NULL, 'jdbc:mysql://192.168.0.3/sooth?useUnicode=true&characterEncoding=utf-8&allowMultiQueries=true&useAffectedRows=true&zeroDateTimeBehavior=convertToNull&serverTimezone=Asia/Shanghai', 'root', '6d95f0648637a3895996ce82aeb6e157', 'admin', '2023-01-16 20:47:34', 'admin', '2023-01-29 20:00:51');
INSERT INTO "public"."sys_data_source" VALUES (93397288581, 'localhost数据源', NULL, 'jdbc:mysql://127.0.0.1:3306/sooth?characterEncoding=UTF-8&useUnicode=true&useSSL=false&tinyInt1isBit=false&allowPublicKeyRetrieval=true&serverTimezone=Asia/Shanghai', 'root', '443967e8cfda5646d4f3e044f7a18704', 'admin', '2023-01-17 21:22:12', 'admin', '2023-02-11 19:13:22');
INSERT INTO "public"."sys_data_source" VALUES (159443767877, 'pg数据源', NULL, 'jdbc:postgresql://192.168.0.194:5432/sooth', 'postgres', '443967e8cfda5646d4f3e044f7a18704', 'admin', '2023-01-29 20:01:49', NULL, NULL);

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
  "description" text COLLATE "pg_catalog"."default",
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
INSERT INTO "public"."sys_dept" VALUES (1, NULL, '研发部', '01', 1, '', NULL, 0, 'admin', '2023-01-02 00:40:23', 'admin', '2023-02-11 20:28:50');
INSERT INTO "public"."sys_dept" VALUES (42083908293, 1, '中台研发部', '0101', 1, '', 0, 0, 'admin', '2023-01-08 14:39:21', NULL, NULL);
INSERT INTO "public"."sys_dept" VALUES (42202626373, NULL, '测试部', '03', 3, NULL, 0, 0, 'admin', '2023-01-08 15:10:16', NULL, NULL);
INSERT INTO "public"."sys_dept" VALUES (42089689925, NULL, '产品部', '02', 2, NULL, NULL, 0, 'admin', '2023-01-08 14:40:51', 'admin', '2023-02-19 16:54:11.881');

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
INSERT INTO "public"."sys_dict" VALUES (8616451013, '性别', 'sex', NULL, 0, 'admin', '2023-01-02 13:23:52', 'admin', '2023-02-04 16:42:20', NULL);
INSERT INTO "public"."sys_dict" VALUES (71375867077, '数据权限', 'data_permission', '控制数据查看范围', 0, 'admin', '2023-01-13 21:47:28', 'admin', '2023-01-13 21:47:46', NULL);
INSERT INTO "public"."sys_dict" VALUES (76765765253, '成功状态', 'success_status', NULL, 0, 'admin', '2023-01-14 21:11:05', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict" VALUES (77499306373, '日志类型', 'log_type', NULL, 0, 'admin', '2023-01-15 00:22:07', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict" VALUES (140960825093, '按钮权限', 'button_type', NULL, 0, 'admin', '2023-01-26 11:48:33', 'admin', '2023-01-26 14:57:05', 0);
INSERT INTO "public"."sys_dict" VALUES (270588795589, '运行状态', 'run_status', NULL, 0, 'admin', '2023-02-18 22:25:49.927', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict" VALUES (153462050245, '是否', 'whether', NULL, 1, 'admin', '2023-01-28 18:04:05', NULL, NULL, 0);
INSERT INTO "public"."sys_dict" VALUES (74316854597, '数据库类型', 'database_type', NULL, 1, 'admin', '2023-01-14 10:33:21', NULL, NULL, NULL);

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
  "order_no" float8,
  "tag" varchar(200) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_dict_item"."dict_id" IS '字典id';
COMMENT ON COLUMN "public"."sys_dict_item"."name" IS '字典项文本';
COMMENT ON COLUMN "public"."sys_dict_item"."value" IS '字典项值';
COMMENT ON COLUMN "public"."sys_dict_item"."description" IS '描述';
COMMENT ON COLUMN "public"."sys_dict_item"."order_no" IS '排序';
COMMENT ON COLUMN "public"."sys_dict_item"."tag" IS '颜色标签';

-- ----------------------------
-- Records of sys_dict_item
-- ----------------------------
INSERT INTO "public"."sys_dict_item" VALUES (8617941573, 8616451013, '女', '1', NULL, 1, NULL);
INSERT INTO "public"."sys_dict_item" VALUES (71381259781, 71375867077, '本人', '1', '只能查看本部门且本人创建的数据', 1, NULL);
INSERT INTO "public"."sys_dict_item" VALUES (71389730373, 71375867077, '本部门', '2', '只能查看本部门数据', 2, NULL);
INSERT INTO "public"."sys_dict_item" VALUES (71398373445, 71375867077, '本部门以及子部门', '3', '只能查看部门以及子部门数据', 3, NULL);
INSERT INTO "public"."sys_dict_item" VALUES (71400237445, 71375867077, '所有部门', '4', '查看所有部门数据', 4, NULL);
INSERT INTO "public"."sys_dict_item" VALUES (76767618309, 76765765253, '成功', '0', NULL, 1, 'success');
INSERT INTO "public"."sys_dict_item" VALUES (76768298309, 76765765253, '失败', '1', NULL, 2, 'error');
INSERT INTO "public"."sys_dict_item" VALUES (77513234117, 77499306373, '认证日志', 'auth', NULL, 1, NULL);
INSERT INTO "public"."sys_dict_item" VALUES (77514748549, 77499306373, '操作日志', 'operate', NULL, 2, NULL);
INSERT INTO "public"."sys_dict_item" VALUES (140963430661, 140960825093, '编辑', 'edit', '通用', 2, NULL);
INSERT INTO "public"."sys_dict_item" VALUES (140964512005, 140960825093, '删除', 'remove', '通用', 3, NULL);
INSERT INTO "public"."sys_dict_item" VALUES (140965814533, 140960825093, '批量删除', 'remove_batch', '通用', 4, NULL);
INSERT INTO "public"."sys_dict_item" VALUES (140966682309, 140960825093, '新增', 'add', '通用', 1, NULL);
INSERT INTO "public"."sys_dict_item" VALUES (153235156869, 140960825093, '菜单权限', 'menu_permission', '角色管理', 5, NULL);
INSERT INTO "public"."sys_dict_item" VALUES (153236810181, 140960825093, '按钮权限', 'button_permission', '角色管理', 5, NULL);
INSERT INTO "public"."sys_dict_item" VALUES (153239148101, 140960825093, '数据权限', 'data_permission', '角色管理', 5, NULL);
INSERT INTO "public"."sys_dict_item" VALUES (153391879877, 140960825093, '按钮配置', 'button_setting', '菜单权限', 5, NULL);
INSERT INTO "public"."sys_dict_item" VALUES (153395673029, 140960825093, '添加下级', 'add_sub', '菜单权限', 5, NULL);
INSERT INTO "public"."sys_dict_item" VALUES (178905837061, 140960825093, '角色用户', 'role_user', '角色权限', 6, NULL);
INSERT INTO "public"."sys_dict_item" VALUES (178986906693, 140960825093, '导入', 'import', '通用', 4, NULL);
INSERT INTO "public"."sys_dict_item" VALUES (178989785861, 140960825093, '导出', 'export', '通用', 4, NULL);
INSERT INTO "public"."sys_dict_item" VALUES (178991094853, 140960825093, '同步', 'sync', '', 5, NULL);
INSERT INTO "public"."sys_dict_item" VALUES (178992321221, 140960825093, '生成', 'generate', '', 5, NULL);
INSERT INTO "public"."sys_dict_item" VALUES (197152164165, 77499306373, '错误日志', 'error', NULL, 3, NULL);
INSERT INTO "public"."sys_dict_item" VALUES (8617419717, 8616451013, '男', '0', NULL, 1, NULL);

-- ----------------------------
-- Table structure for sys_interface_permission
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_interface_permission";
CREATE TABLE "public"."sys_interface_permission" (
  "id" int8 NOT NULL,
  "url" varchar(200) COLLATE "pg_catalog"."default",
  "role_id" int8
)
;
COMMENT ON COLUMN "public"."sys_interface_permission"."url" IS '接口url';
COMMENT ON COLUMN "public"."sys_interface_permission"."role_id" IS '角色id';
COMMENT ON TABLE "public"."sys_interface_permission" IS '角色权限表';

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
  "method" text COLLATE "pg_catalog"."default",
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
INSERT INTO "public"."sys_menu" VALUES (2, 22, '角色管理', '/privilege/role', 'privilege/role/index', NULL, 1, 2, 0, 'ant-design:solution', 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2023-01-13 21:35:23', 0, 1, 'privilege-role');
INSERT INTO "public"."sys_menu" VALUES (3, 1, '用户管理', '/system/user', 'system/user/index', NULL, 1, 1, 0, 'ant-design:user', 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2023-02-02 00:09:56', 0, 1, 'system-user');
INSERT INTO "public"."sys_menu" VALUES (4, 1, '部门管理', '/system/dept', 'system/dept/index', NULL, 1, 2, 0, 'ant-design:team', 0, 0, NULL, 'admin', '2019-01-29 18:47:40', 'admin', '2023-01-29 22:07:03', 0, 1, 'system-dept');
INSERT INTO "public"."sys_menu" VALUES (5, 22, '菜单管理', '/privilege/menu', 'privilege/menu/index', NULL, 1, 1, 0, 'ant-design:menu-outlined', 0, 0, NULL, 'admin', '2019-09-08 15:00:05', 'admin', '2023-01-27 10:43:27', 0, 1, 'privilege-menu');
INSERT INTO "public"."sys_menu" VALUES (9, NULL, '系统监控', '/monitor', 'layouts/default/index', NULL, 0, 5, 0, 'ant-design:video-camera-filled', 0, 0, NULL, 'admin', '2021-09-19 09:19:22', 'admin', '2022-12-20 23:27:52', 0, NULL, 'monitor');
INSERT INTO "public"."sys_menu" VALUES (11, 16, '数据源管理', '/generate/datasource', 'generate/datasource/index', NULL, 1, 3, 0, 'ant-design:hdd-filled', 0, 0, NULL, 'admin', '2021-09-19 16:48:17', 'admin', '2023-01-13 22:19:14', 0, 1, 'generate-datasource');
INSERT INTO "public"."sys_menu" VALUES (13, 9, '性能监控', '/monitor/server', 'monitor/server/index', NULL, 1, 9, 0, 'ant-design:thunderbolt-filled', 0, 0, NULL, 'admin', '2021-09-20 11:42:22', 'admin', '2023-01-02 00:20:10', 0, 1, 'monitor-server');
INSERT INTO "public"."sys_menu" VALUES (14, 9, 'Redis监控', '/monitor/redis', 'monitor/redis/index', NULL, 1, 10, 0, 'ant-design:trademark-outlined', 0, 0, NULL, 'admin', '2021-09-20 14:31:04', 'admin', '2023-01-02 00:20:17', 0, 1, 'monitor-redis');
INSERT INTO "public"."sys_menu" VALUES (15, NULL, '基础管理', '/basic', 'layouts/default/index', NULL, 0, 3, 0, 'ant-design:android-outlined', 0, 0, NULL, 'admin', '2022-11-12 20:34:52', 'admin', '2022-12-20 23:27:39', 0, NULL, 'basic');
INSERT INTO "public"."sys_menu" VALUES (16, NULL, '代码生成', '/generate', 'layouts/default/index', NULL, 0, 3, 0, 'ant-design:block-outlined', 0, 0, NULL, 'admin', '2022-11-18 20:22:43', 'admin', '2023-02-10 20:50:41', 0, 0, 'generate');
INSERT INTO "public"."sys_menu" VALUES (17, 16, '类型映射', '/generate/field-type', 'generate/field-type/index', NULL, 1, 1, 0, 'ant-design:gateway-outlined', 0, 0, NULL, 'admin', '2022-11-18 20:26:01', 'admin', '2023-01-12 08:52:09', 0, 1, 'generate-field-type');
INSERT INTO "public"."sys_menu" VALUES (18, 16, '基类管理', '/generate/base-class', 'generate/base-class/index', NULL, 1, 1, 0, 'ant-design:flag-twotone', 0, 0, NULL, 'admin', '2022-11-18 20:29:20', 'admin', '2023-01-12 08:51:49', 0, 1, 'generate-base-class');
INSERT INTO "public"."sys_menu" VALUES (19, 16, '代码生成', '/generate/code-gen', 'generate/code-gen/index', NULL, 1, 1, 0, 'ant-design:file-word-outlined', 0, 0, NULL, 'admin', '2022-11-18 20:30:52', 'admin', '2023-01-12 08:51:26', 0, 1, 'generate-code-gen');
INSERT INTO "public"."sys_menu" VALUES (20, 16, '模板配置', '/generate/template', 'generate/template/index', NULL, 1, 1, 0, 'ant-design:radius-setting-outlined', 0, 0, NULL, 'admin', '2022-11-29 21:24:46', 'admin', '2023-01-12 08:50:42', 0, 1, 'generate-template');
INSERT INTO "public"."sys_menu" VALUES (21, 6, '首页', '/dashboard/home', 'dashboard/home/index', NULL, 1, 1, 1, 'ant-design:home-twotone', 0, 0, NULL, 'admin', '2022-12-20 23:12:49', 'admin', '2023-01-25 15:16:46', 0, 1, 'dashboard-home');
INSERT INTO "public"."sys_menu" VALUES (22, NULL, '权限管理', '/privilege', 'layouts/default/index', '', 0, 4, 0, 'ant-design:property-safety-outlined', 0, 0, NULL, 'admin', '2023-01-13 20:47:59', 'admin', '2023-01-13 20:49:22', 0, NULL, 'privilege');
INSERT INTO "public"."sys_menu" VALUES (23, 1, '账户设置', '/system/setting', '/system/setting/index', NULL, 1, 10, 0, 'ant-design:user-switch-outlined', 1, 0, NULL, 'admin', '2023-01-13 23:47:22', 'admin', '2023-01-26 15:50:00', 0, 1, 'system-setting');
INSERT INTO "public"."sys_menu" VALUES (8, 15, '数据字典', '/basic/dict', 'basic/dict/index', NULL, 1, 1, 0, 'ant-design:hdd-twotone', 0, 0, NULL, 'admin', '2021-09-17 16:31:27', 'admin', '2023-02-18 21:11:09.124', 0, 1, 'basic-dict');
INSERT INTO "public"."sys_menu" VALUES (12, 15, '日志管理', '/basic/log', 'basic/log/index', NULL, 1, 5, 0, 'ant-design:interaction-outlined', 0, 0, NULL, 'admin', '2021-09-19 18:15:56', 'admin', '2023-01-15 15:00:17', 0, 1, 'basic-log');
INSERT INTO "public"."sys_menu" VALUES (270244951749, 15, '定时任务', '/basic/quartz', 'basic/quartz/index', NULL, 1, 3, 0, 'ant-design:field-time-outlined', 0, 0, NULL, 'admin', '2023-02-18 20:56:17.361', 'admin', '2023-02-18 21:23:51.318', 0, 0, 'quartz');
INSERT INTO "public"."sys_menu" VALUES (6, NULL, 'Dashboard', '/dashboard', 'layouts/default/index', '/dashboard/home', 0, 1, 0, 'ion:grid-outline', 0, 0, NULL, 'admin', '2021-09-15 19:51:23', 'admin', '2023-02-19 16:54:30.811', 0, 0, 'dashboard');

-- ----------------------------
-- Table structure for sys_quartz
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_quartz";
CREATE TABLE "public"."sys_quartz" (
  "id" int8 NOT NULL,
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "del_flag" int4,
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "cron" varchar(255) COLLATE "pg_catalog"."default",
  "parameter" varchar(255) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "status" int4
)
;
COMMENT ON COLUMN "public"."sys_quartz"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."sys_quartz"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_quartz"."del_flag" IS '删除状态';
COMMENT ON COLUMN "public"."sys_quartz"."update_by" IS '修改人';
COMMENT ON COLUMN "public"."sys_quartz"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."sys_quartz"."name" IS '任务名';
COMMENT ON COLUMN "public"."sys_quartz"."cron" IS 'cron表达式';
COMMENT ON COLUMN "public"."sys_quartz"."parameter" IS '参数';
COMMENT ON COLUMN "public"."sys_quartz"."description" IS '描述';
COMMENT ON COLUMN "public"."sys_quartz"."status" IS '状态 0正常 -1停止';
COMMENT ON TABLE "public"."sys_quartz" IS '定时任务';

-- ----------------------------
-- Records of sys_quartz
-- ----------------------------
INSERT INTO "public"."sys_quartz" VALUES (275051435013, 'admin', '2023-02-19 17:47:58.656', 0, 'admin', '2023-02-19 17:50:28.217', 'testJob', '* * * * * ? *', '{''type'':''A''}', NULL, NULL);

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
INSERT INTO "public"."sys_role" VALUES (1, '管理员', 'admin', 42083908293, '管理员', NULL, '2018-12-21 18:03:39', 'admin', '2023-02-11 23:34:42');
INSERT INTO "public"."sys_role" VALUES (131517140997, '测试员', 'test', 42202626373, NULL, 'admin', '2023-01-24 18:49:15', 'admin', '2023-02-04 09:46:59');
INSERT INTO "public"."sys_role" VALUES (226157928197, '管理员1', 'admin1', 1, NULL, 'admin', '2023-02-10 21:35:18', NULL, NULL);

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
INSERT INTO "public"."sys_role_permission" VALUES (226159395909, 226157928197, 6);
INSERT INTO "public"."sys_role_permission" VALUES (226159395910, 226157928197, 21);
INSERT INTO "public"."sys_role_permission" VALUES (226159395911, 226157928197, 1);
INSERT INTO "public"."sys_role_permission" VALUES (226159395912, 226157928197, 3);
INSERT INTO "public"."sys_role_permission" VALUES (226159395913, 226157928197, 4);
INSERT INTO "public"."sys_role_permission" VALUES (226159395914, 226157928197, 23);
INSERT INTO "public"."sys_role_permission" VALUES (226159395915, 226157928197, 16);
INSERT INTO "public"."sys_role_permission" VALUES (226159395916, 226157928197, 20);
INSERT INTO "public"."sys_role_permission" VALUES (226159395917, 226157928197, 17);
INSERT INTO "public"."sys_role_permission" VALUES (226159395918, 226157928197, 18);
INSERT INTO "public"."sys_role_permission" VALUES (226159395919, 226157928197, 19);
INSERT INTO "public"."sys_role_permission" VALUES (226159395920, 226157928197, 11);
INSERT INTO "public"."sys_role_permission" VALUES (226159395921, 226157928197, 15);
INSERT INTO "public"."sys_role_permission" VALUES (226159395922, 226157928197, 12);
INSERT INTO "public"."sys_role_permission" VALUES (226159395923, 226157928197, 8);
INSERT INTO "public"."sys_role_permission" VALUES (226159395924, 226157928197, 22);
INSERT INTO "public"."sys_role_permission" VALUES (226159395925, 226157928197, 5);
INSERT INTO "public"."sys_role_permission" VALUES (226159395926, 226157928197, 2);
INSERT INTO "public"."sys_role_permission" VALUES (226159395927, 226157928197, 9);
INSERT INTO "public"."sys_role_permission" VALUES (226159395928, 226157928197, 13);
INSERT INTO "public"."sys_role_permission" VALUES (226159395929, 226157928197, 14);
INSERT INTO "public"."sys_role_permission" VALUES (270341797317, 1, 270244951749);

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
INSERT INTO "public"."sys_user" VALUES (85465348741, 'test', '测试员', '$2a$10$Wm4Op/aI30y5DhhZ6vHrluc09JeoMysgU83URfH0kJLh4UOJ2UDyK', NULL, 0, NULL, 0, 'admin', '2023-01-16 10:56:36', 'admin', '2023-02-11 20:28:42');
INSERT INTO "public"."sys_user" VALUES (1, 'admin', '管理员', '$2a$10$GK123CZgMaU2HQXFJGM46Or3EcQyZktQm6xeN1rR548Zvb/KA6QPG', '', 0, '', 0, NULL, '2019-06-21 17:54:10', 'admin', '2023-02-19 16:48:22.414');

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
INSERT INTO "public"."sys_user_dept" VALUES (187168267781, 187168267525, 42089689925);
INSERT INTO "public"."sys_user_dept" VALUES (187197395589, 187197391941, 42089689925);
INSERT INTO "public"."sys_user_dept" VALUES (187235881541, 187235864901, 42089689925);

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
INSERT INTO "public"."sys_user_role" VALUES (187168267653, 187168267525, 131517140997);
INSERT INTO "public"."sys_user_role" VALUES (187197394437, 187197391941, 131517140997);
INSERT INTO "public"."sys_user_role" VALUES (187235878725, 187235864901, 131517140997);
INSERT INTO "public"."sys_user_role" VALUES (226158724037, 1, 226157928197);

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
-- Primary Key structure for table sys_interface_permission
-- ----------------------------
ALTER TABLE "public"."sys_interface_permission" ADD CONSTRAINT "sys_interface_permission_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_log
-- ----------------------------
ALTER TABLE "public"."sys_log" ADD CONSTRAINT "sys_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE "public"."sys_menu" ADD CONSTRAINT "sys_menu_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_quartz
-- ----------------------------
ALTER TABLE "public"."sys_quartz" ADD CONSTRAINT "sys_quartz_job_pkey" PRIMARY KEY ("id");

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
