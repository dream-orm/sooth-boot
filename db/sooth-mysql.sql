/*
 Navicat Premium Data Transfer

 Source Server         : 3
 Source Server Type    : MySQL
 Source Server Version : 50621
 Source Host           : 192.168.0.3:3306
 Source Schema         : sooth

 Target Server Type    : MySQL
 Target Server Version : 50621
 File Encoding         : 65001

 Date: 28/01/2023 23:41:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_base_class
-- ----------------------------
DROP TABLE IF EXISTS `gen_base_class`;
CREATE TABLE `gen_base_class`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `class_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '基类全类名',
  `fields` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '基类字段，多个用英文逗号分隔',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88010129607 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基类管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_base_class
-- ----------------------------
INSERT INTO `gen_base_class` VALUES (88010129606, 'com.moxa.MyTest', 'hello,world', '2023-01-16 21:59:18', '2023-01-19 21:31:57', 'admin', 'admin');

-- ----------------------------
-- Table structure for gen_field_type
-- ----------------------------
DROP TABLE IF EXISTS `gen_field_type`;
CREATE TABLE `gen_field_type`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `column_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段类型',
  `attr_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字段类型管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_field_type
-- ----------------------------
INSERT INTO `gen_field_type` VALUES (-16, 'LONGNVARCHAR', 'String');
INSERT INTO `gen_field_type` VALUES (-15, 'NCHAR', 'String');
INSERT INTO `gen_field_type` VALUES (-9, 'NVARCHAR', 'String');
INSERT INTO `gen_field_type` VALUES (-8, 'ROWID', 'Object');
INSERT INTO `gen_field_type` VALUES (-7, 'BIT', 'Boolean');
INSERT INTO `gen_field_type` VALUES (-6, 'TINYINT', 'Byte');
INSERT INTO `gen_field_type` VALUES (-5, 'BIGINT', 'Long');
INSERT INTO `gen_field_type` VALUES (-4, 'LONGVARBINARY', 'Byte[]');
INSERT INTO `gen_field_type` VALUES (-3, 'VARBINARY', 'Byte[]');
INSERT INTO `gen_field_type` VALUES (-2, 'BINARY', 'Byte[]');
INSERT INTO `gen_field_type` VALUES (-1, 'LONGVARCHAR', 'String');
INSERT INTO `gen_field_type` VALUES (0, 'NULL', 'Object');
INSERT INTO `gen_field_type` VALUES (1, 'CHAR', 'String');
INSERT INTO `gen_field_type` VALUES (2, 'NUMERIC', 'java.math.BigDecimal');
INSERT INTO `gen_field_type` VALUES (3, 'DECIMAL', 'java.math.BigDecimal');
INSERT INTO `gen_field_type` VALUES (4, 'INTEGER', 'Integer');
INSERT INTO `gen_field_type` VALUES (5, 'SMALLINT', 'Short');
INSERT INTO `gen_field_type` VALUES (6, 'FLOAT', 'Float');
INSERT INTO `gen_field_type` VALUES (7, 'REAL', 'Float');
INSERT INTO `gen_field_type` VALUES (8, 'DOUBLE', 'Double');
INSERT INTO `gen_field_type` VALUES (12, 'VARCHAR', 'String');
INSERT INTO `gen_field_type` VALUES (16, 'BOOLEAN', 'Boolean');
INSERT INTO `gen_field_type` VALUES (70, 'DATALINK', 'Object');
INSERT INTO `gen_field_type` VALUES (91, 'DATE', 'java.util.Date');
INSERT INTO `gen_field_type` VALUES (92, 'TIME', 'java.sql.Time');
INSERT INTO `gen_field_type` VALUES (93, 'TIMESTAMP', 'java.util.Date');
INSERT INTO `gen_field_type` VALUES (1111, 'OTHER', 'Object');
INSERT INTO `gen_field_type` VALUES (2000, 'JAVA_OBJECT', 'Object');
INSERT INTO `gen_field_type` VALUES (2001, 'DISTINCT', 'Object');
INSERT INTO `gen_field_type` VALUES (2002, 'STRUCT', 'Object');
INSERT INTO `gen_field_type` VALUES (2003, 'ARRAY', 'Object');
INSERT INTO `gen_field_type` VALUES (2004, 'BLOB', 'java.io.InputStream');
INSERT INTO `gen_field_type` VALUES (2005, 'CLOB', 'String');
INSERT INTO `gen_field_type` VALUES (2006, 'REF', 'Object');
INSERT INTO `gen_field_type` VALUES (2009, 'SQLXML', 'Object');
INSERT INTO `gen_field_type` VALUES (2011, 'NCLOB', 'String');
INSERT INTO `gen_field_type` VALUES (2012, 'REF_CURSOR', 'Object');
INSERT INTO `gen_field_type` VALUES (2013, 'TIME_WITH_TIMEZONE', 'Object');
INSERT INTO `gen_field_type` VALUES (2014, 'TIMESTAMP_WITH_TIMEZONE', 'Object');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表名',
  `class_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类名',
  `table_comment` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '说明',
  `author` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `package_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '项目包名',
  `version` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '项目版本号',
  `generator_type` tinyint(4) NULL DEFAULT NULL COMMENT '生成方式  0：zip压缩包   1：自定义目录',
  `backend_path` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '后端生成路径',
  `frontend_path` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '前端生成路径',
  `module_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模块名',
  `function_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '功能名',
  `form_layout` tinyint(4) NULL DEFAULT NULL COMMENT '表单布局  1：一列   2：两列',
  `datasource_id` bigint(20) NULL DEFAULT NULL COMMENT '数据源ID',
  `baseclass_id` bigint(20) NULL DEFAULT NULL COMMENT '基类ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 126473795857 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (126473795846, 'gen_base_class', 'GenBaseClass', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-20 13:22:53', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (126473795847, 'gen_field_type', 'GenFieldType', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-20 13:22:53', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (126473795848, 'gen_table', 'GenTable', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-20 13:22:53', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (126473795849, 'gen_table_field', 'GenTableField', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-20 13:22:53', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (126473795850, 'gen_template', 'GenTemplate', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-20 13:22:53', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (126473795851, 'gen_template_group', 'GenTemplateGroup', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-20 13:22:53', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (126473795852, 'sys_data_source', 'SysDataSource', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-20 13:22:53', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (126473795853, 'sys_dept', 'SysDept', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-20 13:22:53', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (126473795854, 'sys_dict', 'SysDict', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-20 13:22:53', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (126473795855, 'sys_dict_item', 'SysDictItem', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-20 13:22:53', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (126473795856, 'sys_data_permission', 'SysDataPermission', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-23 20:55:53', NULL, 'admin', NULL);

-- ----------------------------
-- Table structure for gen_table_field
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_field`;
CREATE TABLE `gen_table_field`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `table_id` bigint(20) NULL DEFAULT NULL COMMENT '表ID',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段名称',
  `column_type` int(11) NULL DEFAULT NULL COMMENT '字段类型',
  `column_comment` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段说明',
  `attr_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性名',
  `attr_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性类型',
  `package_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性包名',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `auto_fill` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自动填充  DEFAULT、INSERT、UPDATE、INSERT_UPDATE',
  `primary_pk` tinyint(4) NULL DEFAULT NULL COMMENT '主键 0：否  1：是',
  `base_field` tinyint(4) NULL DEFAULT NULL COMMENT '基类字段 0：否  1：是',
  `form_item` tinyint(4) NULL DEFAULT NULL COMMENT '表单项 0：否  1：是',
  `form_required` tinyint(4) NULL DEFAULT NULL COMMENT '表单必填 0：否  1：是',
  `form_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表单类型',
  `form_dict` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表单字典类型',
  `form_validator` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表单效验',
  `grid_item` tinyint(4) NULL DEFAULT NULL COMMENT '列表项 0：否  1：是',
  `grid_sort` tinyint(4) NULL DEFAULT NULL COMMENT '列表排序 0：否  1：是',
  `query_item` tinyint(4) NULL DEFAULT NULL COMMENT '查询项 0：否  1：是',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '查询方式',
  `query_form_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '查询表单类型',
  `query_dict` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '查询字典类型',
  `type_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段类型名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_field
-- ----------------------------
INSERT INTO `gen_table_field` VALUES (108145481029, 108145480645, 'id', -5, 'id', 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BIGINT');
INSERT INTO `gen_table_field` VALUES (108145481030, 108145480645, 'class_name', 12, '基类全类名', 'className', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145481031, 108145480645, 'fields', 12, '基类字段，多个用英文逗号分隔', 'fields', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145481032, 108145480645, 'create_time', 93, '创建时间', 'createTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DATETIME');
INSERT INTO `gen_table_field` VALUES (108145481033, 108145480645, 'update_time', 93, '创建时间', 'updateTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DATETIME');
INSERT INTO `gen_table_field` VALUES (108145481034, 108145480645, 'create_by', 12, '创建人', 'createBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145481035, 108145480645, 'update_by', 12, '更新人', 'updateBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145483973, 108145483461, 'id', -5, 'id', 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BIGINT');
INSERT INTO `gen_table_field` VALUES (108145483974, 108145483461, 'column_type', 12, '字段类型', 'columnType', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145483975, 108145483461, 'attr_type', 12, '属性类型', 'attrType', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145486149, 108145485829, 'id', -5, 'id', 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BIGINT');
INSERT INTO `gen_table_field` VALUES (108145486150, 108145485829, 'table_name', 12, '表名', 'tableName', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145486151, 108145485829, 'class_name', 12, '类名', 'className', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145486152, 108145485829, 'table_comment', 12, '说明', 'tableComment', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145486153, 108145485829, 'author', 12, '作者', 'author', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145486154, 108145485829, 'email', 12, '邮箱', 'email', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145486155, 108145485829, 'package_name', 12, '项目包名', 'packageName', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145486156, 108145485829, 'version', 12, '项目版本号', 'version', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145486157, 108145485829, 'generator_type', -6, '生成方式  0：zip压缩包   1：自定义目录', 'generatorType', 'Byte', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TINYINT');
INSERT INTO `gen_table_field` VALUES (108145486158, 108145485829, 'backend_path', 12, '后端生成路径', 'backendPath', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145486159, 108145485829, 'frontend_path', 12, '前端生成路径', 'frontendPath', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145486160, 108145485829, 'module_name', 12, '模块名', 'moduleName', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145486161, 108145485829, 'function_name', 12, '功能名', 'functionName', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145486162, 108145485829, 'form_layout', -6, '表单布局  1：一列   2：两列', 'formLayout', 'Byte', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TINYINT');
INSERT INTO `gen_table_field` VALUES (108145486163, 108145485829, 'datasource_id', -5, '数据源ID', 'datasourceId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BIGINT');
INSERT INTO `gen_table_field` VALUES (108145486164, 108145485829, 'baseclass_id', -5, '基类ID', 'baseclassId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BIGINT');
INSERT INTO `gen_table_field` VALUES (108145486165, 108145485829, 'create_time', 93, '创建时间', 'createTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DATETIME');
INSERT INTO `gen_table_field` VALUES (108145486166, 108145485829, 'update_time', 93, '创建时间', 'updateTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DATETIME');
INSERT INTO `gen_table_field` VALUES (108145486167, 108145485829, 'create_by', 12, '创建人', 'createBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145486168, 108145485829, 'update_by', 12, '更新人', 'updateBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145488581, 108145488325, 'id', -5, 'id', 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BIGINT');
INSERT INTO `gen_table_field` VALUES (108145488582, 108145488325, 'table_id', -5, '表ID', 'tableId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BIGINT');
INSERT INTO `gen_table_field` VALUES (108145488583, 108145488325, 'column_name', 12, '字段名称', 'columnName', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145488584, 108145488325, 'data_type', 4, '字段类型', 'dataType', 'Integer', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INT');
INSERT INTO `gen_table_field` VALUES (108145488585, 108145488325, 'column_comment', 12, '字段说明', 'columnComment', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145488586, 108145488325, 'attr_name', 12, '属性名', 'attrName', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145488587, 108145488325, 'attr_type', 12, '属性类型', 'attrType', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145488588, 108145488325, 'package_name', 12, '属性包名', 'packageName', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145488589, 108145488325, 'sort', 4, '排序', 'sort', 'Integer', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INT');
INSERT INTO `gen_table_field` VALUES (108145488590, 108145488325, 'auto_fill', 12, '自动填充  DEFAULT、INSERT、UPDATE、INSERT_UPDATE', 'autoFill', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145488591, 108145488325, 'primary_pk', -6, '主键 0：否  1：是', 'primaryPk', 'Byte', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TINYINT');
INSERT INTO `gen_table_field` VALUES (108145488592, 108145488325, 'base_field', -6, '基类字段 0：否  1：是', 'baseField', 'Byte', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TINYINT');
INSERT INTO `gen_table_field` VALUES (108145488593, 108145488325, 'form_item', -6, '表单项 0：否  1：是', 'formItem', 'Byte', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TINYINT');
INSERT INTO `gen_table_field` VALUES (108145488594, 108145488325, 'form_required', -6, '表单必填 0：否  1：是', 'formRequired', 'Byte', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TINYINT');
INSERT INTO `gen_table_field` VALUES (108145488595, 108145488325, 'form_type', 12, '表单类型', 'formType', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145488596, 108145488325, 'form_dict', 12, '表单字典类型', 'formDict', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145488597, 108145488325, 'form_validator', 12, '表单效验', 'formValidator', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145488598, 108145488325, 'grid_item', -6, '列表项 0：否  1：是', 'gridItem', 'Byte', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TINYINT');
INSERT INTO `gen_table_field` VALUES (108145488599, 108145488325, 'grid_sort', -6, '列表排序 0：否  1：是', 'gridSort', 'Byte', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TINYINT');
INSERT INTO `gen_table_field` VALUES (108145488600, 108145488325, 'query_item', -6, '查询项 0：否  1：是', 'queryItem', 'Byte', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TINYINT');
INSERT INTO `gen_table_field` VALUES (108145488601, 108145488325, 'query_type', 12, '查询方式', 'queryType', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145488602, 108145488325, 'query_form_type', 12, '查询表单类型', 'queryFormType', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145488603, 108145488325, 'query_dict', 12, '查询字典类型', 'queryDict', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145488604, 108145488325, 'type_name', 12, '字段类型名称', 'typeName', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145491397, 108145491205, 'id', -5, 'id', 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BIGINT');
INSERT INTO `gen_table_field` VALUES (108145491398, 108145491205, 'name', 12, '表名', 'name', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145491399, 108145491205, 'content', -1, '', 'content', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LONGTEXT');
INSERT INTO `gen_table_field` VALUES (108145491400, 108145491205, 'create_time', 93, '创建时间', 'createTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DATETIME');
INSERT INTO `gen_table_field` VALUES (108145491401, 108145491205, 'update_by', 12, '更新人登录名称', 'updateBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145491402, 108145491205, 'update_time', 93, '更新日期', 'updateTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DATETIME');
INSERT INTO `gen_table_field` VALUES (108145491403, 108145491205, 'create_by', 12, '创建人登录名称', 'createBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145491404, 108145491205, 'group_id', -5, '分组id', 'groupId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BIGINT');
INSERT INTO `gen_table_field` VALUES (108145491405, 108145491205, 'valid_status', -6, '有效状态', 'validStatus', 'Byte', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TINYINT');
INSERT INTO `gen_table_field` VALUES (108145492741, 108145492485, 'id', -5, 'id', 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BIGINT');
INSERT INTO `gen_table_field` VALUES (108145492742, 108145492485, 'name', 12, '表名', 'name', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145493701, 108145493573, 'id', -5, '', 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BIGINT');
INSERT INTO `gen_table_field` VALUES (108145493702, 108145493573, 'name', 12, '数据源名称', 'name', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145493703, 108145493573, 'description', 12, '描述', 'description', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145493704, 108145493573, 'url', 12, '数据源地址', 'url', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145493705, 108145493573, 'username', 12, '用户名', 'username', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145493706, 108145493573, 'password', 12, '密码', 'password', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145493707, 108145493573, 'create_by', 12, '创建人', 'createBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145493708, 108145493573, 'create_time', 93, '创建日期', 'createTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DATETIME');
INSERT INTO `gen_table_field` VALUES (108145493709, 108145493573, 'update_by', 12, '更新人', 'updateBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145493710, 108145493573, 'update_time', 93, '更新日期', 'updateTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DATETIME');
INSERT INTO `gen_table_field` VALUES (108145495557, 108145495237, 'dept_id', -5, 'ID', 'deptId', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BIGINT');
INSERT INTO `gen_table_field` VALUES (108145495558, 108145495237, 'parent_id', -5, '父机构ID', 'parentId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BIGINT');
INSERT INTO `gen_table_field` VALUES (108145495559, 108145495237, 'dept_name', 12, '机构/部门名称', 'deptName', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145495560, 108145495237, 'dept_code', 12, '机构/部门编码', 'deptCode', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145495561, 108145495237, 'order_no', 8, '排序', 'orderNo', 'Double', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DOUBLE');
INSERT INTO `gen_table_field` VALUES (108145495562, 108145495237, 'description', 12, '描述', 'description', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145495563, 108145495237, 'status', 4, '状态（1启用，0不启用）', 'status', 'Integer', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INT');
INSERT INTO `gen_table_field` VALUES (108145495564, 108145495237, 'del_flag', 4, '删除状态（0，正常，1已删除）', 'delFlag', 'Integer', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INT');
INSERT INTO `gen_table_field` VALUES (108145495565, 108145495237, 'create_by', 12, '创建人', 'createBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145495566, 108145495237, 'create_time', 93, '创建日期', 'createTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DATETIME');
INSERT INTO `gen_table_field` VALUES (108145495567, 108145495237, 'update_by', 12, '更新人', 'updateBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145495568, 108145495237, 'update_time', 93, '更新日期', 'updateTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DATETIME');
INSERT INTO `gen_table_field` VALUES (108145497285, 108145497029, 'id', -5, '', 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BIGINT');
INSERT INTO `gen_table_field` VALUES (108145497286, 108145497029, 'name', 12, '字典名称', 'name', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145497287, 108145497029, 'code', 12, '字典编码', 'code', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145497288, 108145497029, 'description', 12, '描述', 'description', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145497289, 108145497029, 'del_flag', 4, '删除状态', 'delFlag', 'Integer', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INT');
INSERT INTO `gen_table_field` VALUES (108145497290, 108145497029, 'create_by', 12, '创建人', 'createBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145497291, 108145497029, 'create_time', 93, '创建时间', 'createTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DATETIME');
INSERT INTO `gen_table_field` VALUES (108145497292, 108145497029, 'update_by', 12, '更新人', 'updateBy', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145497293, 108145497029, 'update_time', 93, '更新时间', 'updateTime', 'java.util.Date', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DATETIME');
INSERT INTO `gen_table_field` VALUES (108145497294, 108145497029, 'type', 4, '字典类型0为string,1为number', 'type', 'Integer', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INT UNSIGNED');
INSERT INTO `gen_table_field` VALUES (108145498757, 108145498565, 'id', -5, '', 'id', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BIGINT');
INSERT INTO `gen_table_field` VALUES (108145498758, 108145498565, 'dict_id', -5, '字典id', 'dictId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BIGINT');
INSERT INTO `gen_table_field` VALUES (108145498759, 108145498565, 'name', 12, '字典项文本', 'name', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145498760, 108145498565, 'value', 12, '字典项值', 'value', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145498761, 108145498565, 'description', 12, '描述', 'description', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VARCHAR');
INSERT INTO `gen_table_field` VALUES (108145498762, 108145498565, 'order_no', 8, '排序', 'orderNo', 'Double', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DOUBLE');
INSERT INTO `gen_table_field` VALUES (126473798085, 126473795845, 'role_id', -5, '', 'roleId', 'Long', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BIGINT');
INSERT INTO `gen_table_field` VALUES (126473798086, 126473795845, 'permission_id', -5, '权限id', 'permissionId', 'Long', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BIGINT');
INSERT INTO `gen_table_field` VALUES (126473798087, 126473795845, 'dept_ids', -1, '指定部门', 'deptIds', 'String', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TEXT');

-- ----------------------------
-- Table structure for gen_template
-- ----------------------------
DROP TABLE IF EXISTS `gen_template`;
CREATE TABLE `gen_template`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表名',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `group_id` bigint(20) NULL DEFAULT NULL COMMENT '分组id',
  `valid_status` tinyint(1) NULL DEFAULT NULL COMMENT '有效状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '模板配置' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_template
-- ----------------------------
INSERT INTO `gen_template` VALUES (362832993636357, 'table', 'package ${packageName}.${moduleName}.${entityName}.table;\r\n\r\nimport lombok.Data;\r\n\r\n/**\r\n * @Description: ${tableComment}\r\n * @Author: ${author}\r\n * @Date:   ${.now?string[\"yyyy-MM-dd\"]}\r\n */\r\n@Data\r\n@Table(\"${tableName}\")\r\npublic class ${className} {\r\n\r\n    <#list columns as column>\r\n/**${column.columnComment}*/\r\n    <#if column.primaryPk>\r\n    @Id\r\n    </#if>\r\n   @Column(value=\"${column.columnName}\",jdbcType=\"Types.column.${column.columnType}\")\r\n    private ${column.attrType} ${column.attrName};\r\n</#list>\r\n}', '2022-12-11 08:31:15', 'admin', '2023-01-22 19:00:44', NULL, 82324589637, NULL);

-- ----------------------------
-- Table structure for gen_template_group
-- ----------------------------
DROP TABLE IF EXISTS `gen_template_group`;
CREATE TABLE `gen_template_group`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '模板配置组' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_template_group
-- ----------------------------
INSERT INTO `gen_template_group` VALUES (82324589637, '基础模板组');

-- ----------------------------
-- Table structure for sys_button
-- ----------------------------
DROP TABLE IF EXISTS `sys_button`;
CREATE TABLE `sys_button`  (
  `id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NULL DEFAULT NULL COMMENT '菜单id',
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮权限类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_button
-- ----------------------------
INSERT INTO `sys_button` VALUES (153157080517, 3, 'add');
INSERT INTO `sys_button` VALUES (153157080518, 3, 'edit');
INSERT INTO `sys_button` VALUES (153157080519, 3, 'remove');
INSERT INTO `sys_button` VALUES (153157080520, 3, 'removeBatch');
INSERT INTO `sys_button` VALUES (153162963205, 4, 'add');
INSERT INTO `sys_button` VALUES (153162963206, 4, 'edit');
INSERT INTO `sys_button` VALUES (153162963207, 4, 'remove');
INSERT INTO `sys_button` VALUES (153162963208, 4, 'removeBatch');
INSERT INTO `sys_button` VALUES (153165063429, 5, 'add');
INSERT INTO `sys_button` VALUES (153165063430, 5, 'edit');
INSERT INTO `sys_button` VALUES (153165063431, 5, 'remove');
INSERT INTO `sys_button` VALUES (153165063432, 5, 'removeBatch');
INSERT INTO `sys_button` VALUES (153166387781, 2, 'add');
INSERT INTO `sys_button` VALUES (153166387782, 2, 'edit');
INSERT INTO `sys_button` VALUES (153166387783, 2, 'remove');
INSERT INTO `sys_button` VALUES (153166387784, 2, 'removeBatch');
INSERT INTO `sys_button` VALUES (153366975621, 2, 'menu_permission');
INSERT INTO `sys_button` VALUES (153366975622, 2, 'button_permission');
INSERT INTO `sys_button` VALUES (153366975623, 2, 'data_permission');

-- ----------------------------
-- Table structure for sys_button_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_button_permission`;
CREATE TABLE `sys_button_permission`  (
  `id` bigint(20) NOT NULL,
  `button_id` bigint(20) NULL DEFAULT NULL COMMENT '按钮id',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_button_permission
-- ----------------------------
INSERT INTO `sys_button_permission` VALUES (154363870469, 153157080517, 1);
INSERT INTO `sys_button_permission` VALUES (154363870470, 153157080518, 1);
INSERT INTO `sys_button_permission` VALUES (154363870471, 153157080519, 1);
INSERT INTO `sys_button_permission` VALUES (154363870472, 153162963205, 1);
INSERT INTO `sys_button_permission` VALUES (154363870473, 153162963206, 1);
INSERT INTO `sys_button_permission` VALUES (154363870474, 153162963207, 1);
INSERT INTO `sys_button_permission` VALUES (154363870475, 153165063429, 1);
INSERT INTO `sys_button_permission` VALUES (154363870476, 153165063430, 1);
INSERT INTO `sys_button_permission` VALUES (154363870477, 153165063431, 1);
INSERT INTO `sys_button_permission` VALUES (154363870478, 153166387781, 1);
INSERT INTO `sys_button_permission` VALUES (154363870479, 153166387782, 1);
INSERT INTO `sys_button_permission` VALUES (154363870480, 153166387783, 1);
INSERT INTO `sys_button_permission` VALUES (154363870481, 153366975623, 1);
INSERT INTO `sys_button_permission` VALUES (154363870482, 153366975621, 1);
INSERT INTO `sys_button_permission` VALUES (154363870483, 153366975622, 1);

-- ----------------------------
-- Table structure for sys_data_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_permission`;
CREATE TABLE `sys_data_permission`  (
  `id` bigint(20) NOT NULL,
  `permission_code` int(11) NULL DEFAULT NULL COMMENT '权限',
  `dept_ids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '指定部门',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_data_permission
-- ----------------------------
INSERT INTO `sys_data_permission` VALUES (130099105285, 4, '', 1);
INSERT INTO `sys_data_permission` VALUES (131663002949, 3, '', 131517140997);

-- ----------------------------
-- Table structure for sys_data_source
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_source`;
CREATE TABLE `sys_data_source`  (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据源名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据源地址',
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_data_source
-- ----------------------------
INSERT INTO `sys_data_source` VALUES (87734678533, 'mysql基础数据源', NULL, 'jdbc:mysql://192.168.0.3/d-open?useUnicode=true&characterEncoding=utf-8&allowMultiQueries=true&useAffectedRows=true&zeroDateTimeBehavior=convertToNull&serverTimezone=Asia/Shanghai', 'root', 'BMW#Halu@1234%', 'admin', '2023-01-16 20:47:34', 'admin', '2023-01-16 21:16:19');
INSERT INTO `sys_data_source` VALUES (93397288581, 'localhost数据源', NULL, 'jdbc:mysql://127.0.0.1:3306/sooth?characterEncoding=UTF-8&useUnicode=true&useSSL=false&tinyInt1isBit=false&allowPublicKeyRetrieval=true&serverTimezone=Asia/Shanghai', 'root', '443967e8cfda5646d4f3e044f7a18704', 'admin', '2023-01-17 21:22:12', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL COMMENT 'ID',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父机构ID',
  `dept_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机构/部门名称',
  `dept_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构/部门编码',
  `order_no` double NULL DEFAULT 0 COMMENT '排序',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态（1启用，0不启用）',
  `del_flag` int(11) NULL DEFAULT NULL COMMENT '删除状态（0，正常，1已删除）',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '组织机构表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, NULL, '研发部', '01', 1, '', NULL, NULL, 'admin', '2023-01-02 00:40:23', 'admin', '2023-01-18 19:37:18');
INSERT INTO `sys_dept` VALUES (42083908293, 1, '中台研发部', '0101', 1, '', 0, NULL, 'admin', '2023-01-08 14:39:21', NULL, NULL);
INSERT INTO `sys_dept` VALUES (42089689925, NULL, '产品部', '02', 2, NULL, 0, NULL, 'admin', '2023-01-08 14:40:51', NULL, NULL);
INSERT INTO `sys_dept` VALUES (42202626373, NULL, '测试部', '03', 3, NULL, 0, NULL, 'admin', '2023-01-08 15:10:16', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典名称',
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典编码',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `del_flag` int(11) NULL DEFAULT NULL COMMENT '删除状态',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `type` int(1) UNSIGNED ZEROFILL NULL DEFAULT 0 COMMENT '字典类型0为string,1为number',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (8616451013, '性别', 'sex', NULL, NULL, 'admin', '2023-01-02 13:23:52', NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (71375867077, '数据权限', 'data_permission', '控制数据查看范围', NULL, 'admin', '2023-01-13 21:47:28', 'admin', '2023-01-13 21:47:46', NULL);
INSERT INTO `sys_dict` VALUES (74316854597, '数据库类型', 'database_type', NULL, NULL, 'admin', '2023-01-14 10:33:21', NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (76765765253, '成功状态', 'success_status', NULL, NULL, 'admin', '2023-01-14 21:11:05', NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (77499306373, '日志类型', 'log_type', NULL, NULL, 'admin', '2023-01-15 00:22:07', NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (140960825093, '按钮权限', 'button_type', NULL, NULL, 'admin', '2023-01-26 11:48:33', 'admin', '2023-01-26 14:57:05', 0);
INSERT INTO `sys_dict` VALUES (153462050245, '是否', 'whether', NULL, NULL, 'admin', '2023-01-28 18:04:05', NULL, NULL, 0);

-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_item`;
CREATE TABLE `sys_dict_item`  (
  `id` bigint(20) NOT NULL,
  `dict_id` bigint(20) NULL DEFAULT NULL COMMENT '字典id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典项文本',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典项值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `order_no` double NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_item
-- ----------------------------
INSERT INTO `sys_dict_item` VALUES (8617419717, 8616451013, '男', '0', NULL, 1);
INSERT INTO `sys_dict_item` VALUES (8617941573, 8616451013, '女', '1', NULL, 1);
INSERT INTO `sys_dict_item` VALUES (71381259781, 71375867077, '本人', '1', '只能查看本部门且本人创建的数据', 1);
INSERT INTO `sys_dict_item` VALUES (71389730373, 71375867077, '本部门', '2', '只能查看本部门数据', 2);
INSERT INTO `sys_dict_item` VALUES (71398373445, 71375867077, '本部门以及子部门', '3', '只能查看部门以及子部门数据', 3);
INSERT INTO `sys_dict_item` VALUES (71400237445, 71375867077, '所有部门', '4', '查看所有部门数据', 4);
INSERT INTO `sys_dict_item` VALUES (74318393285, 74316854597, 'MySQL', 'MySQL', NULL, 1);
INSERT INTO `sys_dict_item` VALUES (76767618309, 76765765253, '成功', '0', NULL, 1);
INSERT INTO `sys_dict_item` VALUES (76768298309, 76765765253, '失败', '1', NULL, 2);
INSERT INTO `sys_dict_item` VALUES (77513234117, 77499306373, '认证日志', 'auth', NULL, 1);
INSERT INTO `sys_dict_item` VALUES (77514748549, 77499306373, '操作日志', 'operate', NULL, 2);
INSERT INTO `sys_dict_item` VALUES (140963430661, 140960825093, '编辑', 'edit', '通用', 2);
INSERT INTO `sys_dict_item` VALUES (140964512005, 140960825093, '删除', 'remove', '通用', 3);
INSERT INTO `sys_dict_item` VALUES (140965814533, 140960825093, '批量删除', 'remove_batch', '通用', 4);
INSERT INTO `sys_dict_item` VALUES (140966682309, 140960825093, '新增', 'add', '通用', 1);
INSERT INTO `sys_dict_item` VALUES (153235156869, 140960825093, '菜单权限', 'menu_permission', '角色管理', 5);
INSERT INTO `sys_dict_item` VALUES (153236810181, 140960825093, '按钮权限', 'button_permission', '角色管理', 5);
INSERT INTO `sys_dict_item` VALUES (153239148101, 140960825093, '数据权限', 'data_permission', '角色管理', 5);
INSERT INTO `sys_dict_item` VALUES (153391879877, 140960825093, '按钮配置', 'button_setting', '菜单权限', 5);
INSERT INTO `sys_dict_item` VALUES (153395673029, 140960825093, '添加下级', 'add_sub', '菜单权限', 5);
INSERT INTO `sys_dict_item` VALUES (153462962053, 153462050245, '是', '1', NULL, 2);
INSERT INTO `sys_dict_item` VALUES (153463594373, 153462050245, '否', '0', NULL, 1);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint(20) NOT NULL,
  `log_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志类型',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作用户账号',
  `realname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作用户名称',
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP',
  `method` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求java方法',
  `request_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求路径',
  `request_param` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求参数',
  `request_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求类型',
  `cost_time` bigint(20) NULL DEFAULT NULL COMMENT '耗时',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览器',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  `biz_module` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务模块',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作描述',
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '错误信息',
  `exception_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常类',
  `stack_trace` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详尽异常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (146155380741, 'auth', NULL, NULL, '127.0.0.1', 'com.moxa.sooth.core.login.controller.LoginController.login', '/sooth/sys/login', '[{\"captcha\":\"1hhe\",\"checkKey\":\"1674786071538\",\"password\":\"123456\",\"username\":\"admin\"}]', 'POST', 152, '2023-01-27 10:21:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '系统认证', '登录', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (146156211333, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.menu.controller.SysMenuController.postEdit', '/sooth/sys/menu/edit', '[{\"alwaysShow\":false,\"component\":\"layouts/default/index\",\"dict\":{},\"hidden\":false,\"hideTab\":false,\"icon\":\"ion:grid-outline\",\"id\":6,\"keepAlive\":false,\"menuType\":0,\"name\":\"Dashboard\",\"redirect\":\"/dashboard/home\",\"sortNo\":1.0,\"treeId\":6,\"url\":\"/dashboard\"}]', 'POST', 137, '2023-01-27 10:21:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '权限管理', '修改', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (146174907205, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.menu.controller.SysMenuController.save', '/sooth/sys/menu/save', '[{\"alwaysShow\":false,\"component\":\"layouts/default/index\",\"dict\":{},\"hidden\":false,\"hideTab\":false,\"keepAlive\":false,\"menuType\":0,\"name\":\"aa\",\"sortNo\":1.0,\"url\":\"aaa\"}]', 'POST', 414, '2023-01-27 10:26:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '权限管理', '新增', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (146175715589, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.menu.controller.SysMenuController.remove', '/sooth/sys/menu/remove', '  id: 146174881733', 'DELETE', 115, '2023-01-27 10:26:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '权限管理', '删除', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (146180927365, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.menu.controller.SysMenuController.save', '/sooth/sys/menu/save', '[{\"alwaysShow\":false,\"component\":\"layouts/default/index\",\"dict\":{},\"hidden\":false,\"hideTab\":false,\"keepAlive\":false,\"menuType\":1,\"name\":\"aaa\",\"parentId\":71836300421,\"sortNo\":1.0,\"url\":\"aaa\"}]', 'POST', 67, '2023-01-27 10:27:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '权限管理', '新增', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (146183080645, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.menu.controller.SysMenuController.postEdit', '/sooth/sys/menu/edit', '[{\"alwaysShow\":false,\"component\":\"layouts/default/index\",\"dict\":{},\"hidden\":false,\"hideTab\":false,\"id\":146180923013,\"keepAlive\":false,\"menuType\":1,\"name\":\"aaa\",\"parentId\":3,\"sortNo\":1.0,\"treeId\":146180923013,\"url\":\"aaa\"}]', 'POST', 306, '2023-01-27 10:28:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '权限管理', '修改', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (146188624581, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.menu.controller.SysMenuController.remove', '/sooth/sys/menu/remove', '  id: 146180923013', 'DELETE', 48, '2023-01-27 10:29:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '权限管理', '删除', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (146240445381, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.menu.controller.SysMenuController.postEdit', '/sooth/sys/menu/edit', '[{\"alwaysShow\":false,\"component\":\"privilege/menu/index\",\"dict\":{},\"hidden\":false,\"hideTab\":false,\"icon\":\"ant-design:menu-outlined\",\"id\":5,\"keepAlive\":true,\"menuType\":1,\"name\":\"菜单管理\",\"parentId\":71147451269,\"sortNo\":1.0,\"treeId\":5,\"url\":\"/privilege/menu\"}]', 'POST', 288, '2023-01-27 10:43:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '权限管理', '修改', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (147414813445, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.buttonPermission.controller.SysButtonPermissionController.saveButtonPermission', '/sooth/sys/buttonPermission/saveButtonPermission', '[[{\"menuId\":21,\"roleId\":1,\"type\":\"add\"},{\"menuId\":21,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":21,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":21,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":3,\"roleId\":1,\"type\":\"add\"},{\"menuId\":3,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":3,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":3,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":4,\"roleId\":1,\"type\":\"add\"},{\"menuId\":4,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":4,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":4,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"add\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":12,\"roleId\":1,\"type\":\"add\"},{\"menuId\":12,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":12,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":12,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":8,\"roleId\":1,\"type\":\"add\"},{\"menuId\":8,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":8,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":8,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":17,\"roleId\":1,\"type\":\"add\"},{\"menuId\":17,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":17,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":17,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":18,\"roleId\":1,\"type\":\"add\"},{\"menuId\":18,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":18,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":18,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":19,\"roleId\":1,\"type\":\"add\"},{\"menuId\":19,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":19,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":19,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":20,\"roleId\":1,\"type\":\"add\"},{\"menuId\":20,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":20,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":20,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":11,\"roleId\":1,\"type\":\"add\"},{\"menuId\":11,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":11,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":11,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":5,\"roleId\":1,\"type\":\"add\"},{\"menuId\":5,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":5,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":5,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":2,\"roleId\":1,\"type\":\"add\"},{\"menuId\":2,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":2,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":2,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":13,\"roleId\":1,\"type\":\"add\"},{\"menuId\":13,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":13,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":13,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":14,\"roleId\":1,\"type\":\"add\"},{\"menuId\":14,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":14,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":14,\"roleId\":1,\"type\":\"removeBatch\"}]]', 'POST', 51, '2023-01-27 15:49:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 1, '按钮权限', '保存', '抽象树方法com.moxa.sooth.core.buttonPermission.service.impl.SysButtonPermissionServiceImpl.saveButtonPermission翻译失败，参数dream_template_param.id获取类型转换器失败，类型选择器未找到,javaType \'java.lang.String\',jdbcType \'BIGINT\'', 'com.moxa.dream.util.exception.DreamRunTimeException', 'com.moxa.dream.util.exception.DreamRunTimeException: 抽象树方法com.moxa.sooth.core.buttonPermission.service.impl.SysButtonPermissionServiceImpl.saveButtonPermission翻译失败，参数dream_template_param.id获取类型转换器失败，类型选择器未找到,javaType \'java.lang.String\',jdbcType \'BIGINT\'\r\n	at com.moxa.dream.system.config.BatchMappedStatement.compile(BatchMappedStatement.java:40)\r\n	at com.moxa.dream.system.core.session.DefaultSession.execute(DefaultSession.java:71)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\r\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:568)\r\n	at com.moxa.dream.template.session.SessionTemplate$SessionInterceptor.invoke(SessionTemplate.java:84)\r\n	at jdk.proxy2/jdk.proxy2.$Proxy106.execute(Unknown Source)\r\n	at com.moxa.dream.template.session.SessionTemplate.execute(SessionTemplate.java:54)\r\n	at com.moxa.dream.template.mapper.AbstractMapper.execute(AbstractMapper.java:85)\r\n	at com.moxa.dream.template.mapper.BatchInsertMapper.executeValidate(BatchInsertMapper.java:20)\r\n	at com.moxa.dream.template.mapper.ValidateMapper.execute(ValidateMapper.java:99)\r\n	at com.moxa.dream.template.mapper.WrapMapper.execute(WrapMapper.java:71)\r\n	at com.moxa.dream.template.mapper.AbstractMapper.execute(AbstractMapper.java:64)\r\n	at com.moxa.dream.template.mapper.DefaultTemplateMapper.batchInsert(DefaultTemplateMapper.java:215)\r\n	at com.moxa.dream.template.mapper.DefaultTemplateMapper.batchInsert(DefaultTemplateMapper.java:137)\r\n	at com.moxa.sooth.core.buttonPermission.service.impl.SysButtonPermissionServiceImpl.saveButtonPermission(SysButtonPermissionServiceImpl.java:17)\r\n	at com.moxa.sooth.core.buttonPermission.controller.SysButtonPermissionController.saveButtonPermission(SysButtonPermissionController.java:23)\r\n	at com.moxa.sooth.core.buttonPermission.controller.SysButtonPermissionController$$FastClassBySpringCGLIB$$1.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:783)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:89)\r\n	at com.moxa.sooth.core.base.aspect.LogAspect.proceed(LogAspect.java:82)\r\n	at com.moxa.sooth.core.base.aspect.LogAspect.around(LogAspect.java:75)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\r\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:568)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:634)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:624)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:72)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:97)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:698)\r\n	at com.moxa.sooth.core.buttonPermission.controller.SysButtonPermissionController$$EnhancerBySpringCGLIB$$1.saveButtonPermission(<generated>)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\r\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:568)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:150)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:117)\r\n	at');
INSERT INTO `sys_log` VALUES (147426670405, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.buttonPermission.controller.SysButtonPermissionController.saveButtonPermission', '/sooth/sys/buttonPermission/saveButtonPermission', '[[{\"menuId\":21,\"roleId\":1,\"type\":\"add\"},{\"menuId\":21,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":21,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":21,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":3,\"roleId\":1,\"type\":\"add\"},{\"menuId\":3,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":3,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":3,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":4,\"roleId\":1,\"type\":\"add\"},{\"menuId\":4,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":4,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":4,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"add\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":12,\"roleId\":1,\"type\":\"add\"},{\"menuId\":12,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":12,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":12,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":8,\"roleId\":1,\"type\":\"add\"},{\"menuId\":8,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":8,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":8,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":17,\"roleId\":1,\"type\":\"add\"},{\"menuId\":17,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":17,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":17,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":18,\"roleId\":1,\"type\":\"add\"},{\"menuId\":18,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":18,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":18,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":19,\"roleId\":1,\"type\":\"add\"},{\"menuId\":19,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":19,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":19,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":20,\"roleId\":1,\"type\":\"add\"},{\"menuId\":20,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":20,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":20,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":11,\"roleId\":1,\"type\":\"add\"},{\"menuId\":11,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":11,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":11,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":5,\"roleId\":1,\"type\":\"add\"},{\"menuId\":5,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":5,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":5,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":2,\"roleId\":1,\"type\":\"add\"},{\"menuId\":2,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":2,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":2,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":13,\"roleId\":1,\"type\":\"add\"},{\"menuId\":13,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":13,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":13,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":14,\"roleId\":1,\"type\":\"add\"},{\"menuId\":14,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":14,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":14,\"roleId\":1,\"type\":\"removeBatch\"}]]', 'POST', 54889, '2023-01-27 15:51:25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 1, '按钮权限', '保存', '抽象树方法com.moxa.sooth.core.buttonPermission.service.impl.SysButtonPermissionServiceImpl.saveButtonPermission翻译失败，参数dream_template_param.id获取类型转换器失败，类型选择器未找到,javaType \'java.lang.String\',jdbcType \'BIGINT\'', 'com.moxa.dream.util.exception.DreamRunTimeException', 'com.moxa.dream.util.exception.DreamRunTimeException: 抽象树方法com.moxa.sooth.core.buttonPermission.service.impl.SysButtonPermissionServiceImpl.saveButtonPermission翻译失败，参数dream_template_param.id获取类型转换器失败，类型选择器未找到,javaType \'java.lang.String\',jdbcType \'BIGINT\'\r\n	at com.moxa.dream.system.config.BatchMappedStatement.compile(BatchMappedStatement.java:40)\r\n	at com.moxa.dream.system.core.session.DefaultSession.execute(DefaultSession.java:71)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\r\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:568)\r\n	at com.moxa.dream.template.session.SessionTemplate$SessionInterceptor.invoke(SessionTemplate.java:84)\r\n	at jdk.proxy2/jdk.proxy2.$Proxy106.execute(Unknown Source)\r\n	at com.moxa.dream.template.session.SessionTemplate.execute(SessionTemplate.java:54)\r\n	at com.moxa.dream.template.mapper.AbstractMapper.execute(AbstractMapper.java:85)\r\n	at com.moxa.dream.template.mapper.BatchInsertMapper.executeValidate(BatchInsertMapper.java:20)\r\n	at com.moxa.dream.template.mapper.ValidateMapper.execute(ValidateMapper.java:99)\r\n	at com.moxa.dream.template.mapper.WrapMapper.execute(WrapMapper.java:71)\r\n	at com.moxa.dream.template.mapper.AbstractMapper.execute(AbstractMapper.java:64)\r\n	at com.moxa.dream.template.mapper.DefaultTemplateMapper.batchInsert(DefaultTemplateMapper.java:215)\r\n	at com.moxa.dream.template.mapper.DefaultTemplateMapper.batchInsert(DefaultTemplateMapper.java:137)\r\n	at com.moxa.sooth.core.buttonPermission.service.impl.SysButtonPermissionServiceImpl.saveButtonPermission(SysButtonPermissionServiceImpl.java:17)\r\n	at com.moxa.sooth.core.buttonPermission.controller.SysButtonPermissionController.saveButtonPermission(SysButtonPermissionController.java:23)\r\n	at com.moxa.sooth.core.buttonPermission.controller.SysButtonPermissionController$$FastClassBySpringCGLIB$$1.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:783)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:89)\r\n	at com.moxa.sooth.core.base.aspect.LogAspect.proceed(LogAspect.java:82)\r\n	at com.moxa.sooth.core.base.aspect.LogAspect.around(LogAspect.java:75)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\r\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:568)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:634)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:624)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:72)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:97)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:698)\r\n	at com.moxa.sooth.core.buttonPermission.controller.SysButtonPermissionController$$EnhancerBySpringCGLIB$$1.saveButtonPermission(<generated>)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\r\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:568)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:150)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:117)\r\n	at');
INSERT INTO `sys_log` VALUES (147432090117, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.buttonPermission.controller.SysButtonPermissionController.saveButtonPermission', '/sooth/sys/buttonPermission/saveButtonPermission', '[[{\"menuId\":21,\"roleId\":1,\"type\":\"add\"},{\"menuId\":21,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":21,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":21,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":3,\"roleId\":1,\"type\":\"add\"},{\"menuId\":3,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":3,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":3,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":4,\"roleId\":1,\"type\":\"add\"},{\"menuId\":4,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":4,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":4,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"add\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":12,\"roleId\":1,\"type\":\"add\"},{\"menuId\":12,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":12,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":12,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":8,\"roleId\":1,\"type\":\"add\"},{\"menuId\":8,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":8,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":8,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":17,\"roleId\":1,\"type\":\"add\"},{\"menuId\":17,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":17,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":17,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":18,\"roleId\":1,\"type\":\"add\"},{\"menuId\":18,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":18,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":18,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":19,\"roleId\":1,\"type\":\"add\"},{\"menuId\":19,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":19,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":19,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":20,\"roleId\":1,\"type\":\"add\"},{\"menuId\":20,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":20,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":20,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":11,\"roleId\":1,\"type\":\"add\"},{\"menuId\":11,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":11,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":11,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":5,\"roleId\":1,\"type\":\"add\"},{\"menuId\":5,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":5,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":5,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":2,\"roleId\":1,\"type\":\"add\"},{\"menuId\":2,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":2,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":2,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":13,\"roleId\":1,\"type\":\"add\"},{\"menuId\":13,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":13,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":13,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":14,\"roleId\":1,\"type\":\"add\"},{\"menuId\":14,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":14,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":14,\"roleId\":1,\"type\":\"removeBatch\"}]]', 'POST', 10810, '2023-01-27 15:53:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '按钮权限', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (147434739397, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.buttonPermission.controller.SysButtonPermissionController.saveButtonPermission', '/sooth/sys/buttonPermission/saveButtonPermission', '[[{\"menuId\":21,\"roleId\":1,\"type\":\"add\"},{\"menuId\":21,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":21,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":21,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":3,\"roleId\":1,\"type\":\"add\"},{\"menuId\":3,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":3,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":3,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":4,\"roleId\":1,\"type\":\"add\"},{\"menuId\":4,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":4,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":4,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"add\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":12,\"roleId\":1,\"type\":\"add\"},{\"menuId\":12,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":12,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":12,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":8,\"roleId\":1,\"type\":\"add\"},{\"menuId\":8,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":8,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":8,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":17,\"roleId\":1,\"type\":\"add\"},{\"menuId\":17,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":17,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":17,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":18,\"roleId\":1,\"type\":\"add\"},{\"menuId\":18,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":18,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":18,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":19,\"roleId\":1,\"type\":\"add\"},{\"menuId\":19,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":19,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":19,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":20,\"roleId\":1,\"type\":\"add\"},{\"menuId\":20,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":20,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":20,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":11,\"roleId\":1,\"type\":\"add\"},{\"menuId\":11,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":11,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":11,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":5,\"roleId\":1,\"type\":\"add\"},{\"menuId\":5,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":5,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":5,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":2,\"roleId\":1,\"type\":\"add\"},{\"menuId\":2,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":2,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":2,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":13,\"roleId\":1,\"type\":\"add\"},{\"menuId\":13,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":13,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":13,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":14,\"roleId\":1,\"type\":\"add\"},{\"menuId\":14,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":14,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":14,\"roleId\":1,\"type\":\"removeBatch\"}]]', 'POST', 3503, '2023-01-27 15:54:24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '按钮权限', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (147718226373, 'auth', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.login.controller.LoginController.logout', '/sooth/sys/logout', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6f506a40', 'GET', 24, '2023-01-27 17:08:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '系统认证', '退出', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (147718748549, 'auth', NULL, NULL, '127.0.0.1', 'com.moxa.sooth.core.login.controller.LoginController.login', '/sooth/sys/login', '[{\"captcha\":\"pq7s\",\"checkKey\":\"1674810497440\",\"password\":\"123456\",\"username\":\"test\"}]', 'POST', 127, '2023-01-27 17:08:25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '系统认证', '登录', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (147807095941, 'auth', 'test', '测试员', '127.0.0.1', 'com.moxa.sooth.core.login.controller.LoginController.logout', '/sooth/sys/logout', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@75437740', 'GET', 11, '2023-01-27 17:31:26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '系统认证', '退出', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (147807419461, 'auth', NULL, NULL, '127.0.0.1', 'com.moxa.sooth.core.login.controller.LoginController.login', '/sooth/sys/login', '[{\"captcha\":\"zzbf\",\"checkKey\":\"1674811885986\",\"password\":\"123456\",\"username\":\"admin\"}]', 'POST', 149, '2023-01-27 17:31:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '系统认证', '登录', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (147879947973, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.buttonPermission.controller.SysButtonPermissionController.saveButtonPermission', '/sooth/sys/buttonPermission/saveButtonPermission', '[[{\"menuId\":21,\"roleId\":1,\"type\":\"save\"},{\"menuId\":21,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":21,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":21,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":3,\"roleId\":1,\"type\":\"save\"},{\"menuId\":3,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":3,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":3,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":4,\"roleId\":1,\"type\":\"save\"},{\"menuId\":4,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":4,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":4,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"save\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":12,\"roleId\":1,\"type\":\"save\"},{\"menuId\":12,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":12,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":12,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":8,\"roleId\":1,\"type\":\"save\"},{\"menuId\":8,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":8,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":8,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":17,\"roleId\":1,\"type\":\"save\"},{\"menuId\":17,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":17,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":17,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":18,\"roleId\":1,\"type\":\"save\"},{\"menuId\":18,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":18,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":18,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":19,\"roleId\":1,\"type\":\"save\"},{\"menuId\":19,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":19,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":19,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":20,\"roleId\":1,\"type\":\"save\"},{\"menuId\":20,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":20,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":20,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":11,\"roleId\":1,\"type\":\"save\"},{\"menuId\":11,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":11,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":11,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":5,\"roleId\":1,\"type\":\"save\"},{\"menuId\":5,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":5,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":5,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":2,\"roleId\":1,\"type\":\"save\"},{\"menuId\":2,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":2,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":2,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":13,\"roleId\":1,\"type\":\"save\"},{\"menuId\":13,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":13,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":13,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":14,\"roleId\":1,\"type\":\"save\"},{\"menuId\":14,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":14,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":14,\"roleId\":1,\"type\":\"removeBatch\"}]]', 'POST', 11228, '2023-01-27 17:50:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '按钮权限', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (147884368389, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.buttonPermission.controller.SysButtonPermissionController.saveButtonPermission', '/sooth/sys/buttonPermission/saveButtonPermission', '[[{\"menuId\":21,\"roleId\":1,\"type\":\"add\"},{\"menuId\":21,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":21,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":21,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":3,\"roleId\":1,\"type\":\"add\"},{\"menuId\":3,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":3,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":3,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":4,\"roleId\":1,\"type\":\"add\"},{\"menuId\":4,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":4,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":4,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"add\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":71836300421,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":12,\"roleId\":1,\"type\":\"add\"},{\"menuId\":12,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":12,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":12,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":8,\"roleId\":1,\"type\":\"add\"},{\"menuId\":8,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":8,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":8,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":17,\"roleId\":1,\"type\":\"add\"},{\"menuId\":17,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":17,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":17,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":18,\"roleId\":1,\"type\":\"add\"},{\"menuId\":18,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":18,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":18,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":19,\"roleId\":1,\"type\":\"add\"},{\"menuId\":19,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":19,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":19,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":20,\"roleId\":1,\"type\":\"add\"},{\"menuId\":20,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":20,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":20,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":11,\"roleId\":1,\"type\":\"add\"},{\"menuId\":11,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":11,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":11,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":5,\"roleId\":1,\"type\":\"add\"},{\"menuId\":5,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":5,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":5,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":2,\"roleId\":1,\"type\":\"add\"},{\"menuId\":2,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":2,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":2,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":13,\"roleId\":1,\"type\":\"add\"},{\"menuId\":13,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":13,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":13,\"roleId\":1,\"type\":\"removeBatch\"},{\"menuId\":14,\"roleId\":1,\"type\":\"add\"},{\"menuId\":14,\"roleId\":1,\"type\":\"edit\"},{\"menuId\":14,\"roleId\":1,\"type\":\"remove\"},{\"menuId\":14,\"roleId\":1,\"type\":\"removeBatch\"}]]', 'POST', 13259, '2023-01-27 17:51:20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '按钮权限', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (147982588613, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.buttonPermission.controller.SysButtonPermissionController.saveButtonPermission', '/sooth/sys/buttonPermission/saveButtonPermission/1', '[1,[{\"menuId\":11,\"type\":\"add\"},{\"menuId\":12,\"type\":\"add\"},{\"menuId\":13,\"type\":\"add\"},{\"menuId\":14,\"type\":\"add\"},{\"menuId\":17,\"type\":\"add\"},{\"menuId\":18,\"type\":\"add\"},{\"menuId\":19,\"type\":\"add\"},{\"menuId\":2,\"type\":\"add\"},{\"menuId\":20,\"type\":\"add\"},{\"menuId\":3,\"type\":\"add\"},{\"menuId\":4,\"type\":\"add\"},{\"menuId\":5,\"type\":\"add\"},{\"menuId\":71836300421,\"type\":\"add\"},{\"menuId\":8,\"type\":\"add\"},{\"menuId\":11,\"type\":\"edit\"},{\"menuId\":12,\"type\":\"edit\"},{\"menuId\":13,\"type\":\"edit\"},{\"menuId\":14,\"type\":\"edit\"},{\"menuId\":17,\"type\":\"edit\"},{\"menuId\":18,\"type\":\"edit\"},{\"menuId\":19,\"type\":\"edit\"},{\"menuId\":2,\"type\":\"edit\"},{\"menuId\":20,\"type\":\"edit\"},{\"menuId\":21,\"type\":\"edit\"},{\"menuId\":3,\"type\":\"edit\"},{\"menuId\":4,\"type\":\"edit\"},{\"menuId\":5,\"type\":\"edit\"},{\"menuId\":71836300421,\"type\":\"edit\"},{\"menuId\":8,\"type\":\"edit\"},{\"menuId\":11,\"type\":\"remove\"},{\"menuId\":12,\"type\":\"remove\"},{\"menuId\":13,\"type\":\"remove\"},{\"menuId\":14,\"type\":\"remove\"},{\"menuId\":17,\"type\":\"remove\"},{\"menuId\":18,\"type\":\"remove\"},{\"menuId\":19,\"type\":\"remove\"},{\"menuId\":2,\"type\":\"remove\"},{\"menuId\":20,\"type\":\"remove\"},{\"menuId\":21,\"type\":\"remove\"},{\"menuId\":3,\"type\":\"remove\"},{\"menuId\":4,\"type\":\"remove\"},{\"menuId\":5,\"type\":\"remove\"},{\"menuId\":71836300421,\"type\":\"remove\"},{\"menuId\":8,\"type\":\"remove\"},{\"menuId\":11,\"type\":\"removeBatch\"},{\"menuId\":12,\"type\":\"removeBatch\"},{\"menuId\":13,\"type\":\"removeBatch\"},{\"menuId\":14,\"type\":\"removeBatch\"},{\"menuId\":17,\"type\":\"removeBatch\"},{\"menuId\":18,\"type\":\"removeBatch\"},{\"menuId\":19,\"type\":\"removeBatch\"},{\"menuId\":2,\"type\":\"removeBatch\"},{\"menuId\":20,\"type\":\"removeBatch\"},{\"menuId\":21,\"type\":\"removeBatch\"},{\"menuId\":3,\"type\":\"removeBatch\"},{\"menuId\":4,\"type\":\"removeBatch\"},{\"menuId\":5,\"type\":\"removeBatch\"},{\"menuId\":71836300421,\"type\":\"removeBatch\"},{\"menuId\":8,\"type\":\"removeBatch\"}]]', 'POST', 91, '2023-01-27 18:17:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '按钮权限', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (147983865413, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.buttonPermission.controller.SysButtonPermissionController.saveButtonPermission', '/sooth/sys/buttonPermission/saveButtonPermission/1', '[1,[{\"menuId\":21,\"type\":\"add\"},{\"menuId\":21,\"type\":\"edit\"},{\"menuId\":21,\"type\":\"remove\"},{\"menuId\":21,\"type\":\"removeBatch\"},{\"menuId\":3,\"type\":\"add\"},{\"menuId\":3,\"type\":\"edit\"},{\"menuId\":3,\"type\":\"remove\"},{\"menuId\":3,\"type\":\"removeBatch\"},{\"menuId\":4,\"type\":\"add\"},{\"menuId\":4,\"type\":\"edit\"},{\"menuId\":4,\"type\":\"remove\"},{\"menuId\":4,\"type\":\"removeBatch\"},{\"menuId\":71836300421,\"type\":\"add\"},{\"menuId\":71836300421,\"type\":\"edit\"},{\"menuId\":71836300421,\"type\":\"remove\"},{\"menuId\":71836300421,\"type\":\"removeBatch\"},{\"menuId\":12,\"type\":\"add\"},{\"menuId\":12,\"type\":\"edit\"},{\"menuId\":12,\"type\":\"remove\"},{\"menuId\":12,\"type\":\"removeBatch\"},{\"menuId\":8,\"type\":\"add\"},{\"menuId\":8,\"type\":\"edit\"},{\"menuId\":8,\"type\":\"remove\"},{\"menuId\":8,\"type\":\"removeBatch\"},{\"menuId\":17,\"type\":\"add\"},{\"menuId\":17,\"type\":\"edit\"},{\"menuId\":17,\"type\":\"remove\"},{\"menuId\":17,\"type\":\"removeBatch\"},{\"menuId\":18,\"type\":\"add\"},{\"menuId\":18,\"type\":\"edit\"},{\"menuId\":18,\"type\":\"remove\"},{\"menuId\":18,\"type\":\"removeBatch\"},{\"menuId\":19,\"type\":\"add\"},{\"menuId\":19,\"type\":\"edit\"},{\"menuId\":19,\"type\":\"remove\"},{\"menuId\":19,\"type\":\"removeBatch\"},{\"menuId\":20,\"type\":\"add\"},{\"menuId\":20,\"type\":\"edit\"},{\"menuId\":20,\"type\":\"remove\"},{\"menuId\":20,\"type\":\"removeBatch\"},{\"menuId\":11,\"type\":\"add\"},{\"menuId\":11,\"type\":\"edit\"},{\"menuId\":11,\"type\":\"remove\"},{\"menuId\":11,\"type\":\"removeBatch\"},{\"menuId\":5,\"type\":\"add\"},{\"menuId\":5,\"type\":\"edit\"},{\"menuId\":5,\"type\":\"remove\"},{\"menuId\":5,\"type\":\"removeBatch\"},{\"menuId\":2,\"type\":\"add\"},{\"menuId\":2,\"type\":\"edit\"},{\"menuId\":2,\"type\":\"remove\"},{\"menuId\":2,\"type\":\"removeBatch\"},{\"menuId\":13,\"type\":\"add\"},{\"menuId\":13,\"type\":\"edit\"},{\"menuId\":13,\"type\":\"remove\"},{\"menuId\":13,\"type\":\"removeBatch\"},{\"menuId\":14,\"type\":\"add\"},{\"menuId\":14,\"type\":\"edit\"},{\"menuId\":14,\"type\":\"remove\"},{\"menuId\":14,\"type\":\"removeBatch\"}]]', 'POST', 112, '2023-01-27 18:17:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '按钮权限', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (147994628549, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.buttonPermission.controller.SysButtonPermissionController.saveButtonPermission', '/sooth/sys/buttonPermission/saveButtonPermission/1', '[1,[{\"menuId\":21,\"type\":\"add\"},{\"menuId\":3,\"type\":\"add\"},{\"menuId\":4,\"type\":\"add\"},{\"menuId\":71836300421,\"type\":\"add\"},{\"menuId\":12,\"type\":\"add\"},{\"menuId\":8,\"type\":\"add\"},{\"menuId\":17,\"type\":\"add\"},{\"menuId\":18,\"type\":\"add\"},{\"menuId\":19,\"type\":\"add\"},{\"menuId\":20,\"type\":\"add\"},{\"menuId\":11,\"type\":\"add\"},{\"menuId\":5,\"type\":\"add\"},{\"menuId\":2,\"type\":\"add\"},{\"menuId\":13,\"type\":\"add\"},{\"menuId\":14,\"type\":\"add\"},{\"menuId\":21,\"type\":\"edit\"},{\"menuId\":3,\"type\":\"edit\"},{\"menuId\":4,\"type\":\"edit\"},{\"menuId\":71836300421,\"type\":\"edit\"},{\"menuId\":12,\"type\":\"edit\"},{\"menuId\":8,\"type\":\"edit\"},{\"menuId\":17,\"type\":\"edit\"},{\"menuId\":18,\"type\":\"edit\"},{\"menuId\":19,\"type\":\"edit\"},{\"menuId\":20,\"type\":\"edit\"},{\"menuId\":11,\"type\":\"edit\"},{\"menuId\":5,\"type\":\"edit\"},{\"menuId\":2,\"type\":\"edit\"},{\"menuId\":13,\"type\":\"edit\"},{\"menuId\":14,\"type\":\"edit\"},{\"menuId\":21,\"type\":\"remove\"},{\"menuId\":3,\"type\":\"remove\"},{\"menuId\":4,\"type\":\"remove\"},{\"menuId\":71836300421,\"type\":\"remove\"},{\"menuId\":12,\"type\":\"remove\"},{\"menuId\":8,\"type\":\"remove\"},{\"menuId\":17,\"type\":\"remove\"},{\"menuId\":18,\"type\":\"remove\"},{\"menuId\":19,\"type\":\"remove\"},{\"menuId\":20,\"type\":\"remove\"},{\"menuId\":11,\"type\":\"remove\"},{\"menuId\":5,\"type\":\"remove\"},{\"menuId\":2,\"type\":\"remove\"},{\"menuId\":13,\"type\":\"remove\"},{\"menuId\":14,\"type\":\"remove\"},{\"menuId\":21,\"type\":\"removeBatch\"},{\"menuId\":3,\"type\":\"removeBatch\"},{\"menuId\":4,\"type\":\"removeBatch\"},{\"menuId\":71836300421,\"type\":\"removeBatch\"},{\"menuId\":12,\"type\":\"removeBatch\"},{\"menuId\":8,\"type\":\"removeBatch\"},{\"menuId\":17,\"type\":\"removeBatch\"},{\"menuId\":18,\"type\":\"removeBatch\"},{\"menuId\":19,\"type\":\"removeBatch\"},{\"menuId\":20,\"type\":\"removeBatch\"},{\"menuId\":11,\"type\":\"removeBatch\"},{\"menuId\":5,\"type\":\"removeBatch\"},{\"menuId\":2,\"type\":\"removeBatch\"},{\"menuId\":13,\"type\":\"removeBatch\"},{\"menuId\":14,\"type\":\"removeBatch\"}]]', 'POST', 215, '2023-01-27 18:20:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '按钮权限', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (148004902277, 'auth', NULL, NULL, '192.168.0.30', 'com.moxa.sooth.core.login.controller.LoginController.login', '/sooth/sys/login', '[{\"captcha\":\"usqv\",\"checkKey\":\"1674814971696\",\"password\":\"123456\",\"username\":\"admin\"}]', 'POST', 141, '2023-01-27 18:22:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '系统认证', '登录', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (148093899973, 'auth', NULL, NULL, '192.168.0.30', 'com.moxa.sooth.core.login.controller.LoginController.login', '/sooth/sys/login', '[{\"captcha\":\"3hay\",\"checkKey\":\"1674816361754\",\"password\":\"123456\",\"username\":\"admin\"}]', 'POST', 155, '2023-01-27 18:46:07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 0, '系统认证', '登录', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (148095658437, 'operate', 'admin', '管理员', '192.168.0.30', 'com.moxa.sooth.core.buttonPermission.controller.SysButtonPermissionController.saveButtonPermission', '/sooth/sys/buttonPermission/saveButtonPermission/1', '[1,[{\"menuId\":11,\"type\":\"add\"},{\"menuId\":12,\"type\":\"add\"},{\"menuId\":13,\"type\":\"add\"},{\"menuId\":14,\"type\":\"add\"},{\"menuId\":17,\"type\":\"add\"},{\"menuId\":18,\"type\":\"add\"},{\"menuId\":19,\"type\":\"add\"},{\"menuId\":2,\"type\":\"add\"},{\"menuId\":20,\"type\":\"add\"},{\"menuId\":21,\"type\":\"add\"},{\"menuId\":3,\"type\":\"add\"},{\"menuId\":4,\"type\":\"add\"},{\"menuId\":5,\"type\":\"add\"},{\"menuId\":71836300421,\"type\":\"add\"},{\"menuId\":8,\"type\":\"add\"},{\"menuId\":11,\"type\":\"edit\"},{\"menuId\":12,\"type\":\"edit\"},{\"menuId\":13,\"type\":\"edit\"},{\"menuId\":14,\"type\":\"edit\"},{\"menuId\":17,\"type\":\"edit\"},{\"menuId\":18,\"type\":\"edit\"},{\"menuId\":19,\"type\":\"edit\"},{\"menuId\":2,\"type\":\"edit\"},{\"menuId\":20,\"type\":\"edit\"},{\"menuId\":21,\"type\":\"edit\"},{\"menuId\":3,\"type\":\"edit\"},{\"menuId\":4,\"type\":\"edit\"},{\"menuId\":5,\"type\":\"edit\"},{\"menuId\":71836300421,\"type\":\"edit\"},{\"menuId\":8,\"type\":\"edit\"},{\"menuId\":11,\"type\":\"remove\"},{\"menuId\":12,\"type\":\"remove\"},{\"menuId\":13,\"type\":\"remove\"},{\"menuId\":14,\"type\":\"remove\"},{\"menuId\":17,\"type\":\"remove\"},{\"menuId\":18,\"type\":\"remove\"},{\"menuId\":19,\"type\":\"remove\"},{\"menuId\":2,\"type\":\"remove\"},{\"menuId\":20,\"type\":\"remove\"},{\"menuId\":21,\"type\":\"remove\"},{\"menuId\":3,\"type\":\"remove\"},{\"menuId\":4,\"type\":\"remove\"},{\"menuId\":5,\"type\":\"remove\"},{\"menuId\":71836300421,\"type\":\"remove\"},{\"menuId\":8,\"type\":\"remove\"},{\"menuId\":11,\"type\":\"removeBatch\"},{\"menuId\":12,\"type\":\"removeBatch\"},{\"menuId\":13,\"type\":\"removeBatch\"},{\"menuId\":14,\"type\":\"removeBatch\"},{\"menuId\":17,\"type\":\"removeBatch\"},{\"menuId\":18,\"type\":\"removeBatch\"},{\"menuId\":19,\"type\":\"removeBatch\"},{\"menuId\":2,\"type\":\"removeBatch\"},{\"menuId\":20,\"type\":\"removeBatch\"},{\"menuId\":21,\"type\":\"removeBatch\"},{\"menuId\":3,\"type\":\"removeBatch\"},{\"menuId\":4,\"type\":\"removeBatch\"},{\"menuId\":5,\"type\":\"removeBatch\"},{\"menuId\":71836300421,\"type\":\"removeBatch\"},{\"menuId\":8,\"type\":\"removeBatch\"}]]', 'POST', 8, '2023-01-27 18:46:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 0, '按钮权限', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (148096913733, 'operate', 'admin', '管理员', '192.168.0.30', 'com.moxa.sooth.core.buttonPermission.controller.SysButtonPermissionController.saveButtonPermission', '/sooth/sys/buttonPermission/saveButtonPermission/131517140997', '[131517140997,[{\"menuId\":21,\"type\":\"add\"},{\"menuId\":21,\"type\":\"edit\"},{\"menuId\":21,\"type\":\"remove\"},{\"menuId\":21,\"type\":\"removeBatch\"},{\"menuId\":3,\"type\":\"add\"},{\"menuId\":3,\"type\":\"edit\"},{\"menuId\":3,\"type\":\"remove\"},{\"menuId\":3,\"type\":\"removeBatch\"},{\"menuId\":4,\"type\":\"add\"},{\"menuId\":4,\"type\":\"edit\"},{\"menuId\":4,\"type\":\"remove\"},{\"menuId\":4,\"type\":\"removeBatch\"},{\"menuId\":71836300421,\"type\":\"add\"},{\"menuId\":71836300421,\"type\":\"edit\"},{\"menuId\":71836300421,\"type\":\"remove\"},{\"menuId\":71836300421,\"type\":\"removeBatch\"},{\"menuId\":12,\"type\":\"add\"},{\"menuId\":12,\"type\":\"edit\"},{\"menuId\":12,\"type\":\"remove\"},{\"menuId\":12,\"type\":\"removeBatch\"},{\"menuId\":8,\"type\":\"add\"},{\"menuId\":8,\"type\":\"edit\"},{\"menuId\":8,\"type\":\"remove\"},{\"menuId\":8,\"type\":\"removeBatch\"},{\"menuId\":17,\"type\":\"add\"},{\"menuId\":17,\"type\":\"edit\"},{\"menuId\":17,\"type\":\"remove\"},{\"menuId\":17,\"type\":\"removeBatch\"},{\"menuId\":18,\"type\":\"add\"},{\"menuId\":18,\"type\":\"edit\"},{\"menuId\":18,\"type\":\"remove\"},{\"menuId\":18,\"type\":\"removeBatch\"},{\"menuId\":19,\"type\":\"add\"},{\"menuId\":19,\"type\":\"edit\"},{\"menuId\":19,\"type\":\"remove\"},{\"menuId\":19,\"type\":\"removeBatch\"},{\"menuId\":20,\"type\":\"add\"},{\"menuId\":20,\"type\":\"edit\"},{\"menuId\":20,\"type\":\"remove\"},{\"menuId\":20,\"type\":\"removeBatch\"},{\"menuId\":11,\"type\":\"add\"},{\"menuId\":11,\"type\":\"edit\"},{\"menuId\":11,\"type\":\"remove\"},{\"menuId\":11,\"type\":\"removeBatch\"},{\"menuId\":5,\"type\":\"add\"},{\"menuId\":5,\"type\":\"edit\"},{\"menuId\":5,\"type\":\"remove\"},{\"menuId\":5,\"type\":\"removeBatch\"},{\"menuId\":2,\"type\":\"add\"},{\"menuId\":2,\"type\":\"edit\"},{\"menuId\":2,\"type\":\"remove\"},{\"menuId\":2,\"type\":\"removeBatch\"},{\"menuId\":13,\"type\":\"add\"},{\"menuId\":13,\"type\":\"edit\"},{\"menuId\":13,\"type\":\"remove\"},{\"menuId\":13,\"type\":\"removeBatch\"},{\"menuId\":14,\"type\":\"add\"},{\"menuId\":14,\"type\":\"edit\"},{\"menuId\":14,\"type\":\"remove\"},{\"menuId\":14,\"type\":\"removeBatch\"}]]', 'POST', 6691, '2023-01-27 18:46:48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 0, '按钮权限', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (148098428933, 'operate', 'admin', '管理员', '192.168.0.30', 'com.moxa.sooth.core.buttonPermission.controller.SysButtonPermissionController.saveButtonPermission', '/sooth/sys/buttonPermission/saveButtonPermission/131517140997', '[131517140997,[]]', 'POST', 174, '2023-01-27 18:47:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 0, '按钮权限', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (149052926405, 'auth', NULL, NULL, '192.168.0.30', 'com.moxa.sooth.core.login.controller.LoginController.login', '/sooth/sys/login', '[{\"captcha\":\"ywu1\",\"checkKey\":\"1674831344456\",\"password\":\"123456\",\"username\":\"admin\"}]', 'POST', 166, '2023-01-27 22:55:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '系统认证', '登录', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (149053615621, 'auth', 'admin', '管理员', '192.168.0.30', 'com.moxa.sooth.core.login.controller.LoginController.login', '/sooth/sys/login', '[{\"captcha\":\"myex\",\"checkKey\":\"1674831352381\",\"password\":\"123456\",\"username\":\"admin\"}]', 'POST', 135, '2023-01-27 22:56:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '系统认证', '登录', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (149055161413, 'auth', 'admin', '管理员', '192.168.0.30', 'com.moxa.sooth.core.login.controller.LoginController.login', '/sooth/sys/login', '[{\"captcha\":\"cy14\",\"checkKey\":\"1674831362792\",\"password\":\"123456\",\"username\":\"admin\"}]', 'POST', 135, '2023-01-27 22:56:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '系统认证', '登录', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (149060924549, 'auth', NULL, NULL, '192.168.0.30', 'com.moxa.sooth.core.login.controller.LoginController.login', '/sooth/sys/login', '[{\"captcha\":\"2ac9\",\"checkKey\":\"1674831461671\",\"password\":\"123456\",\"username\":\"admin\"}]', 'POST', 137, '2023-01-27 22:57:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '系统认证', '登录', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (149071658757, 'operate', 'admin', '管理员', '192.168.0.30', 'com.moxa.sooth.core.buttonPermission.controller.SysButtonPermissionController.saveButtonPermission', '/sooth/sys/buttonPermission/saveButtonPermission/1', '[1,[{\"menuId\":21,\"type\":\"add\"},{\"menuId\":21,\"type\":\"edit\"},{\"menuId\":21,\"type\":\"remove\"},{\"menuId\":21,\"type\":\"removeBatch\"},{\"menuId\":3,\"type\":\"add\"},{\"menuId\":3,\"type\":\"edit\"},{\"menuId\":3,\"type\":\"remove\"},{\"menuId\":3,\"type\":\"removeBatch\"},{\"menuId\":4,\"type\":\"add\"},{\"menuId\":4,\"type\":\"edit\"},{\"menuId\":4,\"type\":\"remove\"},{\"menuId\":4,\"type\":\"removeBatch\"},{\"menuId\":71836300421,\"type\":\"add\"},{\"menuId\":71836300421,\"type\":\"edit\"},{\"menuId\":71836300421,\"type\":\"remove\"},{\"menuId\":71836300421,\"type\":\"removeBatch\"},{\"menuId\":12,\"type\":\"add\"},{\"menuId\":12,\"type\":\"edit\"},{\"menuId\":12,\"type\":\"remove\"},{\"menuId\":12,\"type\":\"removeBatch\"},{\"menuId\":8,\"type\":\"add\"},{\"menuId\":8,\"type\":\"edit\"},{\"menuId\":8,\"type\":\"remove\"},{\"menuId\":8,\"type\":\"removeBatch\"},{\"menuId\":17,\"type\":\"add\"},{\"menuId\":17,\"type\":\"edit\"},{\"menuId\":17,\"type\":\"remove\"},{\"menuId\":17,\"type\":\"removeBatch\"},{\"menuId\":18,\"type\":\"add\"},{\"menuId\":18,\"type\":\"edit\"},{\"menuId\":18,\"type\":\"remove\"},{\"menuId\":18,\"type\":\"removeBatch\"},{\"menuId\":19,\"type\":\"add\"},{\"menuId\":19,\"type\":\"edit\"},{\"menuId\":19,\"type\":\"remove\"},{\"menuId\":19,\"type\":\"removeBatch\"},{\"menuId\":20,\"type\":\"add\"},{\"menuId\":20,\"type\":\"edit\"},{\"menuId\":20,\"type\":\"remove\"},{\"menuId\":20,\"type\":\"removeBatch\"},{\"menuId\":11,\"type\":\"add\"},{\"menuId\":11,\"type\":\"edit\"},{\"menuId\":11,\"type\":\"remove\"},{\"menuId\":11,\"type\":\"removeBatch\"},{\"menuId\":5,\"type\":\"add\"},{\"menuId\":5,\"type\":\"edit\"},{\"menuId\":5,\"type\":\"remove\"},{\"menuId\":5,\"type\":\"removeBatch\"},{\"menuId\":2,\"type\":\"add\"},{\"menuId\":2,\"type\":\"edit\"},{\"menuId\":2,\"type\":\"remove\"},{\"menuId\":2,\"type\":\"removeBatch\"},{\"menuId\":13,\"type\":\"add\"},{\"menuId\":13,\"type\":\"edit\"},{\"menuId\":13,\"type\":\"remove\"},{\"menuId\":13,\"type\":\"removeBatch\"},{\"menuId\":14,\"type\":\"add\"},{\"menuId\":14,\"type\":\"edit\"},{\"menuId\":14,\"type\":\"remove\"},{\"menuId\":14,\"type\":\"removeBatch\"}]]', 'POST', 9477, '2023-01-27 23:00:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '按钮权限', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (149117460677, 'operate', 'admin', '管理员', '192.168.0.30', 'com.moxa.sooth.core.dict.controller.SysDictItemController.save', '/sooth/sys/dictItem/save', '[{\"dict\":{},\"dictId\":140960825093,\"name\":\"更多\",\"orderNo\":5.0,\"value\":\"MORE\"}]', 'POST', 224, '2023-01-27 23:12:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '字典项管理', '新增', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (149133181573, 'auth', 'admin', '管理员', '192.168.0.30', 'com.moxa.sooth.core.login.controller.LoginController.logout', '/sooth/sys/logout', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7e7ca68', 'GET', 6, '2023-01-27 23:16:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '系统认证', '退出', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (149133870597, 'auth', NULL, NULL, '192.168.0.30', 'com.moxa.sooth.core.login.controller.LoginController.login', '/sooth/sys/login', '[{\"captcha\":\"Aczh\",\"checkKey\":\"1674832606431\",\"password\":\"123456\",\"username\":\"test\"}]', 'POST', 220, '2023-01-27 23:16:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '系统认证', '登录', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (149139402821, 'auth', NULL, NULL, '192.168.0.30', 'com.moxa.sooth.core.login.controller.LoginController.login', '/sooth/sys/login', '[{\"captcha\":\"dicx\",\"checkKey\":\"1674832696310\",\"password\":\"123456\",\"username\":\"admin\"}]', 'POST', 130, '2023-01-27 23:18:23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 0, '系统认证', '登录', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (149157613509, 'auth', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.login.controller.LoginController.logout', '/sooth/sys/logout', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@106adc08', 'GET', 9, '2023-01-27 23:23:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '系统认证', '退出', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (149158333765, 'auth', NULL, NULL, '127.0.0.1', 'com.moxa.sooth.core.login.controller.LoginController.login', '/sooth/sys/login', '[{\"captcha\":\"lkue\",\"checkKey\":\"1674832988089\",\"password\":\"123456\",\"username\":\"test\"}]', 'POST', 319, '2023-01-27 23:23:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '系统认证', '登录', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (149165093765, 'auth', 'test', '测试员', '127.0.0.1', 'com.moxa.sooth.core.login.controller.LoginController.logout', '/sooth/sys/logout', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@20a22376', 'GET', 6, '2023-01-27 23:25:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 0, '系统认证', '退出', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (151428738181, 'auth', NULL, NULL, '192.168.0.30', 'com.moxa.sooth.core.login.controller.LoginController.login', '/sooth/sys/login', '[{\"captcha\":\"lcpv\",\"checkKey\":\"1674868468588\",\"password\":\"123456\",\"username\":\"admin\"}]', 'POST', 196, '2023-01-28 09:14:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '系统认证', '登录', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (152494372997, 'auth', NULL, NULL, '127.0.0.1', 'com.moxa.sooth.core.login.controller.LoginController.login', '/sooth/sys/login', '[{\"captcha\":\"49gj\",\"checkKey\":\"1674885112341\",\"password\":\"123456\",\"username\":\"admin\"}]', 'POST', 1423, '2023-01-28 13:52:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '系统认证', '登录', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (152733108101, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.button.controller.SysButtonController.saveButton', '/sooth/sys/button/saveButton/6', '[6,[\"add\",\"edit\",\"remove\",\"removeBatch\"]]', 'POST', 246, '2023-01-28 14:54:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '菜单按钮', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153138486341, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.button.controller.SysButtonController.saveButton', '/sooth/sys/button/saveButton/6', '[6,[\"add\",\"edit\",\"remove\"]]', 'POST', 127, '2023-01-28 16:39:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '菜单按钮', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153146899909, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.button.controller.SysButtonController.saveButton', '/sooth/sys/button/saveButton/6', '[6,[\"add\",\"edit\",\"remove\",\"removeBatch\"]]', 'POST', 238, '2023-01-28 16:42:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '菜单按钮', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153147522373, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.button.controller.SysButtonController.saveButton', '/sooth/sys/button/saveButton/6', '[6,[]]', 'POST', 317, '2023-01-28 16:42:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '菜单按钮', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153148881989, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.remove', '/sooth/sys/dictItem/remove', '  id: 149117446789', 'DELETE', 484, '2023-01-28 16:42:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '删除', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153150145797, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.button.controller.SysButtonController.saveButton', '/sooth/sys/button/saveButton/3', '[3,[\"add\",\"edit\",\"remove\",\"removeBatch\"]]', 'POST', 996, '2023-01-28 16:42:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '菜单按钮', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153150775621, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.button.controller.SysButtonController.saveButton', '/sooth/sys/button/saveButton/4', '[4,[\"add\",\"edit\",\"remove\",\"removeBatch\"]]', 'POST', 113, '2023-01-28 16:43:01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '菜单按钮', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153157089413, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.button.controller.SysButtonController.saveButton', '/sooth/sys/button/saveButton/3', '[3,[\"add\",\"edit\",\"remove\",\"removeBatch\"]]', 'POST', 39368, '2023-01-28 16:44:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '菜单按钮', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153162980165, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.button.controller.SysButtonController.saveButton', '/sooth/sys/button/saveButton/4', '[4,[\"add\",\"edit\",\"remove\",\"removeBatch\"]]', 'POST', 7225, '2023-01-28 16:46:04', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '菜单按钮', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153164492549, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.button.controller.SysButtonController.saveButton', '/sooth/sys/button/saveButton/22', '[22,[\"add\",\"edit\",\"remove\",\"removeBatch\"]]', 'POST', 366, '2023-01-28 16:46:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '菜单按钮', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153165069957, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.button.controller.SysButtonController.saveButton', '/sooth/sys/button/saveButton/5', '[5,[\"add\",\"edit\",\"remove\",\"removeBatch\"]]', 'POST', 335, '2023-01-28 16:46:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '菜单按钮', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153165870021, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.button.controller.SysButtonController.saveButton', '/sooth/sys/button/saveButton/22', '[22,[]]', 'POST', 118, '2023-01-28 16:46:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '菜单按钮', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153166396869, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.button.controller.SysButtonController.saveButton', '/sooth/sys/button/saveButton/2', '[2,[\"add\",\"edit\",\"remove\",\"removeBatch\"]]', 'POST', 149, '2023-01-28 16:47:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '菜单按钮', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153235161221, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.save', '/sooth/sys/dictItem/save', '[{\"dict\":{},\"dictId\":140960825093,\"name\":\"菜单权限\",\"orderNo\":5.0,\"value\":\"menu_permission\"}]', 'POST', 73, '2023-01-28 17:04:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '新增', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153236828613, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.save', '/sooth/sys/dictItem/save', '[{\"dict\":{},\"dictId\":140960825093,\"name\":\"按钮权限\",\"orderNo\":6.0,\"value\":\"button_permission\"}]', 'POST', 288, '2023-01-28 17:05:25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '新增', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153239158661, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.save', '/sooth/sys/dictItem/save', '[{\"description\":\"角色管理\",\"dict\":{},\"dictId\":140960825093,\"name\":\"数据权限\",\"orderNo\":7.0,\"value\":\"data_permission\"}]', 'POST', 164, '2023-01-28 17:06:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '新增', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153239638853, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.postEdit', '/sooth/sys/dictItem/edit', '[{\"description\":\"角色管理\",\"dict\":{},\"dictId\":140960825093,\"id\":153236810181,\"name\":\"按钮权限\",\"orderNo\":6.0,\"value\":\"button_permission\"}]', 'POST', 98, '2023-01-28 17:06:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '修改', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153239892997, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.postEdit', '/sooth/sys/dictItem/edit', '[{\"description\":\"角色管理\",\"dict\":{},\"dictId\":140960825093,\"id\":153235156869,\"name\":\"菜单权限\",\"orderNo\":5.0,\"value\":\"menu_permission\"}]', 'POST', 63, '2023-01-28 17:06:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '修改', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153240501253, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.postEdit', '/sooth/sys/dictItem/edit', '[{\"description\":\"通用\",\"dict\":{},\"dictId\":140960825093,\"id\":140966682309,\"name\":\"新增\",\"orderNo\":1.0,\"value\":\"add\"}]', 'POST', 131, '2023-01-28 17:06:23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '修改', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153240750917, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.postEdit', '/sooth/sys/dictItem/edit', '[{\"description\":\"通用\",\"dict\":{},\"dictId\":140960825093,\"id\":140963430661,\"name\":\"编辑\",\"orderNo\":2.0,\"value\":\"edit\"}]', 'POST', 163, '2023-01-28 17:06:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '修改', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153240977861, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.postEdit', '/sooth/sys/dictItem/edit', '[{\"description\":\"通用\",\"dict\":{},\"dictId\":140960825093,\"id\":140964512005,\"name\":\"删除\",\"orderNo\":3.0,\"value\":\"remove\"}]', 'POST', 67, '2023-01-28 17:06:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '修改', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153241251013, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.postEdit', '/sooth/sys/dictItem/edit', '[{\"description\":\"通用\",\"dict\":{},\"dictId\":140960825093,\"id\":140965814533,\"name\":\"批量删除\",\"orderNo\":4.0,\"value\":\"removeBatch\"}]', 'POST', 92, '2023-01-28 17:06:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '修改', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153366982533, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.button.controller.SysButtonController.saveButton', '/sooth/sys/button/saveButton/2', '[2,[\"add\",\"edit\",\"remove\",\"removeBatch\",\"menu_permission\",\"button_permission\",\"data_permission\"]]', 'POST', 165, '2023-01-28 17:39:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '菜单按钮', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153391925381, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.save', '/sooth/sys/dictItem/save', '[{\"dict\":{},\"dictId\":140960825093,\"name\":\"按钮配置\",\"orderNo\":5.0,\"value\":\"button_setting\"}]', 'POST', 711, '2023-01-28 17:45:48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '新增', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153392787845, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.postEdit', '/sooth/sys/dictItem/edit', '[{\"description\":\"菜单权限\",\"dict\":{},\"dictId\":140960825093,\"id\":153391879877,\"name\":\"按钮配置\",\"orderNo\":5.0,\"value\":\"button_setting\"}]', 'POST', 95, '2023-01-28 17:46:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '修改', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153395691269, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.save', '/sooth/sys/dictItem/save', '[{\"description\":\"菜单权限\",\"dict\":{},\"dictId\":140960825093,\"name\":\"添加下级\",\"orderNo\":5.0,\"value\":\"add_sub\"}]', 'POST', 285, '2023-01-28 17:46:47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '新增', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153396105093, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.postEdit', '/sooth/sys/dictItem/edit', '[{\"description\":\"角色管理\",\"dict\":{},\"dictId\":140960825093,\"id\":153236810181,\"name\":\"按钮权限\",\"orderNo\":5.0,\"value\":\"button_permission\"}]', 'POST', 73, '2023-01-28 17:46:54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '修改', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153396345669, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.postEdit', '/sooth/sys/dictItem/edit', '[{\"description\":\"角色管理\",\"dict\":{},\"dictId\":140960825093,\"id\":153239148101,\"name\":\"数据权限\",\"orderNo\":5.0,\"value\":\"data_permission\"}]', 'POST', 276, '2023-01-28 17:46:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '修改', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153405439301, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.remove', '/sooth/sys/dictItem/remove', '  id: 71576400517', 'DELETE', 64, '2023-01-28 17:49:20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '删除', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153405569861, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.remove', '/sooth/sys/dictItem/remove', '  id: 71577312965', 'DELETE', 50, '2023-01-28 17:49:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '删除', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153405700293, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.remove', '/sooth/sys/dictItem/remove', '  id: 71577946629', 'DELETE', 46, '2023-01-28 17:49:24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '删除', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153405886533, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictController.remove', '/sooth/sys/dict/remove', '  id: 71573949317', 'DELETE', 52, '2023-01-28 17:49:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典管理', '删除', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153406630021, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.remove', '/sooth/sys/dictItem/remove', '  id: 42110594629', 'DELETE', 47, '2023-01-28 17:49:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '删除', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153406830021, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.remove', '/sooth/sys/dictItem/remove', '  id: 42109878277', 'DELETE', 57, '2023-01-28 17:49:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '删除', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153407061573, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.remove', '/sooth/sys/dictItem/remove', '  id: 42109251653', 'DELETE', 50, '2023-01-28 17:49:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '删除', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153407298053, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictController.remove', '/sooth/sys/dict/remove', '  id: 42100008069', 'DELETE', 69, '2023-01-28 17:49:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典管理', '删除', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153462056965, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictController.save', '/sooth/sys/dict/save', '[{\"code\":\"whether\",\"dict\":{},\"name\":\"是否\"}]', 'POST', 265, '2023-01-28 18:04:04', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典管理', '新增', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153462967877, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.save', '/sooth/sys/dictItem/save', '[{\"dict\":{},\"dictId\":153462050245,\"name\":\"是\",\"orderNo\":1.0,\"value\":\"1\"}]', 'POST', 96, '2023-01-28 18:04:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '新增', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153463599813, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.save', '/sooth/sys/dictItem/save', '[{\"dict\":{},\"dictId\":153462050245,\"name\":\"否\",\"orderNo\":1.0,\"value\":\"0\"}]', 'POST', 86, '2023-01-28 18:04:29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '新增', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153464344965, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.dict.controller.SysDictItemController.postEdit', '/sooth/sys/dictItem/edit', '[{\"dict\":{},\"dictId\":153462050245,\"id\":153462962053,\"name\":\"是\",\"orderNo\":2.0,\"value\":\"1\"}]', 'POST', 54, '2023-01-28 18:04:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '字典项管理', '修改', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153723450885, 'auth', NULL, NULL, '127.0.0.1', 'com.moxa.sooth.core.login.controller.LoginController.login', '/sooth/sys/login', '[{\"captcha\":\"ytax\",\"checkKey\":\"1674904323542\",\"password\":\"123456\",\"username\":\"admin\"}]', 'POST', 160, '2023-01-28 19:12:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '系统认证', '登录', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (153976265541, 'auth', NULL, NULL, '127.0.0.1', 'com.moxa.sooth.core.login.controller.LoginController.login', '/sooth/sys/login', '[{\"captcha\":\"szyq\",\"checkKey\":\"1674908263095\",\"password\":\"123456\",\"username\":\"admin\"}]', 'POST', 835, '2023-01-28 20:17:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '系统认证', '登录', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (154331677573, 'auth', NULL, NULL, '127.0.0.1', 'com.moxa.sooth.core.login.controller.LoginController.login', '/sooth/sys/login', '[{\"captcha\":\"jjec\",\"checkKey\":\"1674913826017\",\"password\":\"123456\",\"username\":\"admin\"}]', 'POST', 141, '2023-01-28 21:50:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '系统认证', '登录', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (154352899397, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.buttonPermission.controller.SysButtonPermissionController.saveButtonPermission', '/sooth/sys/buttonPermission/saveButtonPermission/1', '[1,[153157080517,153157080518,153157080519,153162963205,153162963206,153162963207,153165063429,153165063430,153165063431,153166387781,153166387782,153166387783,153366975623,153366975621,153366975622]]', 'POST', 29845, '2023-01-28 21:55:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '按钮权限', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (154362149829, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.buttonPermission.controller.SysButtonPermissionController.saveButtonPermission', '/sooth/sys/buttonPermission/saveButtonPermission/1', '[1,[153157080517,153162963205,153165063429,153166387781]]', 'POST', 13530, '2023-01-28 21:58:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '按钮权限', '保存', NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (154363927173, 'operate', 'admin', '管理员', '127.0.0.1', 'com.moxa.sooth.core.buttonPermission.controller.SysButtonPermissionController.saveButtonPermission', '/sooth/sys/buttonPermission/saveButtonPermission/1', '[1,[153157080517,153157080518,153157080519,153162963205,153162963206,153162963207,153165063429,153165063430,153165063431,153166387781,153166387782,153166387783,153366975623,153366975621,153366975622]]', 'POST', 927, '2023-01-28 21:58:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70', 0, '按钮权限', '保存', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单标题',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件',
  `redirect` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '一级菜单跳转地址',
  `menu_type` int(11) NULL DEFAULT NULL COMMENT '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)',
  `sort_no` double(8, 2) NULL DEFAULT NULL COMMENT '菜单排序',
  `always_show` tinyint(1) NULL DEFAULT NULL COMMENT '聚合子路由: 1是0否',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `hidden` int(11) NULL DEFAULT 0 COMMENT '是否隐藏路由: 0否,1是',
  `hide_tab` int(11) NULL DEFAULT NULL COMMENT '是否隐藏tab: 0否,1是',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) NULL DEFAULT 0 COMMENT '删除状态 0正常 1已删除',
  `keep_alive` tinyint(1) NULL DEFAULT NULL COMMENT '缓存路由: 1是0否',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, NULL, '系统管理', '/system', 'layouts/default/index', '/system/user', 0, 2.00, 0, 'ant-design:setting', 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2022-12-20 23:27:32', 0, NULL);
INSERT INTO `sys_menu` VALUES (2, 22, '角色管理', '/privilege/role', 'privilege/role/index', NULL, 1, 2.00, 0, 'ant-design:solution', 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2023-01-13 21:35:23', NULL, 1);
INSERT INTO `sys_menu` VALUES (3, 1, '用户管理', '/system/user', 'system/user/index', NULL, 1, 1.00, 0, 'ant-design:user', 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2023-01-26 15:48:10', NULL, 1);
INSERT INTO `sys_menu` VALUES (4, 1, '部门管理', '/system/dept', 'system/dept/index', NULL, 1, 2.00, 0, 'ant-design:team', 0, 0, NULL, 'admin', '2019-01-29 18:47:40', 'admin', '2023-01-24 22:02:57', NULL, 1);
INSERT INTO `sys_menu` VALUES (5, 22, '菜单管理', '/privilege/menu', 'privilege/menu/index', NULL, 1, 1.00, 0, 'ant-design:menu-outlined', 0, 0, NULL, 'admin', '2019-09-08 15:00:05', 'admin', '2023-01-27 10:43:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (6, NULL, 'Dashboard', '/dashboard', 'layouts/default/index', '/dashboard/home', 0, 1.00, 0, 'ion:grid-outline', 0, 0, NULL, 'admin', '2021-09-15 19:51:23', 'admin', '2023-01-27 10:21:31', NULL, 0);
INSERT INTO `sys_menu` VALUES (8, 15, '数据字典', '/basic/dict', 'basic/dict/index', NULL, 1, 10.00, 0, 'ant-design:hdd-twotone', 0, 0, NULL, 'admin', '2021-09-17 16:31:27', 'admin', '2023-01-02 00:20:50', NULL, 1);
INSERT INTO `sys_menu` VALUES (9, NULL, '系统监控', '/monitor', 'layouts/default/index', NULL, 0, 5.00, 0, 'ant-design:video-camera-filled', 0, 0, NULL, 'admin', '2021-09-19 09:19:22', 'admin', '2022-12-20 23:27:52', 0, NULL);
INSERT INTO `sys_menu` VALUES (11, 16, '数据源管理', '/generate/datasource', 'generate/datasource/index', NULL, 1, 3.00, 0, 'ant-design:hdd-filled', 0, 0, NULL, 'admin', '2021-09-19 16:48:17', 'admin', '2023-01-13 22:19:14', NULL, 1);
INSERT INTO `sys_menu` VALUES (12, 15, '日志管理', '/basic/log', 'basic/log/index', NULL, 1, 5.00, 0, 'ant-design:interaction-outlined', 0, 0, NULL, 'admin', '2021-09-19 18:15:56', 'admin', '2023-01-15 15:00:17', NULL, 1);
INSERT INTO `sys_menu` VALUES (13, 9, '性能监控', '/monitor/server', 'monitor/server/index', NULL, 1, 9.00, 0, 'ant-design:thunderbolt-filled', 0, 0, NULL, 'admin', '2021-09-20 11:42:22', 'admin', '2023-01-02 00:20:10', NULL, 1);
INSERT INTO `sys_menu` VALUES (14, 9, 'Redis监控', '/monitor/redis', 'monitor/redis/index', NULL, 1, 10.00, 0, 'ant-design:trademark-outlined', 0, 0, NULL, 'admin', '2021-09-20 14:31:04', 'admin', '2023-01-02 00:20:17', NULL, 1);
INSERT INTO `sys_menu` VALUES (15, NULL, '基础管理', '/basic', 'layouts/default/index', NULL, 0, 3.00, 0, 'ant-design:android-outlined', 0, 0, NULL, 'admin', '2022-11-12 20:34:52', 'admin', '2022-12-20 23:27:39', 0, NULL);
INSERT INTO `sys_menu` VALUES (16, NULL, '代码生成器', '/generate', 'layouts/default/index', NULL, 0, 3.00, 0, 'ant-design:block-outlined', 0, 0, NULL, 'admin', '2022-11-18 20:22:43', 'admin', '2023-01-26 15:42:21', NULL, NULL);
INSERT INTO `sys_menu` VALUES (17, 16, '类型映射', '/generate/field-type', 'generate/field-type/index', NULL, 1, 1.00, 0, 'ant-design:gateway-outlined', 0, 0, NULL, 'admin', '2022-11-18 20:26:01', 'admin', '2023-01-12 08:52:09', NULL, 1);
INSERT INTO `sys_menu` VALUES (18, 16, '基类管理', '/generate/base-class', 'generate/base-class/index', NULL, 1, 1.00, 0, 'ant-design:flag-twotone', 0, 0, NULL, 'admin', '2022-11-18 20:29:20', 'admin', '2023-01-12 08:51:49', NULL, 1);
INSERT INTO `sys_menu` VALUES (19, 16, '代码生成', '/generate/code-gen', 'generate/code-gen/index', NULL, 1, 1.00, 0, 'ant-design:file-word-outlined', 0, 0, NULL, 'admin', '2022-11-18 20:30:52', 'admin', '2023-01-12 08:51:26', NULL, 1);
INSERT INTO `sys_menu` VALUES (20, 16, '模板配置', '/gen/template', 'generate/template/index', NULL, 1, 1.00, 0, 'ant-design:radius-setting-outlined', 0, 0, NULL, 'admin', '2022-11-29 21:24:46', 'admin', '2023-01-12 08:50:42', NULL, 1);
INSERT INTO `sys_menu` VALUES (21, 6, '首页', '/dashboard/home', 'dashboard/home/index', NULL, 1, 1.00, 1, 'ant-design:home-twotone', 0, 0, NULL, 'admin', '2022-12-20 23:12:49', 'admin', '2023-01-25 15:16:46', NULL, 1);
INSERT INTO `sys_menu` VALUES (22, NULL, '权限管理', '/privilege', 'layouts/default/index', '', 0, 4.00, 0, 'ant-design:property-safety-outlined', 0, 0, NULL, 'admin', '2023-01-13 20:47:59', 'admin', '2023-01-13 20:49:22', NULL, NULL);
INSERT INTO `sys_menu` VALUES (23, 1, '账户设置', '/system/setting', '/system/setting/index', NULL, 1, 10.00, 0, 'ant-design:user-switch-outlined', 1, 0, NULL, 'admin', '2023-01-13 23:47:22', 'admin', '2023-01-26 15:50:00', NULL, 1);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `role_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色编码',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门id',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', 'admin', 42083908293, '管理员', NULL, '2018-12-21 18:03:39', 'admin', '2023-01-19 20:56:45');
INSERT INTO `sys_role` VALUES (131517140997, '测试员', 'test', 42202626373, NULL, 'admin', '2023-01-24 18:49:15', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
  `id` bigint(20) NOT NULL,
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色id',
  `permission_id` bigint(20) NULL DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES (71181784837, 1, 1);
INSERT INTO `sys_role_permission` VALUES (71181784839, 1, 2);
INSERT INTO `sys_role_permission` VALUES (71181784838, 1, 3);
INSERT INTO `sys_role_permission` VALUES (71181784840, 1, 4);
INSERT INTO `sys_role_permission` VALUES (71181784852, 1, 5);
INSERT INTO `sys_role_permission` VALUES (71181784773, 1, 6);
INSERT INTO `sys_role_permission` VALUES (71181784845, 1, 8);
INSERT INTO `sys_role_permission` VALUES (71181784853, 1, 9);
INSERT INTO `sys_role_permission` VALUES (71181784843, 1, 11);
INSERT INTO `sys_role_permission` VALUES (71181784844, 1, 12);
INSERT INTO `sys_role_permission` VALUES (71181784854, 1, 13);
INSERT INTO `sys_role_permission` VALUES (71181784855, 1, 14);
INSERT INTO `sys_role_permission` VALUES (71181784841, 1, 15);
INSERT INTO `sys_role_permission` VALUES (71181784846, 1, 16);
INSERT INTO `sys_role_permission` VALUES (71181784847, 1, 17);
INSERT INTO `sys_role_permission` VALUES (71181784848, 1, 18);
INSERT INTO `sys_role_permission` VALUES (71181784849, 1, 19);
INSERT INTO `sys_role_permission` VALUES (71181784850, 1, 20);
INSERT INTO `sys_role_permission` VALUES (71181784774, 1, 21);
INSERT INTO `sys_role_permission` VALUES (71181784851, 1, 22);
INSERT INTO `sys_role_permission` VALUES (71199952453, 1, 23);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录账号',
  `realname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `sex` tinyint(1) NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `del_flag` tinyint(1) NULL DEFAULT NULL COMMENT '删除状态(0-正常,1-已删除)',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '管理员', '$2a$10$GK123CZgMaU2HQXFJGM46Or3EcQyZktQm6xeN1rR548Zvb/KA6QPG', '', 0, '13913814981', 0, NULL, '2019-06-21 17:54:10', 'admin', '2023-01-21 09:52:25');
INSERT INTO `sys_user` VALUES (85465348741, 'test', '测试员', '$2a$10$Wm4Op/aI30y5DhhZ6vHrluc09JeoMysgU83URfH0kJLh4UOJ2UDyK', NULL, 1, NULL, 0, 'admin', '2023-01-16 10:56:36', 'test', '2023-01-24 19:26:07');

-- ----------------------------
-- Table structure for sys_user_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_dept`;
CREATE TABLE `sys_user_dept`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户部门表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_dept
-- ----------------------------
INSERT INTO `sys_user_dept` VALUES (62826415877, 1, 1);
INSERT INTO `sys_user_dept` VALUES (62824114501, 1, 42083908293);
INSERT INTO `sys_user_dept` VALUES (85465353221, 85465348741, 42202626373);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (8613065349, 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
