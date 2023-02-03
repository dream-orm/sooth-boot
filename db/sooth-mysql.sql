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

 Date: 03/02/2023 23:09:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_base_class
-- ----------------------------
DROP TABLE IF EXISTS `gen_base_class`;
CREATE TABLE `gen_base_class`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `class_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '基类全类名',
  `fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '基类字段，多个用英文逗号分隔',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基类管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for gen_field_type
-- ----------------------------
DROP TABLE IF EXISTS `gen_field_type`;
CREATE TABLE `gen_field_type`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `column_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段类型',
  `attr_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字段类型管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_field_type
-- ----------------------------
INSERT INTO `gen_field_type` VALUES (-16, 'LONGNVARCHAR', 'String');
INSERT INTO `gen_field_type` VALUES (-15, 'NCHAR', 'String');
INSERT INTO `gen_field_type` VALUES (-9, 'NVARCHAR', 'String');
INSERT INTO `gen_field_type` VALUES (-8, 'ROWID', 'Object');
INSERT INTO `gen_field_type` VALUES (-7, 'BIT', 'Byte');
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
  `id` bigint(20) NOT NULL COMMENT 'id',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表名',
  `class_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类名',
  `table_comment` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '说明',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (159475879045, 'gen_base_class', 'GenBaseClass', '基类管理', '2023-01-29 20:10:11', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (159475880581, 'gen_field_type', 'GenFieldType', '字段类型管理', '2023-01-29 20:10:11', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (159475882309, 'gen_table', 'GenTable', '代码生成表', '2023-01-29 20:10:11', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (159475884165, 'gen_table_field', 'GenTableField', '代码生成表字段', '2023-01-29 20:10:11', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (159475885957, 'gen_template', 'GenTemplate', '模板配置', '2023-01-29 20:10:11', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (159475887493, 'gen_template_group', 'GenTemplateGroup', '模板配置组', '2023-01-29 20:10:11', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (159475888837, 'sys_button', 'SysButton', '角色权限表', '2023-01-29 20:10:11', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (159475890245, 'sys_button_permission', 'SysButtonPermission', '角色权限表', '2023-01-29 20:10:11', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (159475891845, 'sys_data_permission', 'SysDataPermission', '角色权限表', '2023-01-29 20:10:11', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (159475894213, 'sys_data_source', 'SysDataSource', NULL, '2023-01-29 20:10:11', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (159475896325, 'sys_dept', 'SysDept', '组织机构表', '2023-01-29 20:10:11', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (159475897797, 'sys_dict', 'SysDict', NULL, '2023-01-29 20:10:11', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (159475899461, 'sys_dict_item', 'SysDictItem', NULL, '2023-01-29 20:10:11', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (159475900997, 'sys_log', 'SysLog', '系统日志表', '2023-01-29 20:10:11', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (159475902661, 'sys_menu', 'SysMenu', '菜单权限表', '2023-01-29 20:10:11', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (159475904261, 'sys_role', 'SysRole', '角色表', '2023-01-29 20:10:11', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (159475905669, 'sys_role_permission', 'SysRolePermission', '角色权限表', '2023-01-29 20:10:11', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (159475907205, 'sys_user', 'SysUser', '用户表', '2023-01-29 20:10:11', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (159475908485, 'sys_user_dept', 'SysUserDept', '用户部门表', '2023-01-29 20:10:11', NULL, 'admin', NULL);
INSERT INTO `gen_table` VALUES (159475909893, 'sys_user_role', 'SysUserRole', '用户角色表', '2023-01-29 20:10:11', NULL, 'admin', NULL);

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
  `order_no` int(11) NULL DEFAULT NULL COMMENT '排序',
  `primary_pk` smallint(6) NULL DEFAULT NULL COMMENT '主键 0：否  1：是',
  `base_field` smallint(6) NULL DEFAULT NULL COMMENT '基类字段 0：否  1：是',
  `type_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段类型名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成表字段' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_table_field
-- ----------------------------
INSERT INTO `gen_table_field` VALUES (159475879237, 159475879045, 'id', -5, 'id', 'id', 'Long', NULL, 1, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475879238, 159475879045, 'class_name', 12, '基类全类名', 'className', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475879239, 159475879045, 'fields', 12, '基类字段，多个用英文逗号分隔', 'fields', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475879240, 159475879045, 'create_time', 93, '创建时间', 'createTime', 'java.util.Date', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475879241, 159475879045, 'update_time', 93, '创建时间', 'updateTime', 'java.util.Date', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475879242, 159475879045, 'create_by', 12, '创建人', 'createBy', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475879243, 159475879045, 'update_by', 12, '更新人', 'updateBy', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475880709, 159475880581, 'id', -5, 'id', 'id', 'Long', NULL, 1, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475880710, 159475880581, 'column_type', 12, '字段类型', 'columnType', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475880711, 159475880581, 'attr_type', 12, '属性类型', 'attrType', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475882373, 159475882309, 'id', -5, 'id', 'id', 'Long', NULL, 1, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475882374, 159475882309, 'table_name', 12, '表名', 'tableName', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475882375, 159475882309, 'class_name', 12, '类名', 'className', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475882376, 159475882309, 'table_comment', 12, '说明', 'tableComment', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475882377, 159475882309, 'author', 12, '作者', 'author', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475882378, 159475882309, 'email', 12, '邮箱', 'email', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475882379, 159475882309, 'package_name', 12, '项目包名', 'packageName', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475882380, 159475882309, 'version', 12, '项目版本号', 'version', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475882381, 159475882309, 'generator_type', 5, '生成方式  0：zip压缩包   1：自定义目录', 'generatorType', 'Short', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475882382, 159475882309, 'backend_path', 12, '后端生成路径', 'backendPath', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475882383, 159475882309, 'frontend_path', 12, '前端生成路径', 'frontendPath', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475882384, 159475882309, 'module_name', 12, '模块名', 'moduleName', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475882385, 159475882309, 'function_name', 12, '功能名', 'functionName', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475882386, 159475882309, 'form_layout', 5, '表单布局  1：一列   2：两列', 'formLayout', 'Short', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475882387, 159475882309, 'datasource_id', -5, '数据源ID', 'datasourceId', 'Long', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475882388, 159475882309, 'baseclass_id', -5, '基类ID', 'baseclassId', 'Long', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475882389, 159475882309, 'create_time', 93, '创建时间', 'createTime', 'java.util.Date', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475882390, 159475882309, 'update_time', 93, '创建时间', 'updateTime', 'java.util.Date', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475882391, 159475882309, 'create_by', 12, '创建人', 'createBy', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475882392, 159475882309, 'update_by', 12, '更新人', 'updateBy', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884293, 159475884165, 'id', -5, 'id', 'id', 'Long', NULL, 1, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884294, 159475884165, 'table_id', -5, '表ID', 'tableId', 'Long', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884295, 159475884165, 'column_name', 12, '字段名称', 'columnName', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884296, 159475884165, 'column_type', 4, '字段类型', 'columnType', 'Integer', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884297, 159475884165, 'column_comment', 12, '字段说明', 'columnComment', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884298, 159475884165, 'attr_name', 12, '属性名', 'attrName', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884299, 159475884165, 'attr_type', 12, '属性类型', 'attrType', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884300, 159475884165, 'package_name', 12, '属性包名', 'packageName', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884301, 159475884165, 'sort', 4, '排序', 'sort', 'Integer', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884302, 159475884165, 'auto_fill', 12, '自动填充  DEFAULT、INSERT、UPDATE、INSERT_UPDATE', 'autoFill', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884303, 159475884165, 'primary_pk', 5, '主键 0：否  1：是', 'primaryPk', 'Short', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884304, 159475884165, 'base_field', 5, '基类字段 0：否  1：是', 'baseField', 'Short', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884305, 159475884165, 'form_item', 5, '表单项 0：否  1：是', 'formItem', 'Short', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884306, 159475884165, 'form_required', 5, '表单必填 0：否  1：是', 'formRequired', 'Short', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884307, 159475884165, 'form_type', 12, '表单类型', 'formType', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884308, 159475884165, 'form_dict', 12, '表单字典类型', 'formDict', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884309, 159475884165, 'form_validator', 12, '表单效验', 'formValidator', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884310, 159475884165, 'grid_item', 5, '列表项 0：否  1：是', 'gridItem', 'Short', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884311, 159475884165, 'grid_sort', 5, '列表排序 0：否  1：是', 'gridSort', 'Short', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884312, 159475884165, 'query_item', 5, '查询项 0：否  1：是', 'queryItem', 'Short', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884313, 159475884165, 'query_type', 12, '查询方式', 'queryType', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884314, 159475884165, 'query_form_type', 12, '查询表单类型', 'queryFormType', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884315, 159475884165, 'query_dict', 12, '查询字典类型', 'queryDict', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475884316, 159475884165, 'type_name', 12, '字段类型名称', 'typeName', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475886085, 159475885957, 'id', -5, 'id', 'id', 'Long', NULL, 1, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475886086, 159475885957, 'name', 12, '表名', 'name', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475886087, 159475885957, 'content', 12, NULL, 'content', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475886088, 159475885957, 'create_time', 93, '创建时间', 'createTime', 'java.util.Date', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475886089, 159475885957, 'update_by', 12, '更新人登录名称', 'updateBy', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475886090, 159475885957, 'update_time', 93, '更新日期', 'updateTime', 'java.util.Date', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475886091, 159475885957, 'create_by', 12, '创建人登录名称', 'createBy', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475886092, 159475885957, 'group_id', -5, '分组id', 'groupId', 'Long', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475886093, 159475885957, 'valid_status', 5, '有效状态', 'validStatus', 'Short', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475887557, 159475887493, 'id', -5, 'id', 'id', 'Long', NULL, 1, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475887558, 159475887493, 'name', 12, '表名', 'name', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475888901, 159475888837, 'id', -5, NULL, 'id', 'Long', NULL, 1, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475888902, 159475888837, 'menu_id', -5, '菜单id', 'menuId', 'Long', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475888903, 159475888837, 'type', 12, '按钮权限类型', 'type', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475890373, 159475890245, 'id', -5, NULL, 'id', 'Long', NULL, 1, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475890374, 159475890245, 'button_id', -5, '按钮id', 'buttonId', 'Long', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475890375, 159475890245, 'role_id', -5, '角色id', 'roleId', 'Long', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475891973, 159475891845, 'id', -5, NULL, 'id', 'Long', NULL, 1, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475891974, 159475891845, 'permission_code', 4, '权限', 'permissionCode', 'Integer', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475891975, 159475891845, 'dept_ids', 12, '指定部门', 'deptIds', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475891976, 159475891845, 'role_id', -5, '角色id', 'roleId', 'Long', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475894789, 159475894213, 'id', -5, NULL, 'id', 'Long', NULL, 1, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475894790, 159475894213, 'name', 12, '数据源名称', 'name', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475894791, 159475894213, 'description', 12, '描述', 'description', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475894792, 159475894213, 'url', 12, '数据源地址', 'url', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475894793, 159475894213, 'username', 12, '用户名', 'username', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475894794, 159475894213, 'password', 12, '密码', 'password', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475894795, 159475894213, 'create_by', 12, '创建人', 'createBy', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475894796, 159475894213, 'create_time', 93, '创建日期', 'createTime', 'java.util.Date', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475894797, 159475894213, 'update_by', 12, '更新人', 'updateBy', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475894798, 159475894213, 'update_time', 93, '更新日期', 'updateTime', 'java.util.Date', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475896389, 159475896325, 'dept_id', -5, 'ID', 'deptId', 'Long', NULL, 1, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475896390, 159475896325, 'parent_id', -5, '父机构ID', 'parentId', 'Long', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475896391, 159475896325, 'dept_name', 12, '机构/部门名称', 'deptName', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475896392, 159475896325, 'dept_code', 12, '机构/部门编码', 'deptCode', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475896393, 159475896325, 'order_no', 8, '排序', 'orderNo', 'Double', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475896394, 159475896325, 'description', 12, '描述', 'description', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475896395, 159475896325, 'status', 4, '状态（1启用，0不启用）', 'status', 'Integer', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475896396, 159475896325, 'del_flag', 4, '删除状态（0，正常，1已删除）', 'delFlag', 'Integer', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475896397, 159475896325, 'create_by', 12, '创建人', 'createBy', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475896398, 159475896325, 'create_time', 93, '创建日期', 'createTime', 'java.util.Date', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475896399, 159475896325, 'update_by', 12, '更新人', 'updateBy', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475896400, 159475896325, 'update_time', 93, '更新日期', 'updateTime', 'java.util.Date', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475897989, 159475897797, 'id', -5, NULL, 'id', 'Long', NULL, 1, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475897990, 159475897797, 'name', 12, '字典名称', 'name', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475897991, 159475897797, 'code', 12, '字典编码', 'code', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475897992, 159475897797, 'description', 12, '描述', 'description', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475897993, 159475897797, 'del_flag', 4, '删除状态', 'delFlag', 'Integer', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475897994, 159475897797, 'create_by', 12, '创建人', 'createBy', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475897995, 159475897797, 'create_time', 93, '创建时间', 'createTime', 'java.util.Date', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475897996, 159475897797, 'update_by', 12, '更新人', 'updateBy', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475897997, 159475897797, 'update_time', 93, '更新时间', 'updateTime', 'java.util.Date', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475897998, 159475897797, 'type', 4, '字典类型0为string,1为number', 'type', 'Integer', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475899589, 159475899461, 'id', -5, NULL, 'id', 'Long', NULL, 1, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475899590, 159475899461, 'dict_id', -5, '字典id', 'dictId', 'Long', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475899591, 159475899461, 'name', 12, '字典项文本', 'name', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475899592, 159475899461, 'value', 12, '字典项值', 'value', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475899593, 159475899461, 'description', 12, '描述', 'description', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475899594, 159475899461, 'order_no', 8, '排序', 'orderNo', 'Double', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475901189, 159475900997, 'id', -5, NULL, 'id', 'Long', NULL, 1, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475901190, 159475900997, 'log_type', 12, '日志类型', 'logType', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475901191, 159475900997, 'username', 12, '操作用户账号', 'username', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475901192, 159475900997, 'realname', 12, '操作用户名称', 'realname', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475901193, 159475900997, 'ip', 12, 'IP', 'ip', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475901194, 159475900997, 'method', 12, '请求java方法', 'method', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475901195, 159475900997, 'request_url', 12, '请求路径', 'requestUrl', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475901196, 159475900997, 'request_param', 12, '请求参数', 'requestParam', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475901197, 159475900997, 'request_type', 12, '请求类型', 'requestType', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475901198, 159475900997, 'cost_time', -5, '耗时', 'costTime', 'Long', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475901199, 159475900997, 'create_time', 93, '创建时间', 'createTime', 'java.util.Date', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475901200, 159475900997, 'user_agent', 12, '浏览器', 'userAgent', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475901201, 159475900997, 'status', 4, '状态', 'status', 'Integer', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475901202, 159475900997, 'biz_module', 12, '业务模块', 'bizModule', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475901203, 159475900997, 'description', 12, '操作描述', 'description', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475901204, 159475900997, 'message', 12, '错误信息', 'message', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475901205, 159475900997, 'exception_class', 12, '异常类', 'exceptionClass', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475901206, 159475900997, 'stack_trace', 12, '详尽异常', 'stackTrace', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475902789, 159475902661, 'id', -5, '主键id', 'id', 'Long', NULL, 1, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475902790, 159475902661, 'parent_id', -5, '父id', 'parentId', 'Long', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475902791, 159475902661, 'name', 12, '菜单标题', 'name', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475902792, 159475902661, 'url', 12, '路径', 'url', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475902793, 159475902661, 'component', 12, '组件', 'component', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475902794, 159475902661, 'redirect', 12, '一级菜单跳转地址', 'redirect', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475902795, 159475902661, 'menu_type', 4, '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)', 'menuType', 'Integer', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475902796, 159475902661, 'sort_no', 8, '菜单排序', 'sortNo', 'Double', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475902797, 159475902661, 'always_show', 5, '聚合子路由: 1是0否', 'alwaysShow', 'Short', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475902798, 159475902661, 'icon', 12, '菜单图标', 'icon', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475902799, 159475902661, 'hidden', 4, '是否隐藏路由: 0否,1是', 'hidden', 'Integer', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475902800, 159475902661, 'hide_tab', 4, '是否隐藏tab: 0否,1是', 'hideTab', 'Integer', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475902801, 159475902661, 'description', 12, '描述', 'description', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475902802, 159475902661, 'create_by', 12, '创建人', 'createBy', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475902803, 159475902661, 'create_time', 93, '创建时间', 'createTime', 'java.util.Date', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475902804, 159475902661, 'update_by', 12, '更新人', 'updateBy', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475902805, 159475902661, 'update_time', 93, '更新时间', 'updateTime', 'java.util.Date', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475902806, 159475902661, 'del_flag', 4, '删除状态 0正常 1已删除', 'delFlag', 'Integer', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475902807, 159475902661, 'keep_alive', 5, '缓存路由: 1是0否', 'keepAlive', 'Short', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475904453, 159475904261, 'id', -5, '主键id', 'id', 'Long', NULL, 1, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475904454, 159475904261, 'role_name', 12, '角色名称', 'roleName', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475904455, 159475904261, 'role_code', 12, '角色编码', 'roleCode', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475904456, 159475904261, 'dept_id', -5, '部门id', 'deptId', 'Long', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475904457, 159475904261, 'description', 12, '描述', 'description', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475904458, 159475904261, 'create_by', 12, '创建人', 'createBy', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475904459, 159475904261, 'create_time', 93, '创建时间', 'createTime', 'java.util.Date', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475904460, 159475904261, 'update_by', 12, '更新人', 'updateBy', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475904461, 159475904261, 'update_time', 93, '更新时间', 'updateTime', 'java.util.Date', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475905797, 159475905669, 'id', -5, NULL, 'id', 'Long', NULL, 1, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475905798, 159475905669, 'role_id', -5, '角色id', 'roleId', 'Long', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475905799, 159475905669, 'permission_id', -5, '权限id', 'permissionId', 'Long', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475907333, 159475907205, 'id', -5, '主键id', 'id', 'Long', NULL, 1, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475907334, 159475907205, 'username', 12, '登录账号', 'username', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475907335, 159475907205, 'realname', 12, '真实姓名', 'realname', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475907336, 159475907205, 'password', 12, '密码', 'password', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475907337, 159475907205, 'avatar', 12, '头像', 'avatar', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475907338, 159475907205, 'sex', 5, '性别', 'sex', 'Short', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475907339, 159475907205, 'phone', 12, '电话', 'phone', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475907340, 159475907205, 'del_flag', 5, '删除状态(0-正常,1-已删除)', 'delFlag', 'Short', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475907341, 159475907205, 'create_by', 12, '创建人', 'createBy', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475907342, 159475907205, 'create_time', 93, '创建时间', 'createTime', 'java.util.Date', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475907343, 159475907205, 'update_by', 12, '更新人', 'updateBy', 'String', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475907344, 159475907205, 'update_time', 93, '更新时间', 'updateTime', 'java.util.Date', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475908613, 159475908485, 'id', -5, '主键id', 'id', 'Long', NULL, 1, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475908614, 159475908485, 'user_id', -5, '用户id', 'userId', 'Long', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475908615, 159475908485, 'dept_id', -5, '部门id', 'deptId', 'Long', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475910021, 159475909893, 'id', -5, '主键id', 'id', 'Long', NULL, 1, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475910022, 159475909893, 'user_id', -5, '用户id', 'userId', 'Long', NULL, 0, 0, NULL);
INSERT INTO `gen_table_field` VALUES (159475910023, 159475909893, 'role_id', -5, '角色id', 'roleId', 'Long', NULL, 0, 0, NULL);

-- ----------------------------
-- Table structure for gen_template
-- ----------------------------
DROP TABLE IF EXISTS `gen_template`;
CREATE TABLE `gen_template`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模板名称',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `create_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `group_id` bigint(20) NULL DEFAULT NULL COMMENT '分组id',
  `file_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模板文件名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '模板配置' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_template
-- ----------------------------
INSERT INTO `gen_template` VALUES (362832993636357, 'table', 'package ${packageName}.${moduleName}.${entityName}.table;\n\nimport lombok.Data;\n\n/**\n * @Description: ${tableComment}\n * @Author: ${author}\n * @Date:   ${.now?string[\"yyyy-MM-dd\"]}\n */\n@Data\n@Table(\"${tableName}\")\npublic class ${className} {\n\n    <#list columns as column>\n/**${column.columnComment}*/\n    <#if column.primaryPk>\n    @Id\n    </#if>\n   @Column(value=\"${column.columnName}\",jdbcType=java.sql.Types.${column.columnType})\n    private ${column.attrType} ${column.attrName};\n</#list>\n}', '2022-12-11 08:31:15', 'admin', '2023-02-03 22:18:03', NULL, 82324589637, '${className}.java');

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
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '按钮权限类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色权限表' ROW_FORMAT = Compact;

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
INSERT INTO `sys_button` VALUES (159925289733, 3, 'remove_batch');
INSERT INTO `sys_button` VALUES (173652824133, 5, 'remove_batch');
INSERT INTO `sys_button` VALUES (173652824134, 5, 'button_setting');
INSERT INTO `sys_button` VALUES (173652824135, 5, 'add_sub');
INSERT INTO `sys_button` VALUES (173653609605, 4, 'remove_batch');
INSERT INTO `sys_button` VALUES (173664974213, 8, 'add');
INSERT INTO `sys_button` VALUES (173664974214, 8, 'edit');
INSERT INTO `sys_button` VALUES (173664974215, 8, 'remove');
INSERT INTO `sys_button` VALUES (173664974216, 8, 'remove_batch');
INSERT INTO `sys_button` VALUES (178966814853, 20, 'add');
INSERT INTO `sys_button` VALUES (178966814854, 20, 'edit');
INSERT INTO `sys_button` VALUES (178966814855, 20, 'remove');
INSERT INTO `sys_button` VALUES (178966814856, 20, 'remove_batch');
INSERT INTO `sys_button` VALUES (178967663493, 17, 'edit');
INSERT INTO `sys_button` VALUES (178968322373, 18, 'add');
INSERT INTO `sys_button` VALUES (178968322374, 18, 'edit');
INSERT INTO `sys_button` VALUES (178968322375, 18, 'remove');
INSERT INTO `sys_button` VALUES (178968322376, 18, 'remove_batch');
INSERT INTO `sys_button` VALUES (178969028229, 19, 'add');
INSERT INTO `sys_button` VALUES (178969028230, 19, 'edit');
INSERT INTO `sys_button` VALUES (178969028231, 19, 'remove');
INSERT INTO `sys_button` VALUES (178969028232, 19, 'remove_batch');
INSERT INTO `sys_button` VALUES (178969766725, 11, 'add');
INSERT INTO `sys_button` VALUES (178969766726, 11, 'edit');
INSERT INTO `sys_button` VALUES (178969766727, 11, 'remove');
INSERT INTO `sys_button` VALUES (178969766728, 11, 'remove_batch');
INSERT INTO `sys_button` VALUES (179002517125, 19, 'import');
INSERT INTO `sys_button` VALUES (179002517126, 19, 'generate');
INSERT INTO `sys_button` VALUES (179002517127, 19, 'sync');
INSERT INTO `sys_button` VALUES (187263535685, 2, 'remove_batch');

-- ----------------------------
-- Table structure for sys_button_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_button_permission`;
CREATE TABLE `sys_button_permission`  (
  `id` bigint(20) NOT NULL,
  `button_id` bigint(20) NULL DEFAULT NULL COMMENT '按钮id',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_button_permission
-- ----------------------------
INSERT INTO `sys_button_permission` VALUES (187264810757, 153157080517, 1);
INSERT INTO `sys_button_permission` VALUES (187264810758, 153157080518, 1);
INSERT INTO `sys_button_permission` VALUES (187264810759, 153157080519, 1);
INSERT INTO `sys_button_permission` VALUES (187264810760, 159925289733, 1);
INSERT INTO `sys_button_permission` VALUES (187264810761, 153162963205, 1);
INSERT INTO `sys_button_permission` VALUES (187264810762, 153162963206, 1);
INSERT INTO `sys_button_permission` VALUES (187264810763, 153162963207, 1);
INSERT INTO `sys_button_permission` VALUES (187264810764, 173653609605, 1);
INSERT INTO `sys_button_permission` VALUES (187264810765, 173664974213, 1);
INSERT INTO `sys_button_permission` VALUES (187264810766, 173664974214, 1);
INSERT INTO `sys_button_permission` VALUES (187264810767, 173664974215, 1);
INSERT INTO `sys_button_permission` VALUES (187264810768, 173664974216, 1);
INSERT INTO `sys_button_permission` VALUES (187264810769, 178966814853, 1);
INSERT INTO `sys_button_permission` VALUES (187264810770, 178966814854, 1);
INSERT INTO `sys_button_permission` VALUES (187264810771, 178966814855, 1);
INSERT INTO `sys_button_permission` VALUES (187264810772, 178966814856, 1);
INSERT INTO `sys_button_permission` VALUES (187264810773, 178967663493, 1);
INSERT INTO `sys_button_permission` VALUES (187264810774, 178968322373, 1);
INSERT INTO `sys_button_permission` VALUES (187264810775, 178968322374, 1);
INSERT INTO `sys_button_permission` VALUES (187264810776, 178968322375, 1);
INSERT INTO `sys_button_permission` VALUES (187264810777, 178968322376, 1);
INSERT INTO `sys_button_permission` VALUES (187264810778, 178969028229, 1);
INSERT INTO `sys_button_permission` VALUES (187264810779, 178969028230, 1);
INSERT INTO `sys_button_permission` VALUES (187264810780, 178969028231, 1);
INSERT INTO `sys_button_permission` VALUES (187264810781, 179002517125, 1);
INSERT INTO `sys_button_permission` VALUES (187264810782, 178969028232, 1);
INSERT INTO `sys_button_permission` VALUES (187264810783, 179002517126, 1);
INSERT INTO `sys_button_permission` VALUES (187264810784, 179002517127, 1);
INSERT INTO `sys_button_permission` VALUES (187264810785, 178969766725, 1);
INSERT INTO `sys_button_permission` VALUES (187264810786, 178969766726, 1);
INSERT INTO `sys_button_permission` VALUES (187264810787, 178969766727, 1);
INSERT INTO `sys_button_permission` VALUES (187264810788, 178969766728, 1);
INSERT INTO `sys_button_permission` VALUES (187264810789, 153165063429, 1);
INSERT INTO `sys_button_permission` VALUES (187264810790, 153165063430, 1);
INSERT INTO `sys_button_permission` VALUES (187264810791, 153165063431, 1);
INSERT INTO `sys_button_permission` VALUES (187264810792, 173652824133, 1);
INSERT INTO `sys_button_permission` VALUES (187264810793, 173652824134, 1);
INSERT INTO `sys_button_permission` VALUES (187264810794, 173652824135, 1);
INSERT INTO `sys_button_permission` VALUES (187264810795, 153166387781, 1);
INSERT INTO `sys_button_permission` VALUES (187264810796, 153166387782, 1);
INSERT INTO `sys_button_permission` VALUES (187264810797, 153166387783, 1);
INSERT INTO `sys_button_permission` VALUES (187264810798, 153366975621, 1);
INSERT INTO `sys_button_permission` VALUES (187264810799, 153366975622, 1);
INSERT INTO `sys_button_permission` VALUES (187264810800, 153366975623, 1);
INSERT INTO `sys_button_permission` VALUES (187264810801, 187263535685, 1);

-- ----------------------------
-- Table structure for sys_data_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_permission`;
CREATE TABLE `sys_data_permission`  (
  `id` bigint(20) NOT NULL,
  `permission_code` int(11) NULL DEFAULT NULL COMMENT '权限',
  `dept_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '指定部门',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色权限表' ROW_FORMAT = Compact;

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
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '数据源地址',
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_data_source
-- ----------------------------
INSERT INTO `sys_data_source` VALUES (87734678533, 'mysql基础数据源', NULL, 'jdbc:mysql://192.168.0.3/sooth?useUnicode=true&characterEncoding=utf-8&allowMultiQueries=true&useAffectedRows=true&zeroDateTimeBehavior=convertToNull&serverTimezone=Asia/Shanghai', 'root', '6d95f0648637a3895996ce82aeb6e157', 'admin', '2023-01-16 20:47:34', 'admin', '2023-01-29 20:00:51');
INSERT INTO `sys_data_source` VALUES (93397288581, 'localhost数据源', NULL, 'jdbc:mysql://127.0.0.1:3306/sooth?characterEncoding=UTF-8&useUnicode=true&useSSL=false&tinyInt1isBit=false&allowPublicKeyRetrieval=true&serverTimezone=Asia/Shanghai', 'root', '443967e8cfda5646d4f3e044f7a18704', 'admin', '2023-01-17 21:22:12', NULL, NULL);
INSERT INTO `sys_data_source` VALUES (159443767877, 'pg数据源', NULL, 'jdbc:postgresql://192.168.0.194:5432/sooth', 'postgres', '443967e8cfda5646d4f3e044f7a18704', 'admin', '2023-01-29 20:01:49', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL COMMENT 'ID',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父机构ID',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '机构/部门名称',
  `dept_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '机构/部门编码',
  `order_no` double NULL DEFAULT NULL COMMENT '排序',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '描述',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态（1启用，0不启用）',
  `del_flag` int(11) NULL DEFAULT NULL COMMENT '删除状态（0，正常，1已删除）',
  `create_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '组织机构表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, NULL, '研发部', '01', 1, '', NULL, NULL, 'admin', '2023-01-02 00:40:23', 'admin', '2023-02-03 19:40:17');
INSERT INTO `sys_dept` VALUES (42083908293, 1, '中台研发部', '0101', 1, '', 0, NULL, 'admin', '2023-01-08 14:39:21', NULL, NULL);
INSERT INTO `sys_dept` VALUES (42089689925, NULL, '产品部', '02', 2, NULL, NULL, NULL, 'admin', '2023-01-08 14:40:51', 'admin', '2023-02-03 19:40:21');
INSERT INTO `sys_dept` VALUES (42202626373, NULL, '测试部', '03', 3, NULL, 0, NULL, 'admin', '2023-01-08 15:10:16', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典名称',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典编码',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `del_flag` int(11) NULL DEFAULT NULL COMMENT '删除状态',
  `create_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `type` int(11) NULL DEFAULT NULL COMMENT '字典类型0为string,1为number',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

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
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典项文本',
  `value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典项值',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `order_no` double NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

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
INSERT INTO `sys_dict_item` VALUES (178905837061, 140960825093, '角色用户', 'role_user', '角色权限', 6);
INSERT INTO `sys_dict_item` VALUES (178986906693, 140960825093, '导入', 'import', '通用', 4);
INSERT INTO `sys_dict_item` VALUES (178989785861, 140960825093, '导出', 'export', '通用', 4);
INSERT INTO `sys_dict_item` VALUES (178991094853, 140960825093, '同步', 'sync', '', 5);
INSERT INTO `sys_dict_item` VALUES (178992321221, 140960825093, '生成', 'generate', '', 5);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint(20) NOT NULL,
  `log_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志类型',
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作用户账号',
  `realname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作用户名称',
  `ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'IP',
  `method` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '请求java方法',
  `request_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求路径',
  `request_param` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '请求参数',
  `request_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求类型',
  `cost_time` bigint(20) NULL DEFAULT NULL COMMENT '耗时',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `user_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '浏览器',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  `biz_module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务模块',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作描述',
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '错误信息',
  `exception_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '异常类',
  `stack_trace` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '详尽异常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单标题',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路径',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件',
  `redirect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '一级菜单跳转地址',
  `menu_type` int(11) NULL DEFAULT NULL COMMENT '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)',
  `sort_no` double NULL DEFAULT NULL COMMENT '菜单排序',
  `fixed_tab` smallint(6) NULL DEFAULT NULL COMMENT '聚合子路由: 1是0否',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `hidden` int(11) NULL DEFAULT NULL COMMENT '是否隐藏路由: 0否,1是',
  `hide_tab` int(11) NULL DEFAULT NULL COMMENT '是否隐藏tab: 0否,1是',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) NULL DEFAULT NULL COMMENT '删除状态 0正常 1已删除',
  `keep_alive` smallint(6) NULL DEFAULT NULL COMMENT '缓存路由: 1是0否',
  `component_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, NULL, '系统管理', '/system', 'layouts/default/index', '/system/user', 0, 2, 0, 'ant-design:setting', 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2022-12-20 23:27:32', 0, NULL, 'system');
INSERT INTO `sys_menu` VALUES (2, 22, '角色管理', '/privilege/role', 'privilege/role/index', NULL, 1, 2, 0, 'ant-design:solution', 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2023-01-13 21:35:23', NULL, 1, 'privilege-role');
INSERT INTO `sys_menu` VALUES (3, 1, '用户管理', '/system/user', 'system/user/index', NULL, 1, 1, 0, 'ant-design:user', 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2023-02-02 00:09:56', NULL, 1, 'system-user');
INSERT INTO `sys_menu` VALUES (4, 1, '部门管理', '/system/dept', 'system/dept/index', NULL, 1, 2, 0, 'ant-design:team', 0, 0, NULL, 'admin', '2019-01-29 18:47:40', 'admin', '2023-01-29 22:07:03', NULL, 1, 'system-dept');
INSERT INTO `sys_menu` VALUES (5, 22, '菜单管理', '/privilege/menu', 'privilege/menu/index', NULL, 1, 1, 0, 'ant-design:menu-outlined', 0, 0, NULL, 'admin', '2019-09-08 15:00:05', 'admin', '2023-01-27 10:43:27', NULL, 1, 'privilege-menu');
INSERT INTO `sys_menu` VALUES (6, NULL, 'Dashboard', '/dashboard', 'layouts/default/index', '/dashboard/home', 0, 1, 0, 'ion:grid-outline', 0, 0, NULL, 'admin', '2021-09-15 19:51:23', 'admin', '2023-01-27 10:21:31', NULL, 0, 'dashboard');
INSERT INTO `sys_menu` VALUES (8, 15, '数据字典', '/basic/dict', 'basic/dict/index', NULL, 1, 10, 0, 'ant-design:hdd-twotone', 0, 0, NULL, 'admin', '2021-09-17 16:31:27', 'admin', '2023-01-02 00:20:50', NULL, 1, 'basic-dict');
INSERT INTO `sys_menu` VALUES (9, NULL, '系统监控', '/monitor', 'layouts/default/index', NULL, 0, 5, 0, 'ant-design:video-camera-filled', 0, 0, NULL, 'admin', '2021-09-19 09:19:22', 'admin', '2022-12-20 23:27:52', 0, NULL, 'monitor');
INSERT INTO `sys_menu` VALUES (11, 16, '数据源管理', '/generate/datasource', 'generate/datasource/index', NULL, 1, 3, 0, 'ant-design:hdd-filled', 0, 0, NULL, 'admin', '2021-09-19 16:48:17', 'admin', '2023-01-13 22:19:14', NULL, 1, 'generate-datasource');
INSERT INTO `sys_menu` VALUES (12, 15, '日志管理', '/basic/log', 'basic/log/index', NULL, 1, 5, 0, 'ant-design:interaction-outlined', 0, 0, NULL, 'admin', '2021-09-19 18:15:56', 'admin', '2023-01-15 15:00:17', NULL, 1, 'basic-log');
INSERT INTO `sys_menu` VALUES (13, 9, '性能监控', '/monitor/server', 'monitor/server/index', NULL, 1, 9, 0, 'ant-design:thunderbolt-filled', 0, 0, NULL, 'admin', '2021-09-20 11:42:22', 'admin', '2023-01-02 00:20:10', NULL, 1, 'monitor-server');
INSERT INTO `sys_menu` VALUES (14, 9, 'Redis监控', '/monitor/redis', 'monitor/redis/index', NULL, 1, 10, 0, 'ant-design:trademark-outlined', 0, 0, NULL, 'admin', '2021-09-20 14:31:04', 'admin', '2023-01-02 00:20:17', NULL, 1, 'monitor-redis');
INSERT INTO `sys_menu` VALUES (15, NULL, '基础管理', '/basic', 'layouts/default/index', NULL, 0, 3, 0, 'ant-design:android-outlined', 0, 0, NULL, 'admin', '2022-11-12 20:34:52', 'admin', '2022-12-20 23:27:39', 0, NULL, 'basic');
INSERT INTO `sys_menu` VALUES (16, NULL, '代码生成器', '/generate', 'layouts/default/index', NULL, 0, 3, 0, 'ant-design:block-outlined', 0, 0, NULL, 'admin', '2022-11-18 20:22:43', 'admin', '2023-01-26 15:42:21', NULL, NULL, 'generate');
INSERT INTO `sys_menu` VALUES (17, 16, '类型映射', '/generate/field-type', 'generate/field-type/index', NULL, 1, 1, 0, 'ant-design:gateway-outlined', 0, 0, NULL, 'admin', '2022-11-18 20:26:01', 'admin', '2023-01-12 08:52:09', NULL, 1, 'generate-field-type');
INSERT INTO `sys_menu` VALUES (18, 16, '基类管理', '/generate/base-class', 'generate/base-class/index', NULL, 1, 1, 0, 'ant-design:flag-twotone', 0, 0, NULL, 'admin', '2022-11-18 20:29:20', 'admin', '2023-01-12 08:51:49', NULL, 1, 'generate-base-class');
INSERT INTO `sys_menu` VALUES (19, 16, '代码生成', '/generate/code-gen', 'generate/code-gen/index', NULL, 1, 1, 0, 'ant-design:file-word-outlined', 0, 0, NULL, 'admin', '2022-11-18 20:30:52', 'admin', '2023-01-12 08:51:26', NULL, 1, 'generate-code-gen');
INSERT INTO `sys_menu` VALUES (20, 16, '模板配置', '/generate/template', 'generate/template/index', NULL, 1, 1, 0, 'ant-design:radius-setting-outlined', 0, 0, NULL, 'admin', '2022-11-29 21:24:46', 'admin', '2023-01-12 08:50:42', NULL, 1, 'generate-template');
INSERT INTO `sys_menu` VALUES (21, 6, '首页', '/dashboard/home', 'dashboard/home/index', NULL, 1, 1, 1, 'ant-design:home-twotone', 0, 0, NULL, 'admin', '2022-12-20 23:12:49', 'admin', '2023-01-25 15:16:46', NULL, 1, 'dashboard-home');
INSERT INTO `sys_menu` VALUES (22, NULL, '权限管理', '/privilege', 'layouts/default/index', '', 0, 4, 0, 'ant-design:property-safety-outlined', 0, 0, NULL, 'admin', '2023-01-13 20:47:59', 'admin', '2023-01-13 20:49:22', NULL, NULL, 'privilege');
INSERT INTO `sys_menu` VALUES (23, 1, '账户设置', '/system/setting', '/system/setting/index', NULL, 1, 10, 0, 'ant-design:user-switch-outlined', 1, 0, NULL, 'admin', '2023-01-13 23:47:22', 'admin', '2023-01-26 15:50:00', NULL, 1, 'system-setting');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `role_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色编码',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门id',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', 'admin', 42083908293, '管理员', NULL, '2018-12-21 18:03:39', 'admin', '2023-01-29 22:07:24');
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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES (71181784773, 1, 6);
INSERT INTO `sys_role_permission` VALUES (71181784774, 1, 21);
INSERT INTO `sys_role_permission` VALUES (71181784837, 1, 1);
INSERT INTO `sys_role_permission` VALUES (71181784838, 1, 3);
INSERT INTO `sys_role_permission` VALUES (71181784839, 1, 2);
INSERT INTO `sys_role_permission` VALUES (71181784840, 1, 4);
INSERT INTO `sys_role_permission` VALUES (71181784841, 1, 15);
INSERT INTO `sys_role_permission` VALUES (71181784843, 1, 11);
INSERT INTO `sys_role_permission` VALUES (71181784844, 1, 12);
INSERT INTO `sys_role_permission` VALUES (71181784845, 1, 8);
INSERT INTO `sys_role_permission` VALUES (71181784846, 1, 16);
INSERT INTO `sys_role_permission` VALUES (71181784847, 1, 17);
INSERT INTO `sys_role_permission` VALUES (71181784848, 1, 18);
INSERT INTO `sys_role_permission` VALUES (71181784849, 1, 19);
INSERT INTO `sys_role_permission` VALUES (71181784850, 1, 20);
INSERT INTO `sys_role_permission` VALUES (71181784851, 1, 22);
INSERT INTO `sys_role_permission` VALUES (71181784852, 1, 5);
INSERT INTO `sys_role_permission` VALUES (71181784853, 1, 9);
INSERT INTO `sys_role_permission` VALUES (71181784854, 1, 13);
INSERT INTO `sys_role_permission` VALUES (71181784855, 1, 14);
INSERT INTO `sys_role_permission` VALUES (71199952453, 1, 23);
INSERT INTO `sys_role_permission` VALUES (162361300613, 131517140997, 6);
INSERT INTO `sys_role_permission` VALUES (162361300614, 131517140997, 21);
INSERT INTO `sys_role_permission` VALUES (162361300615, 131517140997, 1);
INSERT INTO `sys_role_permission` VALUES (162361300616, 131517140997, 3);
INSERT INTO `sys_role_permission` VALUES (162361300617, 131517140997, 4);
INSERT INTO `sys_role_permission` VALUES (162361300618, 131517140997, 23);
INSERT INTO `sys_role_permission` VALUES (162361300619, 131517140997, 16);
INSERT INTO `sys_role_permission` VALUES (162361300620, 131517140997, 18);
INSERT INTO `sys_role_permission` VALUES (162361300621, 131517140997, 19);
INSERT INTO `sys_role_permission` VALUES (162361300622, 131517140997, 17);
INSERT INTO `sys_role_permission` VALUES (162361300623, 131517140997, 20);
INSERT INTO `sys_role_permission` VALUES (162361300624, 131517140997, 11);
INSERT INTO `sys_role_permission` VALUES (162361300625, 131517140997, 15);
INSERT INTO `sys_role_permission` VALUES (162361300626, 131517140997, 12);
INSERT INTO `sys_role_permission` VALUES (162361300627, 131517140997, 8);
INSERT INTO `sys_role_permission` VALUES (162361300628, 131517140997, 22);
INSERT INTO `sys_role_permission` VALUES (162361300629, 131517140997, 5);
INSERT INTO `sys_role_permission` VALUES (162361300630, 131517140997, 2);
INSERT INTO `sys_role_permission` VALUES (162361300631, 131517140997, 9);
INSERT INTO `sys_role_permission` VALUES (162361300632, 131517140997, 13);
INSERT INTO `sys_role_permission` VALUES (162361300633, 131517140997, 14);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录账号',
  `realname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `sex` smallint(6) NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话',
  `del_flag` smallint(6) NULL DEFAULT NULL COMMENT '删除状态(0-正常,1-已删除)',
  `create_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '管理员', '$2a$10$GK123CZgMaU2HQXFJGM46Or3EcQyZktQm6xeN1rR548Zvb/KA6QPG', '', 0, '', 0, NULL, '2019-06-21 17:54:10', 'admin', '2023-02-03 22:13:25');
INSERT INTO `sys_user` VALUES (85465348741, 'test', '测试员', '$2a$10$Wm4Op/aI30y5DhhZ6vHrluc09JeoMysgU83URfH0kJLh4UOJ2UDyK', NULL, 0, NULL, 0, 'admin', '2023-01-16 10:56:36', 'admin', '2023-02-03 22:05:28');

-- ----------------------------
-- Table structure for sys_user_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_dept`;
CREATE TABLE `sys_user_dept`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户部门表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_dept
-- ----------------------------
INSERT INTO `sys_user_dept` VALUES (62824114501, 1, 42083908293);
INSERT INTO `sys_user_dept` VALUES (62826415877, 1, 1);
INSERT INTO `sys_user_dept` VALUES (85465353221, 85465348741, 42202626373);
INSERT INTO `sys_user_dept` VALUES (187168267781, 187168267525, 42089689925);
INSERT INTO `sys_user_dept` VALUES (187197395589, 187197391941, 42089689925);
INSERT INTO `sys_user_dept` VALUES (187235881541, 187235864901, 42089689925);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (8613065349, 1, 1);
INSERT INTO `sys_user_role` VALUES (169315988677, 85465348741, 131517140997);
INSERT INTO `sys_user_role` VALUES (187168267653, 187168267525, 131517140997);
INSERT INTO `sys_user_role` VALUES (187197394437, 187197391941, 131517140997);
INSERT INTO `sys_user_role` VALUES (187235878725, 187235864901, 131517140997);

SET FOREIGN_KEY_CHECKS = 1;
