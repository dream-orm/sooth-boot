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

 Date: 23/02/2023 23:16:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_base_class
-- ----------------------------
DROP TABLE IF EXISTS `gen_base_class`;
CREATE TABLE `gen_base_class`
(
    `id`          bigint(20)                                                    NOT NULL COMMENT 'id',
    `class_name`  varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '基类全类名',
    `fields`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '基类字段，多个用英文逗号分隔',
    `create_time` datetime(0)                                                   NULL DEFAULT NULL COMMENT '创建时间',
    `update_time` datetime(0)                                                   NULL DEFAULT NULL COMMENT '创建时间',
    `create_by`   varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '创建人',
    `update_by`   varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '更新人',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '基类管理'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_base_class
-- ----------------------------
INSERT INTO `gen_base_class`
VALUES (192027676293, 'com.moxa.sooth.core.base.entity.BaseEntity', 'createBy,createTime,updateBy,updateTime',
        '2023-02-04 17:27:12', NULL, 'admin', NULL);

-- ----------------------------
-- Table structure for gen_field_type
-- ----------------------------
DROP TABLE IF EXISTS `gen_field_type`;
CREATE TABLE `gen_field_type`
(
    `id`          bigint(20)                                                    NOT NULL COMMENT 'id',
    `column_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段类型',
    `attr_type`   varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性类型',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '字段类型管理'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_field_type
-- ----------------------------
INSERT INTO `gen_field_type`
VALUES (-16, 'LONGNVARCHAR', 'String');
INSERT INTO `gen_field_type`
VALUES (-15, 'NCHAR', 'String');
INSERT INTO `gen_field_type`
VALUES (-9, 'NVARCHAR', 'String');
INSERT INTO `gen_field_type`
VALUES (-8, 'ROWID', 'Object');
INSERT INTO `gen_field_type`
VALUES (-7, 'BIT', 'Byte');
INSERT INTO `gen_field_type`
VALUES (-6, 'TINYINT', 'Byte');
INSERT INTO `gen_field_type`
VALUES (-5, 'BIGINT', 'Long');
INSERT INTO `gen_field_type`
VALUES (-4, 'LONGVARBINARY', 'Byte[]');
INSERT INTO `gen_field_type`
VALUES (-3, 'VARBINARY', 'Byte[]');
INSERT INTO `gen_field_type`
VALUES (-2, 'BINARY', 'Byte[]');
INSERT INTO `gen_field_type`
VALUES (-1, 'LONGVARCHAR', 'String');
INSERT INTO `gen_field_type`
VALUES (0, 'NULL', 'Object');
INSERT INTO `gen_field_type`
VALUES (1, 'CHAR', 'String');
INSERT INTO `gen_field_type`
VALUES (2, 'NUMERIC', 'java.math.BigDecimal');
INSERT INTO `gen_field_type`
VALUES (3, 'DECIMAL', 'java.math.BigDecimal');
INSERT INTO `gen_field_type`
VALUES (4, 'INTEGER', 'Integer');
INSERT INTO `gen_field_type`
VALUES (5, 'SMALLINT', 'Short');
INSERT INTO `gen_field_type`
VALUES (6, 'FLOAT', 'Float');
INSERT INTO `gen_field_type`
VALUES (7, 'REAL', 'Float');
INSERT INTO `gen_field_type`
VALUES (8, 'DOUBLE', 'Double');
INSERT INTO `gen_field_type`
VALUES (12, 'VARCHAR', 'String');
INSERT INTO `gen_field_type`
VALUES (16, 'BOOLEAN', 'Boolean');
INSERT INTO `gen_field_type`
VALUES (70, 'DATALINK', 'Object');
INSERT INTO `gen_field_type`
VALUES (91, 'DATE', 'java.util.Date');
INSERT INTO `gen_field_type`
VALUES (92, 'TIME', 'java.sql.Time');
INSERT INTO `gen_field_type`
VALUES (93, 'TIMESTAMP', 'java.util.Date');
INSERT INTO `gen_field_type`
VALUES (1111, 'OTHER', 'Object');
INSERT INTO `gen_field_type`
VALUES (2000, 'JAVA_OBJECT', 'Object');
INSERT INTO `gen_field_type`
VALUES (2001, 'DISTINCT', 'Object');
INSERT INTO `gen_field_type`
VALUES (2002, 'STRUCT', 'Object');
INSERT INTO `gen_field_type`
VALUES (2003, 'ARRAY', 'Object');
INSERT INTO `gen_field_type`
VALUES (2004, 'BLOB', 'java.io.InputStream');
INSERT INTO `gen_field_type`
VALUES (2005, 'CLOB', 'String');
INSERT INTO `gen_field_type`
VALUES (2006, 'REF', 'Object');
INSERT INTO `gen_field_type`
VALUES (2009, 'SQLXML', 'Object');
INSERT INTO `gen_field_type`
VALUES (2011, 'NCLOB', 'String');
INSERT INTO `gen_field_type`
VALUES (2012, 'REF_CURSOR', 'Object');
INSERT INTO `gen_field_type`
VALUES (2013, 'TIME_WITH_TIMEZONE', 'Object');
INSERT INTO `gen_field_type`
VALUES (2014, 'TIMESTAMP_WITH_TIMEZONE', 'Object');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`
(
    `id`            bigint(20)                                                    NOT NULL COMMENT 'id',
    `table_name`    varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表名',
    `class_name`    varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类名',
    `table_comment` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '说明',
    `create_time`   datetime(0)                                                   NULL DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime(0)                                                   NULL DEFAULT NULL COMMENT '创建时间',
    `create_by`     varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '创建人',
    `update_by`     varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '更新人',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '代码生成表'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table`
VALUES (190414497349, 'sys_menu', 'SysMenu', '菜单权限表', '2023-02-04 10:27:07', NULL, 'admin', NULL);
INSERT INTO `gen_table`
VALUES (197384943109, 'gen_base_class', 'GenBaseClass', '基类管理', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `gen_table`
VALUES (197384947013, 'gen_field_type', 'GenFieldType', '字段类型管理', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `gen_table`
VALUES (197384948549, 'gen_table', 'GenTable', '代码生成表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `gen_table`
VALUES (197384950085, 'gen_table_field', 'GenTableField', '代码生成表字段', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `gen_table`
VALUES (197384952389, 'gen_template', 'GenTemplate', '模板配置', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `gen_table`
VALUES (197384953477, 'gen_template_group', 'GenTemplateGroup', '模板配置组', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `gen_table`
VALUES (197384954501, 'sys_button', 'SysButton', '角色权限表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `gen_table`
VALUES (197384955717, 'sys_button_permission', 'SysButtonPermission', '角色权限表', '2023-02-05 16:42:20', NULL, 'admin',
        NULL);
INSERT INTO `gen_table`
VALUES (197384956805, 'sys_data_permission', 'SysDataPermission', '角色权限表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `gen_table`
VALUES (197384958021, 'sys_data_source', 'SysDataSource', NULL, '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `gen_table`
VALUES (197384959493, 'sys_dept', 'SysDept', '组织机构表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `gen_table`
VALUES (197384960965, 'sys_dict', 'SysDict', NULL, '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `gen_table`
VALUES (197384962373, 'sys_dict_item', 'SysDictItem', NULL, '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `gen_table`
VALUES (197384963717, 'sys_log', 'SysLog', '系统日志表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `gen_table`
VALUES (197384966149, 'sys_role', 'SysRole', '角色表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `gen_table`
VALUES (197384967493, 'sys_role_permission', 'SysRolePermission', '角色权限表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `gen_table`
VALUES (197384968837, 'sys_user', 'SysUser', '用户表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `gen_table`
VALUES (197384970053, 'sys_user_dept', 'SysUserDept', '用户部门表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `gen_table`
VALUES (197384971205, 'sys_user_role', 'SysUserRole', '用户角色表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `gen_table`
VALUES (274868828933, 'sys_quartz', 'SysQuartz', '定时任务', '2023-02-19 17:00:25', NULL, 'admin', NULL);

-- ----------------------------
-- Table structure for gen_table_field
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_field`;
CREATE TABLE `gen_table_field`
(
    `id`             bigint(20)                                                    NOT NULL COMMENT 'id',
    `table_id`       bigint(20)                                                    NULL DEFAULT NULL COMMENT '表ID',
    `column_name`    varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段名称',
    `column_type`    varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段类型',
    `column_comment` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段说明',
    `attr_name`      varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性名',
    `attr_type`      varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性类型',
    `order_no`       int(11)                                                       NULL DEFAULT NULL COMMENT '排序',
    `primary_pk`     smallint(6)                                                   NULL DEFAULT NULL COMMENT '主键 0：否  1：是',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '代码生成表字段'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_table_field
-- ----------------------------
INSERT INTO `gen_table_field`
VALUES (190414499013, 190414497349, 'id', 'BIGINT', '主键id', 'id', 'Long', NULL, 1);
INSERT INTO `gen_table_field`
VALUES (190414499014, 190414497349, 'parent_id', 'BIGINT', '父id', 'parentId', 'Long', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (190414499015, 190414497349, 'name', 'VARCHAR', '菜单标题', 'name', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (190414499016, 190414497349, 'url', 'VARCHAR', '路径', 'url', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (190414499017, 190414497349, 'component', 'VARCHAR', '组件', 'component', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (190414499018, 190414497349, 'redirect', 'VARCHAR', '一级菜单跳转地址', 'redirect', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (190414499019, 190414497349, 'menu_type', 'INTEGER', '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)', 'menuType', 'Integer', NULL,
        0);
INSERT INTO `gen_table_field`
VALUES (190414499020, 190414497349, 'sort_no', 'DOUBLE', '菜单排序', 'sortNo', 'Double', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (190414499021, 190414497349, 'fixed_tab', 'SMALLINT', '聚合子路由: 1是0否', 'fixedTab', 'Short', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (190414499022, 190414497349, 'icon', 'VARCHAR', '菜单图标', 'icon', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (190414499023, 190414497349, 'hidden', 'INTEGER', '是否隐藏路由: 0否,1是', 'hidden', 'Integer', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (190414499024, 190414497349, 'hide_tab', 'INTEGER', '是否隐藏tab: 0否,1是', 'hideTab', 'Integer', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (190414499025, 190414497349, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (190414499026, 190414497349, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (190414499027, 190414497349, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (190414499028, 190414497349, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (190414499029, 190414497349, 'update_time', 'TIMESTAMP', '更新时间', 'updateTime', 'java.util.Date', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (190414499030, 190414497349, 'del_flag', 'INTEGER', '删除状态 0正常 1已删除', 'delFlag', 'Integer', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (190414499031, 190414497349, 'keep_alive', 'SMALLINT', '缓存路由: 1是0否', 'keepAlive', 'Short', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (190414499032, 190414497349, 'component_name', 'VARCHAR', '组件名称', 'componentName', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384944133, 197384943109, 'id', 'BIGINT', 'id', 'id', 'Long', NULL, 1);
INSERT INTO `gen_table_field`
VALUES (197384944134, 197384943109, 'class_name', 'VARCHAR', '基类全类名', 'className', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384944135, 197384943109, 'fields', 'VARCHAR', '基类字段，多个用英文逗号分隔', 'fields', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384944136, 197384943109, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384944137, 197384943109, 'update_time', 'TIMESTAMP', '创建时间', 'updateTime', 'java.util.Date', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384944138, 197384943109, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384944139, 197384943109, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384947333, 197384947013, 'id', 'BIGINT', 'id', 'id', 'Long', NULL, 1);
INSERT INTO `gen_table_field`
VALUES (197384947334, 197384947013, 'column_type', 'VARCHAR', '字段类型', 'columnType', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384947335, 197384947013, 'attr_type', 'VARCHAR', '属性类型', 'attrType', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384948933, 197384948549, 'id', 'BIGINT', 'id', 'id', 'Long', NULL, 1);
INSERT INTO `gen_table_field`
VALUES (197384948934, 197384948549, 'table_name', 'VARCHAR', '表名', 'tableName', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384948935, 197384948549, 'class_name', 'VARCHAR', '类名', 'className', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384948936, 197384948549, 'table_comment', 'VARCHAR', '说明', 'tableComment', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384948937, 197384948549, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384948938, 197384948549, 'update_time', 'TIMESTAMP', '创建时间', 'updateTime', 'java.util.Date', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384948939, 197384948549, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384948940, 197384948549, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384950213, 197384950085, 'id', 'BIGINT', 'id', 'id', 'Long', NULL, 1);
INSERT INTO `gen_table_field`
VALUES (197384950214, 197384950085, 'table_id', 'BIGINT', '表ID', 'tableId', 'Long', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384950215, 197384950085, 'column_name', 'VARCHAR', '字段名称', 'columnName', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384950216, 197384950085, 'column_type', 'VARCHAR', '字段类型', 'columnType', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384950217, 197384950085, 'column_comment', 'VARCHAR', '字段说明', 'columnComment', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384950218, 197384950085, 'attr_name', 'VARCHAR', '属性名', 'attrName', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384950219, 197384950085, 'attr_type', 'VARCHAR', '属性类型', 'attrType', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384950220, 197384950085, 'order_no', 'INTEGER', '排序', 'orderNo', 'Integer', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384950221, 197384950085, 'primary_pk', 'SMALLINT', '主键 0：否  1：是', 'primaryPk', 'Short', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384952517, 197384952389, 'id', 'BIGINT', 'id', 'id', 'Long', NULL, 1);
INSERT INTO `gen_table_field`
VALUES (197384952518, 197384952389, 'name', 'VARCHAR', '模板名称', 'name', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384952519, 197384952389, 'content', 'VARCHAR', NULL, 'content', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384952520, 197384952389, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384952521, 197384952389, 'update_by', 'VARCHAR', '更新人登录名称', 'updateBy', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384952522, 197384952389, 'update_time', 'TIMESTAMP', '更新日期', 'updateTime', 'java.util.Date', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384952523, 197384952389, 'create_by', 'VARCHAR', '创建人登录名称', 'createBy', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384952524, 197384952389, 'group_id', 'BIGINT', '分组id', 'groupId', 'Long', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384952525, 197384952389, 'file_name', 'VARCHAR', '模板文件名', 'fileName', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384953541, 197384953477, 'id', 'BIGINT', 'id', 'id', 'Long', NULL, 1);
INSERT INTO `gen_table_field`
VALUES (197384953542, 197384953477, 'name', 'VARCHAR', '表名', 'name', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384954629, 197384954501, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1);
INSERT INTO `gen_table_field`
VALUES (197384954630, 197384954501, 'menu_id', 'BIGINT', '菜单id', 'menuId', 'Long', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384954631, 197384954501, 'type', 'VARCHAR', '按钮权限类型', 'type', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384955845, 197384955717, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1);
INSERT INTO `gen_table_field`
VALUES (197384955846, 197384955717, 'button_id', 'BIGINT', '按钮id', 'buttonId', 'Long', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384955847, 197384955717, 'role_id', 'BIGINT', '角色id', 'roleId', 'Long', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384956869, 197384956805, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1);
INSERT INTO `gen_table_field`
VALUES (197384956870, 197384956805, 'permission_code', 'INTEGER', '权限', 'permissionCode', 'Integer', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384956871, 197384956805, 'dept_ids', 'VARCHAR', '指定部门', 'deptIds', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384956872, 197384956805, 'role_id', 'BIGINT', '角色id', 'roleId', 'Long', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384958213, 197384958021, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1);
INSERT INTO `gen_table_field`
VALUES (197384958214, 197384958021, 'name', 'VARCHAR', '数据源名称', 'name', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384958215, 197384958021, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384958216, 197384958021, 'url', 'VARCHAR', '数据源地址', 'url', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384958217, 197384958021, 'username', 'VARCHAR', '用户名', 'username', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384958218, 197384958021, 'password', 'VARCHAR', '密码', 'password', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384958219, 197384958021, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384958220, 197384958021, 'create_time', 'TIMESTAMP', '创建日期', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384958221, 197384958021, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384958222, 197384958021, 'update_time', 'TIMESTAMP', '更新日期', 'updateTime', 'java.util.Date', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384959685, 197384959493, 'dept_id', 'BIGINT', 'ID', 'deptId', 'Long', NULL, 1);
INSERT INTO `gen_table_field`
VALUES (197384959686, 197384959493, 'parent_id', 'BIGINT', '父机构ID', 'parentId', 'Long', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384959687, 197384959493, 'dept_name', 'VARCHAR', '机构/部门名称', 'deptName', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384959688, 197384959493, 'dept_code', 'VARCHAR', '机构/部门编码', 'deptCode', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384959689, 197384959493, 'order_no', 'DOUBLE', '排序', 'orderNo', 'Double', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384959690, 197384959493, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384959691, 197384959493, 'status', 'INTEGER', '状态（1启用，0不启用）', 'status', 'Integer', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384959692, 197384959493, 'del_flag', 'INTEGER', '删除状态（0，正常，1已删除）', 'delFlag', 'Integer', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384959693, 197384959493, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384959694, 197384959493, 'create_time', 'TIMESTAMP', '创建日期', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384959695, 197384959493, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384959696, 197384959493, 'update_time', 'TIMESTAMP', '更新日期', 'updateTime', 'java.util.Date', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384961093, 197384960965, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1);
INSERT INTO `gen_table_field`
VALUES (197384961094, 197384960965, 'name', 'VARCHAR', '字典名称', 'name', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384961095, 197384960965, 'code', 'VARCHAR', '字典编码', 'code', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384961096, 197384960965, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384961097, 197384960965, 'del_flag', 'INTEGER', '删除状态', 'delFlag', 'Integer', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384961098, 197384960965, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384961099, 197384960965, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384961157, 197384960965, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384961158, 197384960965, 'update_time', 'TIMESTAMP', '更新时间', 'updateTime', 'java.util.Date', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384961159, 197384960965, 'type', 'INTEGER', '字典类型0为string,1为number', 'type', 'Integer', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384962501, 197384962373, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1);
INSERT INTO `gen_table_field`
VALUES (197384962502, 197384962373, 'dict_id', 'BIGINT', '字典id', 'dictId', 'Long', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384962503, 197384962373, 'name', 'VARCHAR', '字典项文本', 'name', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384962504, 197384962373, 'value', 'VARCHAR', '字典项值', 'value', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384962505, 197384962373, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384962506, 197384962373, 'order_no', 'DOUBLE', '排序', 'orderNo', 'Double', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384963909, 197384963717, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1);
INSERT INTO `gen_table_field`
VALUES (197384963910, 197384963717, 'log_type', 'VARCHAR', '日志类型', 'logType', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384963911, 197384963717, 'username', 'VARCHAR', '操作用户账号', 'username', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384963912, 197384963717, 'realname', 'VARCHAR', '操作用户名称', 'realname', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384963913, 197384963717, 'ip', 'VARCHAR', 'IP', 'ip', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384963914, 197384963717, 'method', 'VARCHAR', '请求java方法', 'method', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384963915, 197384963717, 'request_url', 'VARCHAR', '请求路径', 'requestUrl', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384963916, 197384963717, 'request_param', 'VARCHAR', '请求参数', 'requestParam', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384963917, 197384963717, 'request_type', 'VARCHAR', '请求类型', 'requestType', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384963918, 197384963717, 'cost_time', 'BIGINT', '耗时', 'costTime', 'Long', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384963919, 197384963717, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384963920, 197384963717, 'user_agent', 'VARCHAR', '浏览器', 'userAgent', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384963921, 197384963717, 'status', 'INTEGER', '状态', 'status', 'Integer', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384963922, 197384963717, 'biz_module', 'VARCHAR', '业务模块', 'bizModule', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384963923, 197384963717, 'description', 'VARCHAR', '操作描述', 'description', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384963924, 197384963717, 'message', 'VARCHAR', '错误信息', 'message', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384963925, 197384963717, 'exception_class', 'VARCHAR', '异常类', 'exceptionClass', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384963926, 197384963717, 'stack_trace', 'VARCHAR', '详尽异常', 'stackTrace', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384966341, 197384966149, 'id', 'BIGINT', '主键id', 'id', 'Long', NULL, 1);
INSERT INTO `gen_table_field`
VALUES (197384966342, 197384966149, 'role_name', 'VARCHAR', '角色名称', 'roleName', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384966343, 197384966149, 'role_code', 'VARCHAR', '角色编码', 'roleCode', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384966344, 197384966149, 'dept_id', 'BIGINT', '部门id', 'deptId', 'Long', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384966345, 197384966149, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384966346, 197384966149, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384966347, 197384966149, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384966348, 197384966149, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384966349, 197384966149, 'update_time', 'TIMESTAMP', '更新时间', 'updateTime', 'java.util.Date', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384967621, 197384967493, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1);
INSERT INTO `gen_table_field`
VALUES (197384967622, 197384967493, 'role_id', 'BIGINT', '角色id', 'roleId', 'Long', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384967623, 197384967493, 'permission_id', 'BIGINT', '权限id', 'permissionId', 'Long', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384968965, 197384968837, 'id', 'BIGINT', '主键id', 'id', 'Long', NULL, 1);
INSERT INTO `gen_table_field`
VALUES (197384968966, 197384968837, 'username', 'VARCHAR', '登录账号', 'username', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384968967, 197384968837, 'realname', 'VARCHAR', '真实姓名', 'realname', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384968968, 197384968837, 'password', 'VARCHAR', '密码', 'password', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384968969, 197384968837, 'avatar', 'VARCHAR', '头像', 'avatar', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384968970, 197384968837, 'sex', 'SMALLINT', '性别', 'sex', 'Short', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384968971, 197384968837, 'phone', 'VARCHAR', '电话', 'phone', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384968972, 197384968837, 'del_flag', 'SMALLINT', '删除状态(0-正常,1-已删除)', 'delFlag', 'Short', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384968973, 197384968837, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384968974, 197384968837, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384968975, 197384968837, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384968976, 197384968837, 'update_time', 'TIMESTAMP', '更新时间', 'updateTime', 'java.util.Date', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384970181, 197384970053, 'id', 'BIGINT', '主键id', 'id', 'Long', NULL, 1);
INSERT INTO `gen_table_field`
VALUES (197384970182, 197384970053, 'user_id', 'BIGINT', '用户id', 'userId', 'Long', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384970183, 197384970053, 'dept_id', 'BIGINT', '部门id', 'deptId', 'Long', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384971333, 197384971205, 'id', 'BIGINT', '主键id', 'id', 'Long', NULL, 1);
INSERT INTO `gen_table_field`
VALUES (197384971334, 197384971205, 'user_id', 'BIGINT', '用户id', 'userId', 'Long', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (197384971335, 197384971205, 'role_id', 'BIGINT', '角色id', 'roleId', 'Long', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (274859735429, 274859734981, 'id', 'VARCHAR', NULL, 'id', 'String', NULL, 1);
INSERT INTO `gen_table_field`
VALUES (274859735430, 274859734981, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (274859735431, 274859734981, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (274859735432, 274859734981, 'del_flag', 'INTEGER', '删除状态', 'delFlag', 'Integer', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (274859735433, 274859734981, 'update_by', 'VARCHAR', '修改人', 'updateBy', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (274859735434, 274859734981, 'update_time', 'TIMESTAMP', '修改时间', 'updateTime', 'java.util.Date', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (274859735435, 274859734981, 'job_name', 'VARCHAR', '任务名', 'jobName', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (274859735436, 274859734981, 'cron_expression', 'VARCHAR', 'cron表达式', 'cronExpression', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (274859735437, 274859734981, 'parameter', 'VARCHAR', '参数', 'parameter', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (274859735438, 274859734981, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (274859735439, 274859734981, 'status', 'INTEGER', '状态 0正常 -1停止', 'status', 'Integer', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (274868829253, 274868828933, 'id', 'VARCHAR', NULL, 'id', 'String', NULL, 1);
INSERT INTO `gen_table_field`
VALUES (274868829254, 274868828933, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (274868829255, 274868828933, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (274868829256, 274868828933, 'del_flag', 'INTEGER', '删除状态', 'delFlag', 'Integer', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (274868829257, 274868828933, 'update_by', 'VARCHAR', '修改人', 'updateBy', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (274868829258, 274868828933, 'update_time', 'TIMESTAMP', '修改时间', 'updateTime', 'java.util.Date', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (274868829259, 274868828933, 'name', 'VARCHAR', '任务名', 'name', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (274868829260, 274868828933, 'cron', 'VARCHAR', 'cron表达式', 'cron', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (274868829261, 274868828933, 'parameter', 'VARCHAR', '参数', 'parameter', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (274868829262, 274868828933, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0);
INSERT INTO `gen_table_field`
VALUES (274868829263, 274868828933, 'status', 'INTEGER', '状态 0正常 -1停止', 'status', 'Integer', NULL, 0);

-- ----------------------------
-- Table structure for gen_template
-- ----------------------------
DROP TABLE IF EXISTS `gen_template`;
CREATE TABLE `gen_template`
(
    `id`          bigint(20)                                                    NOT NULL COMMENT 'id',
    `name`        varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模板名称',
    `content`     longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci     NULL,
    `create_time` datetime(0)                                                   NULL DEFAULT NULL COMMENT '创建时间',
    `update_by`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '更新人登录名称',
    `update_time` datetime(0)                                                   NULL DEFAULT NULL COMMENT '更新日期',
    `create_by`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '创建人登录名称',
    `group_id`    bigint(20)                                                    NULL DEFAULT NULL COMMENT '分组id',
    `file_name`   varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模板文件名',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '模板配置'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_template
-- ----------------------------
INSERT INTO `gen_template`
VALUES (192034258629, '编辑视图',
        'package ${packageName}.${moduleName}.${entityName}.table;\n\nimport com.moxa.dream.system.annotation.View;\nimport lombok.Data;\nimport ${packageName}.${moduleName}.${entityName}.table.${className};\n\n/**\n * @Description: ${tableComment!\'\'}\n * @Author: ${author!\'\'}\n * @Date: ${.now?string[\"yyyy-MM-dd HH:mm:ss\"]}\n */\n@Data\n@View(${className}.class)\n<#if baseClass??>\npublic class ${className}EditView extends ${baseClass} {\n<#else>\npublic class ${className}EditView {  \n</#if>  \n    <#list columns as column>\n    <#if !baseFields??||baseFields?seq_index_of(\"${column.attrName}\")==-1>\n		/**\n     * ${column.columnComment}\n     */\n    private ${column.attrType} ${column.attrName};\n		</#if>\n</#list>\n}',
        '2023-02-04 17:28:55', 'admin', '2023-02-04 19:46:23', 'admin', 82324589637, '${className}EditView.java');
INSERT INTO `gen_template`
VALUES (192578414789, '查询条件接受类',
        'package ${packageName}.${moduleName}.${entityName}.model;\n\nimport lombok.Data;\n\n@Data\npublic class ${className}Model {\n  \n}',
        '2023-02-04 19:50:38', 'admin', '2023-02-04 19:54:07', 'admin', 82324589637, '${className}Model.java');
INSERT INTO `gen_template`
VALUES (192596589061, '列表视图',
        'package ${packageName}.${moduleName}.${entityName}.view;\n\nimport lombok.Data;\n\n@Data\npublic class ${className}ListView {\n  \n}',
        '2023-02-04 19:55:22', NULL, NULL, 'admin', 82324589637, '${className}ListView.java');
INSERT INTO `gen_template`
VALUES (192608309829, '接口服务类',
        'package ${packageName}.${moduleName}.${entityName}.service;\n\nimport com.moxa.dream.template.service.IService;\nimport ${packageName}.${moduleName}.${entityName}.view.${className}ListView;\nimport ${packageName}.${moduleName}.${entityName}.view.${className}EditView;\n\n\npublic class I${className}Service extends IService<${className}ListView,${className}EditView> {\n  \n}',
        '2023-02-04 19:58:25', NULL, NULL, 'admin', 82324589637, 'I${className}Service.java');
INSERT INTO `gen_template`
VALUES (192619070789, '接口实现类',
        'package ${packageName}.${moduleName}.${entityName}.service.impl;\n\nimport com.moxa.dream.template.service.IService;\nimport ${packageName}.${moduleName}.${entityName}.service.I${className}Service;\nimport ${packageName}.${moduleName}.${entityName}.view.${className}ListView;\nimport ${packageName}.${moduleName}.${entityName}.view.${className}EditView;\nimport org.springframework.stereotype.Service;\n\n@Service\npublic class ${className}ServiceImpl extends ServiceImpl<${className}ListView,${className}EditView> implements I${className}Service{\n  \n}',
        '2023-02-04 20:01:13', NULL, NULL, 'admin', 82324589637, '${className}ServiceImpl.java');
INSERT INTO `gen_template`
VALUES (192633866053, '视图控制类',
        'package ${packageName}.${moduleName}.${entityName}.service.impl;\n\nimport com.moxa.sooth.core.base.controller.BaseController;\nimport ${packageName}.${moduleName}.${entityName}.service.I${className}Service;\nimport ${packageName}.${moduleName}.${entityName}.model.${className}Model;\nimport ${packageName}.${moduleName}.${entityName}.view.${className}EditView;\nimport org.springframework.web.bind.annotation.*;\n\n@RestController\n@RequestMapping(\"/${moduleName}/${entityName}\")\npublic class ${className}Controller extends BaseController<I${className}Service, ${className}EditView, ${className}Model>{\n  \n}',
        '2023-02-04 20:05:04', NULL, NULL, 'admin', 82324589637, '${className}Controller.java');
INSERT INTO `gen_template`
VALUES (192662837189, 'api请求页',
        'import { BaseApi } from \'/@/api/base/baseApi\';\n\nclass ${entityName?cap_first}Api extends BaseApi {\n  constructor(requestUrl) {\n    super(requestUrl);\n  }\n}\n\nexport const ${entityName}Api = new ${entityName?cap_first}Api(\'/${moduleName}/${entityName}\').api;',
        '2023-02-04 20:12:37', 'admin', '2023-02-04 20:13:07', 'admin', 82324589637, '${entityName}.api.ts');
INSERT INTO `gen_template`
VALUES (192688658309, '列表页',
        '<template>\n  <div>\n    <BasicTable @register=\"registerTable\">\n      <template #toolbar>\n        <Button v-auth=\"PermEnum.ADD\" type=\"primary\" @click=\"handleAdd\"> 新增</Button>\n      </template>\n      <template #selected>\n        <a v-auth=\"PermEnum.REMOVE_BATCH\" @click=\"handleRemoveBatch\">删除</a>\n      </template>\n      <template #action=\"{ record }\">\n        <TableAction\n          :actions=\"getTableAction(record)\"\n          :dropDownActions=\"getDropDownAction(record)\"\n        />\n      </template>\n    </BasicTable>\n    <${entityName?cap_first}Modal @register=\"registerModal\" @success=\"handleSuccess\" />\n  </div>\n</template>\n<script lang=\"ts\" name=\"system-dept\" setup>\n  import { Button } from \'ant-design-vue\';\n  import { BasicTable, useTable, TableAction, ActionItem } from \'/@/components/Table\';\n  import { PermEnum } from \'/@/enums/permEnum\';\n  import { useModal } from \'/@/components/Modal\';\n  import ${entityName?cap_first}Modal from \'./${entityName?cap_first}Modal.vue\';\n  import { columns, searchFormSchema } from \'./${entityName}.data\';\n  import { ${entityName}Api } from \'./${entityName}.api.api\';\n  const [registerModal, { openModal }] = useModal();\n  const [registerTable, { reload, getSelectRowKeys }] = useTable({\n    title: \'列表\',\n    api: ${entityName}Api.page,\n    columns,\n    formConfig: {\n      labelWidth: 80,\n      schemas: searchFormSchema,\n    },\n    useSearchForm: true,\n    showTableSetting: true,\n    bordered: true,\n    actionColumn: {\n      width: 120,\n      title: \'操作\',\n    },\n  });\n\n  function handleAdd() {\n    openModal(true, {\n      isUpdate: false,\n    });\n  }\n\n  function handleEdit(record: Recordable) {\n    openModal(true, {\n      record,\n      isUpdate: true,\n    });\n  }\n\n  async function handleDelete(record: Recordable) {\n    await ${entityName}Api.remove({ id: record.deptId });\n    reload();\n  }\n  async function handleRemoveBatch() {\n    const selectRowKeys = getSelectRowKeys();\n    await ${entityName}Api.removeBatch(selectRowKeys, reload);\n  }\n  function handleSuccess() {\n    reload();\n  }\n\n  function getTableAction(record): ActionItem[] {\n    return [\n      {\n        tooltip: \'修改\',\n        icon: \'clarity:note-edit-line\',\n        onClick: handleEdit.bind(null, record),\n        auth: PermEnum.EDIT,\n      },\n      {\n        tooltip: \'删除\',\n        icon: \'ant-design:delete-outlined\',\n        color: \'error\',\n        auth: PermEnum.REMOVE,\n        popConfirm: {\n          title: \'是否确认删除\',\n          confirm: handleDelete.bind(null, record),\n        },\n      },\n    ];\n  }\n\n  function getDropDownAction(record): ActionItem[] | null {\n    return null;\n  }\n</script>',
        '2023-02-04 20:19:20', NULL, NULL, 'admin', 82324589637, 'index.vue');
INSERT INTO `gen_template`
VALUES (192702147397, '弹窗页',
        '<template>\n  <BasicModal v-bind=\"$attrs\" @register=\"registerModal\" :title=\"getTitle\" @ok=\"handleSubmit\">\n    <BasicForm @register=\"registerForm\" />\n  </BasicModal>\n</template>\n<script lang=\"ts\">\n  import { defineComponent, ref, computed, unref } from \'vue\';\n  import { BasicModal, useModalInner } from \'/@/components/Modal\';\n  import { BasicForm, useForm } from \'/@/components/Form/index\';\n  import { formSchema } from \'./${entityName}.data\';\n\n  import { ${entityName}Api } from \'./${entityName}.api\';\n\n  export default defineComponent({\n    name: \'${entityName?cap_first}Modal\',\n    components: { BasicModal, BasicForm },\n    emits: [\'success\', \'register\'],\n    setup(_, { emit }) {\n      const isUpdate = ref(true);\n\n      const [registerForm, { setFieldsValue, updateSchema, validate }] = useForm({\n        labelWidth: 80,\n        baseColProps: { span: 24 },\n        schemas: formSchema,\n        showActionButtonGroup: false,\n      });\n\n      const [registerModal, { openOKLoading, closeModal }] = useModalInner(async (data) => {\n        isUpdate.value = !!data?.isUpdate;\n        if (unref(isUpdate)) {\n          setFieldsValue({\n            ...data.record,\n          });\n      });\n\n      const getTitle = computed(() => (!unref(isUpdate) ? \'新增\' : \'编辑\'));\n\n      async function handleSubmit() {\n        const values = await validate();\n        openOKLoading(async () => {\n          await ${entityName}Api.saveOrEdit(values, unref(isUpdate));\n          closeModal();\n          emit(\'success\');\n        });\n      }\n      return { registerModal, registerForm, getTitle, handleSubmit };\n    },\n  });\n</script>',
        '2023-02-04 20:22:51', NULL, NULL, 'admin', 82324589637, '${entityName?cap_first}.vue');
INSERT INTO `gen_template`
VALUES (192707297157, '数据页',
        'import { BasicColumn } from \'/@/components/Table\';\nimport { FormSchema } from \'/@/components/Table\';\n\nexport const columns: BasicColumn[] = [\n];\n\nexport const searchFormSchema: FormSchema[] = [\n];\n\nexport const formSchema: FormSchema[] = [\n];',
        '2023-02-04 20:24:12', NULL, NULL, 'admin', 82324589637, '${entityName}.data.ts');
INSERT INTO `gen_template`
VALUES (362832993636357, '数据库表java类映射',
        'package ${packageName}.${moduleName}.${entityName}.table;\n\nimport com.moxa.dream.system.annotation.Column;\nimport com.moxa.dream.system.annotation.Id;\nimport com.moxa.dream.system.annotation.Table;\nimport lombok.Data;\n\nimport java.sql.Types;\n\n/**\n * @Description: ${tableComment!\'\'}\n * @Author: ${author!\'\'}\n * @Date: ${.now?string[\"yyyy-MM-dd HH:mm:ss\"]}\n */\n@Data\n@Table(\"${tableName}\")\npublic class ${className} {\n\n    <#list columns as column>\n  \n		/**\n     * ${column.columnComment!\'\'}\n     */\n    <#if column.primaryPk>\n    @Id\n    </#if>\n    @Column(value = \"${column.columnName}\", jdbcType = Types.${column.columnType})\n    private ${column.attrType} ${column.attrName};\n</#list>\n}',
        '2022-12-11 08:31:15', 'admin', '2023-02-19 17:03:06', NULL, 82324589637, '${className}.java');

-- ----------------------------
-- Table structure for gen_template_group
-- ----------------------------
DROP TABLE IF EXISTS `gen_template_group`;
CREATE TABLE `gen_template_group`
(
    `id`   bigint(20)                                                    NOT NULL COMMENT 'id',
    `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表名',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '模板配置组'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_template_group
-- ----------------------------
INSERT INTO `gen_template_group`
VALUES (82324589637, '基础模板组');

-- ----------------------------
-- Table structure for sys_base_class
-- ----------------------------
DROP TABLE IF EXISTS `sys_base_class`;
CREATE TABLE `sys_base_class`
(
    `id`          bigint(20)                                                    NOT NULL COMMENT 'id',
    `class_name`  varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '基类全类名',
    `fields`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '基类字段，多个用英文逗号分隔',
    `create_time` datetime(0)                                                   NULL DEFAULT NULL COMMENT '创建时间',
    `update_time` datetime(0)                                                   NULL DEFAULT NULL COMMENT '创建时间',
    `create_by`   varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '创建人',
    `update_by`   varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '更新人',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '基类管理'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_base_class
-- ----------------------------
INSERT INTO `sys_base_class`
VALUES (192027676293, 'com.moxa.sooth.core.base.entity.BaseEntity', 'createBy,createTime,updateBy,updateTime',
        '2023-02-04 17:27:12', NULL, 'admin', NULL);

-- ----------------------------
-- Table structure for sys_button
-- ----------------------------
DROP TABLE IF EXISTS `sys_button`;
CREATE TABLE `sys_button`
(
    `id`      bigint(20)                                                    NOT NULL,
    `menu_id` bigint(20)                                                    NULL DEFAULT NULL COMMENT '菜单id',
    `type`    varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '按钮权限类型',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '角色权限表'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_button
-- ----------------------------
INSERT INTO `sys_button`
VALUES (153157080517, 3, 'add');
INSERT INTO `sys_button`
VALUES (153157080518, 3, 'edit');
INSERT INTO `sys_button`
VALUES (153157080519, 3, 'remove');
INSERT INTO `sys_button`
VALUES (153157080520, 3, 'removeBatch');
INSERT INTO `sys_button`
VALUES (153162963205, 4, 'add');
INSERT INTO `sys_button`
VALUES (153162963206, 4, 'edit');
INSERT INTO `sys_button`
VALUES (153162963207, 4, 'remove');
INSERT INTO `sys_button`
VALUES (153162963208, 4, 'removeBatch');
INSERT INTO `sys_button`
VALUES (153165063429, 5, 'add');
INSERT INTO `sys_button`
VALUES (153165063430, 5, 'edit');
INSERT INTO `sys_button`
VALUES (153165063431, 5, 'remove');
INSERT INTO `sys_button`
VALUES (153165063432, 5, 'removeBatch');
INSERT INTO `sys_button`
VALUES (153166387781, 2, 'add');
INSERT INTO `sys_button`
VALUES (153166387782, 2, 'edit');
INSERT INTO `sys_button`
VALUES (153166387783, 2, 'remove');
INSERT INTO `sys_button`
VALUES (153166387784, 2, 'removeBatch');
INSERT INTO `sys_button`
VALUES (153366975621, 2, 'menu_permission');
INSERT INTO `sys_button`
VALUES (153366975622, 2, 'button_permission');
INSERT INTO `sys_button`
VALUES (153366975623, 2, 'data_permission');
INSERT INTO `sys_button`
VALUES (159925289733, 3, 'remove_batch');
INSERT INTO `sys_button`
VALUES (173652824133, 5, 'remove_batch');
INSERT INTO `sys_button`
VALUES (173652824134, 5, 'button_setting');
INSERT INTO `sys_button`
VALUES (173652824135, 5, 'add_sub');
INSERT INTO `sys_button`
VALUES (173653609605, 4, 'remove_batch');
INSERT INTO `sys_button`
VALUES (173664974213, 8, 'add');
INSERT INTO `sys_button`
VALUES (173664974214, 8, 'edit');
INSERT INTO `sys_button`
VALUES (173664974215, 8, 'remove');
INSERT INTO `sys_button`
VALUES (173664974216, 8, 'remove_batch');
INSERT INTO `sys_button`
VALUES (178966814853, 20, 'add');
INSERT INTO `sys_button`
VALUES (178966814854, 20, 'edit');
INSERT INTO `sys_button`
VALUES (178966814855, 20, 'remove');
INSERT INTO `sys_button`
VALUES (178966814856, 20, 'remove_batch');
INSERT INTO `sys_button`
VALUES (178967663493, 17, 'edit');
INSERT INTO `sys_button`
VALUES (178968322373, 18, 'add');
INSERT INTO `sys_button`
VALUES (178968322374, 18, 'edit');
INSERT INTO `sys_button`
VALUES (178968322375, 18, 'remove');
INSERT INTO `sys_button`
VALUES (178968322376, 18, 'remove_batch');
INSERT INTO `sys_button`
VALUES (178969028229, 19, 'add');
INSERT INTO `sys_button`
VALUES (178969028230, 19, 'edit');
INSERT INTO `sys_button`
VALUES (178969028231, 19, 'remove');
INSERT INTO `sys_button`
VALUES (178969028232, 19, 'remove_batch');
INSERT INTO `sys_button`
VALUES (178969766725, 11, 'add');
INSERT INTO `sys_button`
VALUES (178969766726, 11, 'edit');
INSERT INTO `sys_button`
VALUES (178969766727, 11, 'remove');
INSERT INTO `sys_button`
VALUES (178969766728, 11, 'remove_batch');
INSERT INTO `sys_button`
VALUES (179002517125, 19, 'import');
INSERT INTO `sys_button`
VALUES (179002517126, 19, 'generate');
INSERT INTO `sys_button`
VALUES (179002517127, 19, 'sync');
INSERT INTO `sys_button`
VALUES (187263535685, 2, 'remove_batch');
INSERT INTO `sys_button`
VALUES (192006785029, 12, 'remove_batch');
INSERT INTO `sys_button`
VALUES (208603001541, 2, 'role_user');
INSERT INTO `sys_button`
VALUES (270339307653, 270244951749, 'add');
INSERT INTO `sys_button`
VALUES (270339307654, 270244951749, 'edit');
INSERT INTO `sys_button`
VALUES (270339307655, 270244951749, 'remove');
INSERT INTO `sys_button`
VALUES (270339307656, 270244951749, 'remove_batch');

-- ----------------------------
-- Table structure for sys_button_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_button_permission`;
CREATE TABLE `sys_button_permission`
(
    `id`        bigint(20) NOT NULL,
    `button_id` bigint(20) NULL DEFAULT NULL COMMENT '按钮id',
    `role_id`   bigint(20) NULL DEFAULT NULL COMMENT '角色id',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '角色权限表'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_button_permission
-- ----------------------------
INSERT INTO `sys_button_permission`
VALUES (226159902597, 153157080517, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902598, 153157080518, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902599, 153157080519, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902600, 159925289733, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902601, 153162963205, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902602, 153162963206, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902603, 153162963207, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902604, 173653609605, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902605, 178966814853, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902606, 178966814854, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902607, 178966814855, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902608, 178966814856, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902609, 178967663493, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902610, 178968322373, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902611, 178968322374, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902612, 178968322375, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902613, 178968322376, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902614, 178969028229, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902615, 178969028230, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902616, 178969028231, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902617, 178969028232, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902618, 179002517125, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902619, 179002517127, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902620, 179002517126, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902621, 178969766725, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902622, 178969766726, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902623, 178969766727, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902624, 178969766728, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902625, 192006785029, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902626, 173664974213, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902627, 173664974214, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902628, 173664974215, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902629, 173664974216, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902630, 153165063429, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902631, 153165063430, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902632, 153165063431, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902633, 173652824133, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902634, 173652824135, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902635, 173652824134, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902636, 153166387781, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902637, 153166387782, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902638, 153166387783, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902639, 187263535685, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902640, 153366975622, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902641, 153366975621, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902642, 153366975623, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (226159902643, 208603001541, 226157928197);
INSERT INTO `sys_button_permission`
VALUES (274846950853, 153157080517, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950854, 153157080518, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950855, 153157080519, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950856, 159925289733, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950857, 153162963205, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950858, 153162963206, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950859, 153162963207, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950860, 173653609605, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950861, 192006785029, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950862, 173664974213, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950863, 173664974214, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950864, 173664974215, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950865, 173664974216, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950866, 178966814853, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950867, 178966814854, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950868, 178966814855, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950869, 178966814856, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950870, 178967663493, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950871, 178968322373, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950872, 178968322374, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950873, 178968322375, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950874, 178968322376, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950875, 178969028229, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950876, 178969028230, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950877, 178969028231, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950878, 178969028232, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950879, 179002517125, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950880, 179002517127, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950881, 179002517126, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950882, 178969766725, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950883, 178969766726, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950884, 178969766727, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950885, 178969766728, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950886, 153165063429, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950887, 153165063430, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950888, 153165063431, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950889, 173652824133, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950890, 173652824135, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950891, 173652824134, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950892, 153166387781, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950893, 153166387782, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950894, 153166387783, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950895, 187263535685, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950896, 153366975622, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950897, 153366975621, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950917, 153366975623, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950918, 208603001541, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950919, 270339307653, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950920, 270339307654, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950921, 270339307655, 1);
INSERT INTO `sys_button_permission`
VALUES (274846950922, 270339307656, 1);

-- ----------------------------
-- Table structure for sys_data_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_permission`;
CREATE TABLE `sys_data_permission`
(
    `id`              bigint(20)                                                NOT NULL,
    `permission_code` int(11)                                                   NULL DEFAULT NULL COMMENT '权限',
    `dept_ids`        longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '指定部门',
    `role_id`         bigint(20)                                                NULL DEFAULT NULL COMMENT '角色id',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '角色权限表'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_data_permission
-- ----------------------------
INSERT INTO `sys_data_permission`
VALUES (130099105285, 4, '', 1);
INSERT INTO `sys_data_permission`
VALUES (131663002949, 3, '', 131517140997);
INSERT INTO `sys_data_permission`
VALUES (226160867909, 3, '', 226157928197);

-- ----------------------------
-- Table structure for sys_data_source
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_source`;
CREATE TABLE `sys_data_source`
(
    `id`          bigint(20)                                                    NOT NULL,
    `name`        varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据源名称',
    `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
    `url`         longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci     NULL COMMENT '数据源地址',
    `username`    varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
    `password`    varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
    `create_by`   varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '创建人',
    `create_time` datetime(0)                                                   NULL DEFAULT NULL COMMENT '创建日期',
    `update_by`   varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '更新人',
    `update_time` datetime(0)                                                   NULL DEFAULT NULL COMMENT '更新日期',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_data_source
-- ----------------------------
INSERT INTO `sys_data_source`
VALUES (87734678533, 'mysql基础数据源', NULL,
        'jdbc:mysql://192.168.0.3/sooth?useUnicode=true&characterEncoding=utf-8&allowMultiQueries=true&useAffectedRows=true&zeroDateTimeBehavior=convertToNull&serverTimezone=Asia/Shanghai',
        'root', '6d95f0648637a3895996ce82aeb6e157', 'admin', '2023-01-16 20:47:34', 'admin', '2023-01-29 20:00:51');
INSERT INTO `sys_data_source`
VALUES (93397288581, 'localhost数据源', NULL,
        'jdbc:mysql://127.0.0.1:3306/sooth?characterEncoding=UTF-8&useUnicode=true&useSSL=false&tinyInt1isBit=false&allowPublicKeyRetrieval=true&serverTimezone=Asia/Shanghai',
        'root', '443967e8cfda5646d4f3e044f7a18704', 'admin', '2023-01-17 21:22:12', 'admin', '2023-02-11 19:13:22');
INSERT INTO `sys_data_source`
VALUES (159443767877, 'pg数据源', NULL, 'jdbc:postgresql://192.168.0.194:5432/sooth', 'postgres',
        '443967e8cfda5646d4f3e044f7a18704', 'admin', '2023-01-29 20:01:49', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`
(
    `dept_id`     bigint(20)                                                    NOT NULL COMMENT 'ID',
    `parent_id`   bigint(20)                                                    NULL DEFAULT NULL COMMENT '父机构ID',
    `dept_name`   varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '机构/部门名称',
    `dept_code`   varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '机构/部门编码',
    `order_no`    double                                                        NULL DEFAULT NULL COMMENT '排序',
    `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci     NULL COMMENT '描述',
    `status`      int(11)                                                       NULL DEFAULT NULL COMMENT '状态（1启用，0不启用）',
    `del_flag`    int(11)                                                       NULL DEFAULT NULL COMMENT '删除状态（0，正常，1已删除）',
    `create_by`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '创建人',
    `create_time` datetime(0)                                                   NULL DEFAULT NULL COMMENT '创建日期',
    `update_by`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '更新人',
    `update_time` datetime(0)                                                   NULL DEFAULT NULL COMMENT '更新日期',
    PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '组织机构表'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept`
VALUES (1, NULL, '研发部', '01', 1, '', NULL, 0, 'admin', '2023-01-02 00:40:23', 'admin', '2023-02-11 20:28:50');
INSERT INTO `sys_dept`
VALUES (42083908293, 1, '中台研发部', '0101', 1, '', 0, 0, 'admin', '2023-01-08 14:39:21', NULL, NULL);
INSERT INTO `sys_dept`
VALUES (42089689925, NULL, '产品部', '02', 2, NULL, NULL, 0, 'admin', '2023-01-08 14:40:51', 'admin',
        '2023-02-19 16:54:12');
INSERT INTO `sys_dept`
VALUES (42202626373, NULL, '测试部', '03', 3, NULL, 0, 0, 'admin', '2023-01-08 15:10:16', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`
(
    `id`          bigint(20)                                                    NOT NULL,
    `name`        varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典名称',
    `code`        varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典编码',
    `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
    `del_flag`    int(11)                                                       NULL DEFAULT NULL COMMENT '删除状态',
    `create_by`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '创建人',
    `create_time` datetime(0)                                                   NULL DEFAULT NULL COMMENT '创建时间',
    `update_by`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '更新人',
    `update_time` datetime(0)                                                   NULL DEFAULT NULL COMMENT '更新时间',
    `type`        int(11)                                                       NULL DEFAULT NULL COMMENT '字典类型0为string,1为number',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict`
VALUES (8616451013, '性别', 'sex', NULL, 0, 'admin', '2023-01-02 13:23:52', 'admin', '2023-02-04 16:42:20', NULL);
INSERT INTO `sys_dict`
VALUES (71375867077, '数据权限', 'data_permission', '控制数据查看范围', 0, 'admin', '2023-01-13 21:47:28', 'admin',
        '2023-01-13 21:47:46', NULL);
INSERT INTO `sys_dict`
VALUES (74316854597, '数据库类型', 'database_type', NULL, 1, 'admin', '2023-01-14 10:33:21', NULL, NULL, NULL);
INSERT INTO `sys_dict`
VALUES (76765765253, '成功状态', 'success_status', NULL, 0, 'admin', '2023-01-14 21:11:05', NULL, NULL, NULL);
INSERT INTO `sys_dict`
VALUES (77499306373, '日志类型', 'log_type', NULL, 0, 'admin', '2023-01-15 00:22:07', NULL, NULL, NULL);
INSERT INTO `sys_dict`
VALUES (140960825093, '按钮权限', 'button_type', NULL, 0, 'admin', '2023-01-26 11:48:33', 'admin', '2023-01-26 14:57:05',
        0);
INSERT INTO `sys_dict`
VALUES (153462050245, '是否', 'whether', NULL, 1, 'admin', '2023-01-28 18:04:05', NULL, NULL, 0);
INSERT INTO `sys_dict`
VALUES (270588795589, '运行状态', 'run_status', NULL, 0, 'admin', '2023-02-18 22:25:50', NULL, NULL, NULL);
INSERT INTO `sys_dict`
VALUES (281647507141, '显示方式', 'show_type', NULL, 0, 'admin', '2023-02-20 22:25:42', NULL, NULL, NULL);
INSERT INTO `sys_dict`
VALUES (281904125957, '校验方式', 'valid_type', NULL, 0, 'admin', '2023-02-20 23:32:32', NULL, NULL, NULL);
INSERT INTO `sys_dict`
VALUES (287214592837, '控件类型', 'control_type', NULL, 0, 'admin', '2023-02-21 22:35:28', NULL, NULL, NULL);
INSERT INTO `sys_dict`
VALUES (287229532613, '查询方式', 'search_type', NULL, 0, 'admin', '2023-02-21 22:39:21', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_item`;
CREATE TABLE `sys_dict_item`
(
    `id`          bigint(20)                                                    NOT NULL,
    `dict_id`     bigint(20)                                                    NULL DEFAULT NULL COMMENT '字典id',
    `name`        varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典项文本',
    `value`       varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典项值',
    `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
    `order_no`    double                                                        NULL DEFAULT NULL COMMENT '排序',
    `tag`         varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '颜色标签',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict_item
-- ----------------------------
INSERT INTO `sys_dict_item`
VALUES (8617419717, 8616451013, '男', '0', NULL, 1, NULL);
INSERT INTO `sys_dict_item`
VALUES (8617941573, 8616451013, '女', '1', NULL, 1, NULL);
INSERT INTO `sys_dict_item`
VALUES (71381259781, 71375867077, '本人', '1', '只能查看本部门且本人创建的数据', 1, NULL);
INSERT INTO `sys_dict_item`
VALUES (71389730373, 71375867077, '本部门', '2', '只能查看本部门数据', 2, NULL);
INSERT INTO `sys_dict_item`
VALUES (71398373445, 71375867077, '本部门以及子部门', '3', '只能查看部门以及子部门数据', 3, NULL);
INSERT INTO `sys_dict_item`
VALUES (71400237445, 71375867077, '所有部门', '4', '查看所有部门数据', 4, NULL);
INSERT INTO `sys_dict_item`
VALUES (76767618309, 76765765253, '成功', '0', NULL, 1, 'success');
INSERT INTO `sys_dict_item`
VALUES (76768298309, 76765765253, '失败', '1', NULL, 2, 'error');
INSERT INTO `sys_dict_item`
VALUES (77513234117, 77499306373, '认证日志', 'auth', NULL, 1, NULL);
INSERT INTO `sys_dict_item`
VALUES (77514748549, 77499306373, '操作日志', 'operate', NULL, 2, NULL);
INSERT INTO `sys_dict_item`
VALUES (140963430661, 140960825093, '编辑', 'edit', '通用', 2, NULL);
INSERT INTO `sys_dict_item`
VALUES (140964512005, 140960825093, '删除', 'remove', '通用', 3, NULL);
INSERT INTO `sys_dict_item`
VALUES (140965814533, 140960825093, '批量删除', 'remove_batch', '通用', 4, NULL);
INSERT INTO `sys_dict_item`
VALUES (140966682309, 140960825093, '新增', 'add', '通用', 1, NULL);
INSERT INTO `sys_dict_item`
VALUES (153235156869, 140960825093, '菜单权限', 'menu_permission', '角色管理', 5, NULL);
INSERT INTO `sys_dict_item`
VALUES (153236810181, 140960825093, '按钮权限', 'button_permission', '角色管理', 5, NULL);
INSERT INTO `sys_dict_item`
VALUES (153239148101, 140960825093, '数据权限', 'data_permission', '角色管理', 5, NULL);
INSERT INTO `sys_dict_item`
VALUES (153391879877, 140960825093, '按钮配置', 'button_setting', '菜单权限', 5, NULL);
INSERT INTO `sys_dict_item`
VALUES (153395673029, 140960825093, '添加下级', 'add_sub', '菜单权限', 5, NULL);
INSERT INTO `sys_dict_item`
VALUES (178905837061, 140960825093, '角色用户', 'role_user', '角色权限', 6, NULL);
INSERT INTO `sys_dict_item`
VALUES (178986906693, 140960825093, '导入', 'import', '通用', 4, NULL);
INSERT INTO `sys_dict_item`
VALUES (178989785861, 140960825093, '导出', 'export', '通用', 4, NULL);
INSERT INTO `sys_dict_item`
VALUES (178991094853, 140960825093, '同步', 'sync', '', 5, NULL);
INSERT INTO `sys_dict_item`
VALUES (178992321221, 140960825093, '生成', 'generate', '', 5, NULL);
INSERT INTO `sys_dict_item`
VALUES (197152164165, 77499306373, '错误日志', 'error', NULL, 3, NULL);
INSERT INTO `sys_dict_item`
VALUES (275811501061, 270588795589, '未运行', '0', NULL, 1, 'blue');
INSERT INTO `sys_dict_item`
VALUES (275818088837, 270588795589, '运行中', '1', NULL, 2, 'green');
INSERT INTO `sys_dict_item`
VALUES (281650423493, 281647507141, '隐藏', '0', NULL, 1, NULL);
INSERT INTO `sys_dict_item`
VALUES (281654521733, 281647507141, '显示', '1', NULL, 2, NULL);
INSERT INTO `sys_dict_item`
VALUES (281908298373, 281904125957, '必填', 'required', NULL, 1, NULL);
INSERT INTO `sys_dict_item`
VALUES (287215769477, 287214592837, '输入框', 'input', NULL, 1, NULL);
INSERT INTO `sys_dict_item`
VALUES (287217141957, 287214592837, '密码框', 'password', NULL, 3, NULL);
INSERT INTO `sys_dict_item`
VALUES (287220408005, 287214592837, '数字框', 'number', NULL, 5, NULL);
INSERT INTO `sys_dict_item`
VALUES (287223508165, 287214592837, '选择框', 'select', NULL, 2, NULL);
INSERT INTO `sys_dict_item`
VALUES (287225453125, 287214592837, '日期框', 'date', NULL, 4, NULL);
INSERT INTO `sys_dict_item`
VALUES (287231888133, 287229532613, '=', '=', NULL, 1, NULL);
INSERT INTO `sys_dict_item`
VALUES (287237421125, 287229532613, 'like', 'like', NULL, 2, NULL);
INSERT INTO `sys_dict_item`
VALUES (287240704133, 287229532613, 'between', 'between', NULL, 3, NULL);
INSERT INTO `sys_dict_item`
VALUES (287245772805, 287229532613, 'in', 'in', NULL, 4, NULL);

-- ----------------------------
-- Table structure for sys_field_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_field_type`;
CREATE TABLE `sys_field_type`
(
    `id`          bigint(20)                                                    NOT NULL COMMENT 'id',
    `column_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段类型',
    `attr_type`   varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性类型',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '字段类型管理'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_field_type
-- ----------------------------
INSERT INTO `sys_field_type`
VALUES (-16, 'LONGNVARCHAR', 'String');
INSERT INTO `sys_field_type`
VALUES (-15, 'NCHAR', 'String');
INSERT INTO `sys_field_type`
VALUES (-9, 'NVARCHAR', 'String');
INSERT INTO `sys_field_type`
VALUES (-8, 'ROWID', 'Object');
INSERT INTO `sys_field_type`
VALUES (-7, 'BIT', 'Byte');
INSERT INTO `sys_field_type`
VALUES (-6, 'TINYINT', 'Byte');
INSERT INTO `sys_field_type`
VALUES (-5, 'BIGINT', 'Long');
INSERT INTO `sys_field_type`
VALUES (-4, 'LONGVARBINARY', 'Byte[]');
INSERT INTO `sys_field_type`
VALUES (-3, 'VARBINARY', 'Byte[]');
INSERT INTO `sys_field_type`
VALUES (-2, 'BINARY', 'Byte[]');
INSERT INTO `sys_field_type`
VALUES (-1, 'LONGVARCHAR', 'String');
INSERT INTO `sys_field_type`
VALUES (0, 'NULL', 'Object');
INSERT INTO `sys_field_type`
VALUES (1, 'CHAR', 'String');
INSERT INTO `sys_field_type`
VALUES (2, 'NUMERIC', 'java.math.BigDecimal');
INSERT INTO `sys_field_type`
VALUES (3, 'DECIMAL', 'java.math.BigDecimal');
INSERT INTO `sys_field_type`
VALUES (4, 'INTEGER', 'Integer');
INSERT INTO `sys_field_type`
VALUES (5, 'SMALLINT', 'Short');
INSERT INTO `sys_field_type`
VALUES (6, 'FLOAT', 'Float');
INSERT INTO `sys_field_type`
VALUES (7, 'REAL', 'Float');
INSERT INTO `sys_field_type`
VALUES (8, 'DOUBLE', 'Double');
INSERT INTO `sys_field_type`
VALUES (12, 'VARCHAR', 'String');
INSERT INTO `sys_field_type`
VALUES (16, 'BOOLEAN', 'Boolean');
INSERT INTO `sys_field_type`
VALUES (70, 'DATALINK', 'Object');
INSERT INTO `sys_field_type`
VALUES (91, 'DATE', 'java.util.Date');
INSERT INTO `sys_field_type`
VALUES (92, 'TIME', 'java.sql.Time');
INSERT INTO `sys_field_type`
VALUES (93, 'TIMESTAMP', 'java.util.Date');
INSERT INTO `sys_field_type`
VALUES (1111, 'OTHER', 'Object');
INSERT INTO `sys_field_type`
VALUES (2000, 'JAVA_OBJECT', 'Object');
INSERT INTO `sys_field_type`
VALUES (2001, 'DISTINCT', 'Object');
INSERT INTO `sys_field_type`
VALUES (2002, 'STRUCT', 'Object');
INSERT INTO `sys_field_type`
VALUES (2003, 'ARRAY', 'Object');
INSERT INTO `sys_field_type`
VALUES (2004, 'BLOB', 'java.io.InputStream');
INSERT INTO `sys_field_type`
VALUES (2005, 'CLOB', 'String');
INSERT INTO `sys_field_type`
VALUES (2006, 'REF', 'Object');
INSERT INTO `sys_field_type`
VALUES (2009, 'SQLXML', 'Object');
INSERT INTO `sys_field_type`
VALUES (2011, 'NCLOB', 'String');
INSERT INTO `sys_field_type`
VALUES (2012, 'REF_CURSOR', 'Object');
INSERT INTO `sys_field_type`
VALUES (2013, 'TIME_WITH_TIMEZONE', 'Object');
INSERT INTO `sys_field_type`
VALUES (2014, 'TIMESTAMP_WITH_TIMEZONE', 'Object');

-- ----------------------------
-- Table structure for sys_gen_field
-- ----------------------------
DROP TABLE IF EXISTS `sys_gen_field`;
CREATE TABLE `sys_gen_field`
(
    `id`             bigint(20)                                                    NOT NULL COMMENT 'id',
    `table_id`       bigint(20)                                                    NULL DEFAULT NULL COMMENT '表ID',
    `column_name`    varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段名称',
    `column_type`    varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段类型',
    `column_comment` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段说明',
    `attr_name`      varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性名',
    `attr_type`      varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性类型',
    `order_no`       int(11)                                                       NULL DEFAULT NULL COMMENT '排序',
    `primary_pk`     smallint(6)                                                   NULL DEFAULT NULL COMMENT '主键 0：否  1：是',
    `show_list_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列表页显示方式',
    `valid_type`     varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '校验方式',
    `dict_code`      varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典',
    `show_edit_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编辑页显示方式',
    `control_type`   varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '控件类型',
    `search_type`    varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '查询方式',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '代码生成表字段'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_gen_field
-- ----------------------------
INSERT INTO `sys_gen_field`
VALUES (190414499013, 190414497349, 'id', 'BIGINT', '主键id', 'id', 'Long', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (190414499014, 190414497349, 'parent_id', 'BIGINT', '父id', 'parentId', 'Long', NULL, 0, NULL, NULL, 'sex', NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (190414499015, 190414497349, 'name', 'VARCHAR', '菜单标题', 'name', 'String', NULL, 0, NULL, 'required', 'sex', NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (190414499016, 190414497349, 'url', 'VARCHAR', '路径', 'url', 'String', NULL, 0, NULL, NULL, 'data_permission',
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (190414499017, 190414497349, 'component', 'VARCHAR', '组件', 'component', 'String', NULL, 1, '0', 'required',
        'sex', '0', 'input', '=');
INSERT INTO `sys_gen_field`
VALUES (190414499018, 190414497349, 'redirect', 'VARCHAR', '一级菜单跳转地址', 'redirect', 'String', NULL, 0, '0', NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (190414499019, 190414497349, 'menu_type', 'INTEGER', '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)', 'menuType', 'Integer', NULL,
        1, '0', 'required', 'sex', '0', 'input', '=');
INSERT INTO `sys_gen_field`
VALUES (190414499020, 190414497349, 'sort_no', 'DOUBLE', '菜单排序', 'sortNo', 'Double', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (190414499021, 190414497349, 'fixed_tab', 'SMALLINT', '聚合子路由: 1是0否', 'fixedTab', 'Short', NULL, 0, NULL, NULL,
        NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (190414499022, 190414497349, 'icon', 'VARCHAR', '菜单图标', 'icon', 'String', NULL, 0, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO `sys_gen_field`
VALUES (190414499023, 190414497349, 'hidden', 'INTEGER', '是否隐藏路由: 0否,1是', 'hidden', 'Integer', NULL, 0, NULL, NULL,
        NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (190414499024, 190414497349, 'hide_tab', 'INTEGER', '是否隐藏tab: 0否,1是', 'hideTab', 'Integer', NULL, 0, NULL, NULL,
        NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (190414499025, 190414497349, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (190414499026, 190414497349, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (190414499027, 190414497349, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (190414499028, 190414497349, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (190414499029, 190414497349, 'update_time', 'TIMESTAMP', '更新时间', 'updateTime', 'java.util.Date', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (190414499030, 190414497349, 'del_flag', 'INTEGER', '删除状态 0正常 1已删除', 'delFlag', 'Integer', NULL, 0, NULL, NULL,
        NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (190414499031, 190414497349, 'keep_alive', 'SMALLINT', '缓存路由: 1是0否', 'keepAlive', 'Short', NULL, 0, NULL, NULL,
        NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (190414499032, 190414497349, 'component_name', 'VARCHAR', '组件名称', 'componentName', 'String', NULL, 0, NULL, NULL,
        NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384944133, 197384943109, 'id', 'BIGINT', 'id', 'id', 'Long', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384944134, 197384943109, 'class_name', 'VARCHAR', '基类全类名', 'className', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384944135, 197384943109, 'fields', 'VARCHAR', '基类字段，多个用英文逗号分隔', 'fields', 'String', NULL, 0, NULL, NULL,
        NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384944136, 197384943109, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384944137, 197384943109, 'update_time', 'TIMESTAMP', '创建时间', 'updateTime', 'java.util.Date', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384944138, 197384943109, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384944139, 197384943109, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384947333, 197384947013, 'id', 'BIGINT', 'id', 'id', 'Long', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384947334, 197384947013, 'column_type', 'VARCHAR', '字段类型', 'columnType', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384947335, 197384947013, 'attr_type', 'VARCHAR', '属性类型', 'attrType', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384948933, 197384948549, 'id', 'BIGINT', 'id', 'id', 'Long', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384948934, 197384948549, 'table_name', 'VARCHAR', '表名', 'tableName', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384948935, 197384948549, 'class_name', 'VARCHAR', '类名', 'className', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384948936, 197384948549, 'table_comment', 'VARCHAR', '说明', 'tableComment', 'String', NULL, 0, NULL, NULL,
        NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384948937, 197384948549, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384948938, 197384948549, 'update_time', 'TIMESTAMP', '创建时间', 'updateTime', 'java.util.Date', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384948939, 197384948549, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384948940, 197384948549, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384950213, 197384950085, 'id', 'BIGINT', 'id', 'id', 'Long', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384950214, 197384950085, 'table_id', 'BIGINT', '表ID', 'tableId', 'Long', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384950215, 197384950085, 'column_name', 'VARCHAR', '字段名称', 'columnName', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384950216, 197384950085, 'column_type', 'VARCHAR', '字段类型', 'columnType', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384950217, 197384950085, 'column_comment', 'VARCHAR', '字段说明', 'columnComment', 'String', NULL, 0, NULL, NULL,
        NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384950218, 197384950085, 'attr_name', 'VARCHAR', '属性名', 'attrName', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384950219, 197384950085, 'attr_type', 'VARCHAR', '属性类型', 'attrType', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384950220, 197384950085, 'order_no', 'INTEGER', '排序', 'orderNo', 'Integer', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384950221, 197384950085, 'primary_pk', 'SMALLINT', '主键 0：否  1：是', 'primaryPk', 'Short', NULL, 0, NULL, NULL,
        NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384952517, 197384952389, 'id', 'BIGINT', 'id', 'id', 'Long', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384952518, 197384952389, 'name', 'VARCHAR', '模板名称', 'name', 'String', NULL, 0, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO `sys_gen_field`
VALUES (197384952519, 197384952389, 'content', 'VARCHAR', NULL, 'content', 'String', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384952520, 197384952389, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384952521, 197384952389, 'update_by', 'VARCHAR', '更新人登录名称', 'updateBy', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384952522, 197384952389, 'update_time', 'TIMESTAMP', '更新日期', 'updateTime', 'java.util.Date', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384952523, 197384952389, 'create_by', 'VARCHAR', '创建人登录名称', 'createBy', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384952524, 197384952389, 'group_id', 'BIGINT', '分组id', 'groupId', 'Long', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384952525, 197384952389, 'file_name', 'VARCHAR', '模板文件名', 'fileName', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384953541, 197384953477, 'id', 'BIGINT', 'id', 'id', 'Long', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384953542, 197384953477, 'name', 'VARCHAR', '表名', 'name', 'String', NULL, 0, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO `sys_gen_field`
VALUES (197384954629, 197384954501, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384954630, 197384954501, 'menu_id', 'BIGINT', '菜单id', 'menuId', 'Long', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384954631, 197384954501, 'type', 'VARCHAR', '按钮权限类型', 'type', 'String', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384955845, 197384955717, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384955846, 197384955717, 'button_id', 'BIGINT', '按钮id', 'buttonId', 'Long', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384955847, 197384955717, 'role_id', 'BIGINT', '角色id', 'roleId', 'Long', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384956869, 197384956805, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384956870, 197384956805, 'permission_code', 'INTEGER', '权限', 'permissionCode', 'Integer', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384956871, 197384956805, 'dept_ids', 'VARCHAR', '指定部门', 'deptIds', 'String', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384956872, 197384956805, 'role_id', 'BIGINT', '角色id', 'roleId', 'Long', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384958213, 197384958021, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384958214, 197384958021, 'name', 'VARCHAR', '数据源名称', 'name', 'String', NULL, 0, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO `sys_gen_field`
VALUES (197384958215, 197384958021, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384958216, 197384958021, 'url', 'VARCHAR', '数据源地址', 'url', 'String', NULL, 0, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO `sys_gen_field`
VALUES (197384958217, 197384958021, 'username', 'VARCHAR', '用户名', 'username', 'String', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384958218, 197384958021, 'password', 'VARCHAR', '密码', 'password', 'String', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384958219, 197384958021, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384958220, 197384958021, 'create_time', 'TIMESTAMP', '创建日期', 'createTime', 'java.util.Date', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384958221, 197384958021, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384958222, 197384958021, 'update_time', 'TIMESTAMP', '更新日期', 'updateTime', 'java.util.Date', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384959685, 197384959493, 'dept_id', 'BIGINT', 'ID', 'deptId', 'Long', NULL, 1, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO `sys_gen_field`
VALUES (197384959686, 197384959493, 'parent_id', 'BIGINT', '父机构ID', 'parentId', 'Long', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384959687, 197384959493, 'dept_name', 'VARCHAR', '机构/部门名称', 'deptName', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384959688, 197384959493, 'dept_code', 'VARCHAR', '机构/部门编码', 'deptCode', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384959689, 197384959493, 'order_no', 'DOUBLE', '排序', 'orderNo', 'Double', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384959690, 197384959493, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384959691, 197384959493, 'status', 'INTEGER', '状态（1启用，0不启用）', 'status', 'Integer', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384959692, 197384959493, 'del_flag', 'INTEGER', '删除状态（0，正常，1已删除）', 'delFlag', 'Integer', NULL, 0, NULL, NULL,
        NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384959693, 197384959493, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384959694, 197384959493, 'create_time', 'TIMESTAMP', '创建日期', 'createTime', 'java.util.Date', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384959695, 197384959493, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384959696, 197384959493, 'update_time', 'TIMESTAMP', '更新日期', 'updateTime', 'java.util.Date', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384961093, 197384960965, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384961094, 197384960965, 'name', 'VARCHAR', '字典名称', 'name', 'String', NULL, 0, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO `sys_gen_field`
VALUES (197384961095, 197384960965, 'code', 'VARCHAR', '字典编码', 'code', 'String', NULL, 0, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO `sys_gen_field`
VALUES (197384961096, 197384960965, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384961097, 197384960965, 'del_flag', 'INTEGER', '删除状态', 'delFlag', 'Integer', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384961098, 197384960965, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384961099, 197384960965, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384961157, 197384960965, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384961158, 197384960965, 'update_time', 'TIMESTAMP', '更新时间', 'updateTime', 'java.util.Date', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384961159, 197384960965, 'type', 'INTEGER', '字典类型0为string,1为number', 'type', 'Integer', NULL, 0, NULL, NULL,
        NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384962501, 197384962373, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384962502, 197384962373, 'dict_id', 'BIGINT', '字典id', 'dictId', 'Long', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384962503, 197384962373, 'name', 'VARCHAR', '字典项文本', 'name', 'String', NULL, 0, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO `sys_gen_field`
VALUES (197384962504, 197384962373, 'value', 'VARCHAR', '字典项值', 'value', 'String', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384962505, 197384962373, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384962506, 197384962373, 'order_no', 'DOUBLE', '排序', 'orderNo', 'Double', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384963909, 197384963717, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384963910, 197384963717, 'log_type', 'VARCHAR', '日志类型', 'logType', 'String', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384963911, 197384963717, 'username', 'VARCHAR', '操作用户账号', 'username', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384963912, 197384963717, 'realname', 'VARCHAR', '操作用户名称', 'realname', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384963913, 197384963717, 'ip', 'VARCHAR', 'IP', 'ip', 'String', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384963914, 197384963717, 'method', 'VARCHAR', '请求java方法', 'method', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384963915, 197384963717, 'request_url', 'VARCHAR', '请求路径', 'requestUrl', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384963916, 197384963717, 'request_param', 'VARCHAR', '请求参数', 'requestParam', 'String', NULL, 0, NULL, NULL,
        NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384963917, 197384963717, 'request_type', 'VARCHAR', '请求类型', 'requestType', 'String', NULL, 0, NULL, NULL,
        NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384963918, 197384963717, 'cost_time', 'BIGINT', '耗时', 'costTime', 'Long', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384963919, 197384963717, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384963920, 197384963717, 'user_agent', 'VARCHAR', '浏览器', 'userAgent', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384963921, 197384963717, 'status', 'INTEGER', '状态', 'status', 'Integer', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384963922, 197384963717, 'biz_module', 'VARCHAR', '业务模块', 'bizModule', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384963923, 197384963717, 'description', 'VARCHAR', '操作描述', 'description', 'String', NULL, 0, NULL, NULL,
        NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384963924, 197384963717, 'message', 'VARCHAR', '错误信息', 'message', 'String', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384963925, 197384963717, 'exception_class', 'VARCHAR', '异常类', 'exceptionClass', 'String', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384963926, 197384963717, 'stack_trace', 'VARCHAR', '详尽异常', 'stackTrace', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384966341, 197384966149, 'id', 'BIGINT', '主键id', 'id', 'Long', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384966342, 197384966149, 'role_name', 'VARCHAR', '角色名称', 'roleName', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384966343, 197384966149, 'role_code', 'VARCHAR', '角色编码', 'roleCode', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384966344, 197384966149, 'dept_id', 'BIGINT', '部门id', 'deptId', 'Long', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384966345, 197384966149, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384966346, 197384966149, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384966347, 197384966149, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384966348, 197384966149, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384966349, 197384966149, 'update_time', 'TIMESTAMP', '更新时间', 'updateTime', 'java.util.Date', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384967621, 197384967493, 'id', 'BIGINT', NULL, 'id', 'Long', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384967622, 197384967493, 'role_id', 'BIGINT', '角色id', 'roleId', 'Long', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384967623, 197384967493, 'permission_id', 'BIGINT', '权限id', 'permissionId', 'Long', NULL, 0, NULL, NULL,
        NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384968965, 197384968837, 'id', 'BIGINT', '主键id', 'id', 'Long', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384968966, 197384968837, 'username', 'VARCHAR', '登录账号', 'username', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384968967, 197384968837, 'realname', 'VARCHAR', '真实姓名', 'realname', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384968968, 197384968837, 'password', 'VARCHAR', '密码', 'password', 'String', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384968969, 197384968837, 'avatar', 'VARCHAR', '头像', 'avatar', 'String', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384968970, 197384968837, 'sex', 'SMALLINT', '性别', 'sex', 'Short', NULL, 0, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO `sys_gen_field`
VALUES (197384968971, 197384968837, 'phone', 'VARCHAR', '电话', 'phone', 'String', NULL, 0, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO `sys_gen_field`
VALUES (197384968972, 197384968837, 'del_flag', 'SMALLINT', '删除状态(0-正常,1-已删除)', 'delFlag', 'Short', NULL, 0, NULL, NULL,
        NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384968973, 197384968837, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384968974, 197384968837, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384968975, 197384968837, 'update_by', 'VARCHAR', '更新人', 'updateBy', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384968976, 197384968837, 'update_time', 'TIMESTAMP', '更新时间', 'updateTime', 'java.util.Date', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384970181, 197384970053, 'id', 'BIGINT', '主键id', 'id', 'Long', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384970182, 197384970053, 'user_id', 'BIGINT', '用户id', 'userId', 'Long', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384970183, 197384970053, 'dept_id', 'BIGINT', '部门id', 'deptId', 'Long', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384971333, 197384971205, 'id', 'BIGINT', '主键id', 'id', 'Long', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384971334, 197384971205, 'user_id', 'BIGINT', '用户id', 'userId', 'Long', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (197384971335, 197384971205, 'role_id', 'BIGINT', '角色id', 'roleId', 'Long', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (274859735429, 274859734981, 'id', 'VARCHAR', NULL, 'id', 'String', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (274859735430, 274859734981, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (274859735431, 274859734981, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (274859735432, 274859734981, 'del_flag', 'INTEGER', '删除状态', 'delFlag', 'Integer', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (274859735433, 274859734981, 'update_by', 'VARCHAR', '修改人', 'updateBy', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (274859735434, 274859734981, 'update_time', 'TIMESTAMP', '修改时间', 'updateTime', 'java.util.Date', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (274859735435, 274859734981, 'job_name', 'VARCHAR', '任务名', 'jobName', 'String', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (274859735436, 274859734981, 'cron_expression', 'VARCHAR', 'cron表达式', 'cronExpression', 'String', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (274859735437, 274859734981, 'parameter', 'VARCHAR', '参数', 'parameter', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (274859735438, 274859734981, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (274859735439, 274859734981, 'status', 'INTEGER', '状态 0正常 -1停止', 'status', 'Integer', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (274868829253, 274868828933, 'id', 'VARCHAR', NULL, 'id', 'String', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (274868829254, 274868828933, 'create_by', 'VARCHAR', '创建人', 'createBy', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (274868829255, 274868828933, 'create_time', 'TIMESTAMP', '创建时间', 'createTime', 'java.util.Date', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (274868829256, 274868828933, 'del_flag', 'INTEGER', '删除状态', 'delFlag', 'Integer', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (274868829257, 274868828933, 'update_by', 'VARCHAR', '修改人', 'updateBy', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (274868829258, 274868828933, 'update_time', 'TIMESTAMP', '修改时间', 'updateTime', 'java.util.Date', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (274868829259, 274868828933, 'name', 'VARCHAR', '任务名', 'name', 'String', NULL, 0, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO `sys_gen_field`
VALUES (274868829260, 274868828933, 'cron', 'VARCHAR', 'cron表达式', 'cron', 'String', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (274868829261, 274868828933, 'parameter', 'VARCHAR', '参数', 'parameter', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (274868829262, 274868828933, 'description', 'VARCHAR', '描述', 'description', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (274868829263, 274868828933, 'status', 'INTEGER', '状态 0正常 -1停止', 'status', 'Integer', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (287265331525, 287265330309, 'id', 'BIGINT', 'id', 'id', 'Long', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (287265331526, 287265330309, 'table_id', 'BIGINT', '表ID', 'tableId', 'Long', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (287265331527, 287265330309, 'column_name', 'VARCHAR', '字段名称', 'columnName', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (287265331528, 287265330309, 'column_type', 'VARCHAR', '字段类型', 'columnType', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (287265331529, 287265330309, 'column_comment', 'VARCHAR', '字段说明', 'columnComment', 'String', NULL, 0, NULL, NULL,
        NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (287265331530, 287265330309, 'attr_name', 'VARCHAR', '属性名', 'attrName', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (287265331531, 287265330309, 'attr_type', 'VARCHAR', '属性类型', 'attrType', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (287265331532, 287265330309, 'order_no', 'INTEGER', '排序', 'orderNo', 'Integer', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (287265331533, 287265330309, 'primary_pk', 'SMALLINT', '主键 0：否  1：是', 'primaryPk', 'Short', NULL, 0, NULL, NULL,
        NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (287265331534, 287265330309, 'show_list_type', 'SMALLINT', '列表页显示方式', 'showListType', 'Short', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (287265331535, 287265330309, 'valid_type', 'VARCHAR', '校验方式', 'validType', 'String', NULL, 0, NULL, NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (287265331536, 287265330309, 'dict_code', 'VARCHAR', '字典', 'dictCode', 'String', NULL, 0, NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `sys_gen_field`
VALUES (287265331537, 287265330309, 'show_edit_type', 'SMALLINT', '编辑页显示方式', 'showEditType', 'Short', NULL, 0, NULL,
        NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_gen_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_gen_group`;
CREATE TABLE `sys_gen_group`
(
    `id`   bigint(20)                                                    NOT NULL COMMENT 'id',
    `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表名',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '模板配置组'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_gen_group
-- ----------------------------
INSERT INTO `sys_gen_group`
VALUES (82324589637, '基础模板组');

-- ----------------------------
-- Table structure for sys_gen_table
-- ----------------------------
DROP TABLE IF EXISTS `sys_gen_table`;
CREATE TABLE `sys_gen_table`
(
    `id`            bigint(20)                                                    NOT NULL COMMENT 'id',
    `table_name`    varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表名',
    `class_name`    varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类名',
    `table_comment` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '说明',
    `create_time`   datetime(0)                                                   NULL DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime(0)                                                   NULL DEFAULT NULL COMMENT '创建时间',
    `create_by`     varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '创建人',
    `update_by`     varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '更新人',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '代码生成表'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_gen_table
-- ----------------------------
INSERT INTO `sys_gen_table`
VALUES (190414497349, 'sys_menu', 'SysMenu', '菜单权限表', '2023-02-04 10:27:07', NULL, 'admin', NULL);
INSERT INTO `sys_gen_table`
VALUES (197384943109, 'gen_base_class', 'GenBaseClass', '基类管理', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `sys_gen_table`
VALUES (197384947013, 'gen_field_type', 'GenFieldType', '字段类型管理', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `sys_gen_table`
VALUES (197384948549, 'gen_table', 'GenTable', '代码生成表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `sys_gen_table`
VALUES (197384952389, 'gen_template', 'GenTemplate', '模板配置', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `sys_gen_table`
VALUES (197384953477, 'gen_template_group', 'GenTemplateGroup', '模板配置组', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `sys_gen_table`
VALUES (197384954501, 'sys_button', 'SysButton', '角色权限表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `sys_gen_table`
VALUES (197384955717, 'sys_button_permission', 'SysButtonPermission', '角色权限表', '2023-02-05 16:42:20', NULL, 'admin',
        NULL);
INSERT INTO `sys_gen_table`
VALUES (197384956805, 'sys_data_permission', 'SysDataPermission', '角色权限表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `sys_gen_table`
VALUES (197384958021, 'sys_data_source', 'SysDataSource', NULL, '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `sys_gen_table`
VALUES (197384959493, 'sys_dept', 'SysDept', '组织机构表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `sys_gen_table`
VALUES (197384960965, 'sys_dict', 'SysDict', NULL, '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `sys_gen_table`
VALUES (197384962373, 'sys_dict_item', 'SysDictItem', NULL, '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `sys_gen_table`
VALUES (197384963717, 'sys_log', 'SysLog', '系统日志表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `sys_gen_table`
VALUES (197384966149, 'sys_role', 'SysRole', '角色表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `sys_gen_table`
VALUES (197384967493, 'sys_role_permission', 'SysRolePermission', '角色权限表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `sys_gen_table`
VALUES (197384968837, 'sys_user', 'SysUser', '用户表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `sys_gen_table`
VALUES (197384970053, 'sys_user_dept', 'SysUserDept', '用户部门表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `sys_gen_table`
VALUES (197384971205, 'sys_user_role', 'SysUserRole', '用户角色表', '2023-02-05 16:42:20', NULL, 'admin', NULL);
INSERT INTO `sys_gen_table`
VALUES (274868828933, 'sys_quartz', 'SysQuartz', '定时任务', '2023-02-19 17:00:25', NULL, 'admin', NULL);
INSERT INTO `sys_gen_table`
VALUES (287265330309, 'gen_table_field', 'GenTableField', '代码生成表字段', '2023-02-21 22:48:41', NULL, 'admin', NULL);

-- ----------------------------
-- Table structure for sys_gen_template
-- ----------------------------
DROP TABLE IF EXISTS `sys_gen_template`;
CREATE TABLE `sys_gen_template`
(
    `id`          bigint(20)                                                    NOT NULL COMMENT 'id',
    `name`        varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模板名称',
    `content`     longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci     NULL,
    `create_time` datetime(0)                                                   NULL DEFAULT NULL COMMENT '创建时间',
    `update_by`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '更新人登录名称',
    `update_time` datetime(0)                                                   NULL DEFAULT NULL COMMENT '更新日期',
    `create_by`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '创建人登录名称',
    `group_id`    bigint(20)                                                    NULL DEFAULT NULL COMMENT '分组id',
    `file_name`   varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模板文件名',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '模板配置'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_gen_template
-- ----------------------------
INSERT INTO `sys_gen_template`
VALUES (192034258629, '编辑视图',
        'package ${packageName}.${moduleName}.${entityName}.table;\n\nimport com.moxa.dream.system.annotation.View;\nimport lombok.Data;\nimport ${packageName}.${moduleName}.${entityName}.table.${className};\n\n/**\n * @Description: ${tableComment!\'\'}\n * @Author: ${author!\'\'}\n * @Date: ${.now?string[\"yyyy-MM-dd HH:mm:ss\"]}\n */\n@Data\n@View(${className}.class)\n<#if baseClass??>\npublic class ${className}EV extends ${baseClass} {\n<#else>\npublic class ${className}EV {  \n</#if>  \n    <#list columns as column>\n    <#if !baseFields??||baseFields?seq_index_of(\"${column.attrName}\")==-1>\n		/**\n     * ${column.columnComment}\n     */\n    private ${column.attrType} ${column.attrName};\n		</#if>\n</#list>\n}',
        '2023-02-04 17:28:55', 'admin', '2023-02-21 22:47:33', 'admin', 82324589637, '${className}EV.java');
INSERT INTO `sys_gen_template`
VALUES (192578414789, '查询条件接受类',
        'package ${packageName}.${moduleName}.${entityName}.model;\n\nimport lombok.Data;\n\n@Data\npublic class ${className}Model {\n  \n}',
        '2023-02-04 19:50:38', 'admin', '2023-02-04 19:54:07', 'admin', 82324589637, '${className}Model.java');
INSERT INTO `sys_gen_template`
VALUES (192596589061, '列表视图',
        'package ${packageName}.${moduleName}.${entityName}.view;\n\nimport lombok.Data;\n\n@Data\npublic class ${className}LV {\n  \n}',
        '2023-02-04 19:55:22', 'admin', '2023-02-21 22:46:59', 'admin', 82324589637, '${className}LV.java');
INSERT INTO `sys_gen_template`
VALUES (192608309829, '接口服务类',
        'package ${packageName}.${moduleName}.${entityName}.service;\n\nimport com.moxa.dream.template.service.IService;\nimport ${packageName}.${moduleName}.${entityName}.view.${className}ListView;\nimport ${packageName}.${moduleName}.${entityName}.view.${className}EditView;\n\n\npublic class I${className}Service extends IService<${className}ListView,${className}EditView> {\n  \n}',
        '2023-02-04 19:58:25', NULL, NULL, 'admin', 82324589637, 'I${className}Service.java');
INSERT INTO `sys_gen_template`
VALUES (192619070789, '接口实现类',
        'package ${packageName}.${moduleName}.${entityName}.service.impl;\n\nimport com.moxa.dream.template.service.IService;\nimport ${packageName}.${moduleName}.${entityName}.service.I${className}Service;\nimport ${packageName}.${moduleName}.${entityName}.view.${className}ListView;\nimport ${packageName}.${moduleName}.${entityName}.view.${className}EditView;\nimport org.springframework.stereotype.Service;\n\n@Service\npublic class ${className}ServiceImpl extends ServiceImpl<${className}ListView,${className}EditView> implements I${className}Service{\n  \n}',
        '2023-02-04 20:01:13', NULL, NULL, 'admin', 82324589637, '${className}ServiceImpl.java');
INSERT INTO `sys_gen_template`
VALUES (192633866053, '视图控制类',
        'package ${packageName}.${moduleName}.${entityName}.service.impl;\n\nimport com.moxa.sooth.core.base.controller.BaseController;\nimport ${packageName}.${moduleName}.${entityName}.service.I${className}Service;\nimport ${packageName}.${moduleName}.${entityName}.model.${className}Model;\nimport ${packageName}.${moduleName}.${entityName}.view.${className}EditView;\nimport org.springframework.web.bind.annotation.*;\n\n@RestController\n@RequestMapping(\"/${moduleName}/${entityName}\")\npublic class ${className}Controller extends BaseController<I${className}Service, ${className}EditView, ${className}Model>{\n  \n}',
        '2023-02-04 20:05:04', NULL, NULL, 'admin', 82324589637, '${className}Controller.java');
INSERT INTO `sys_gen_template`
VALUES (192662837189, 'api请求页',
        'import { BaseApi } from \'/@/api/base/baseApi\';\n\nclass ${entityName?cap_first}Api extends BaseApi {\n  constructor(requestUrl) {\n    super(requestUrl);\n  }\n}\n\nexport const ${entityName}Api = new ${entityName?cap_first}Api(\'/${moduleName}/${entityName}\').api;',
        '2023-02-04 20:12:37', 'admin', '2023-02-04 20:13:07', 'admin', 82324589637, '${entityName}.api.ts');
INSERT INTO `sys_gen_template`
VALUES (192688658309, '列表页',
        '<template>\n  <div>\n    <BasicTable @register=\"registerTable\">\n      <template #toolbar>\n        <Button v-auth=\"PermEnum.ADD\" type=\"primary\" @click=\"handleAdd\"> 新增</Button>\n      </template>\n      <template #selected>\n        <a v-auth=\"PermEnum.REMOVE_BATCH\" @click=\"handleRemoveBatch\">删除</a>\n      </template>\n      <template #action=\"{ record }\">\n        <TableAction\n          :actions=\"getTableAction(record)\"\n          :dropDownActions=\"getDropDownAction(record)\"\n        />\n      </template>\n    </BasicTable>\n    <${entityName?cap_first}Modal @register=\"registerModal\" @success=\"handleSuccess\" />\n  </div>\n</template>\n<script lang=\"ts\" name=\"system-dept\" setup>\n  import { Button } from \'ant-design-vue\';\n  import { BasicTable, useTable, TableAction, ActionItem } from \'/@/components/Table\';\n  import { PermEnum } from \'/@/enums/permEnum\';\n  import { useModal } from \'/@/components/Modal\';\n  import ${entityName?cap_first}Modal from \'./${entityName?cap_first}Modal.vue\';\n  import { columns, searchFormSchema } from \'./${entityName}.data\';\n  import { ${entityName}Api } from \'./${entityName}.api.api\';\n  const [registerModal, { openModal }] = useModal();\n  const [registerTable, { reload, getSelectRowKeys }] = useTable({\n    title: \'列表\',\n    api: ${entityName}Api.page,\n    columns,\n    formConfig: {\n      labelWidth: 80,\n      schemas: searchFormSchema,\n    },\n    useSearchForm: true,\n    showTableSetting: true,\n    bordered: true,\n    actionColumn: {\n      width: 120,\n      title: \'操作\',\n    },\n  });\n\n  function handleAdd() {\n    openModal(true, {\n      isUpdate: false,\n    });\n  }\n\n  function handleEdit(record: Recordable) {\n    openModal(true, {\n      record,\n      isUpdate: true,\n    });\n  }\n\n  async function handleDelete(record: Recordable) {\n    await ${entityName}Api.remove({ id: record.deptId });\n    reload();\n  }\n  async function handleRemoveBatch() {\n    const selectRowKeys = getSelectRowKeys();\n    await ${entityName}Api.removeBatch(selectRowKeys, reload);\n  }\n  function handleSuccess() {\n    reload();\n  }\n\n  function getTableAction(record): ActionItem[] {\n    return [\n      {\n        tooltip: \'修改\',\n        icon: \'clarity:note-edit-line\',\n        onClick: handleEdit.bind(null, record),\n        auth: PermEnum.EDIT,\n      },\n      {\n        tooltip: \'删除\',\n        icon: \'ant-design:delete-outlined\',\n        color: \'error\',\n        auth: PermEnum.REMOVE,\n        popConfirm: {\n          title: \'是否确认删除\',\n          confirm: handleDelete.bind(null, record),\n        },\n      },\n    ];\n  }\n\n  function getDropDownAction(record): ActionItem[] | null {\n    return null;\n  }\n</script>',
        '2023-02-04 20:19:20', NULL, NULL, 'admin', 82324589637, 'index.vue');
INSERT INTO `sys_gen_template`
VALUES (192702147397, '弹窗页',
        '<template>\n  <BasicModal v-bind=\"$attrs\" @register=\"registerModal\" :title=\"getTitle\" @ok=\"handleSubmit\">\n    <BasicForm @register=\"registerForm\" />\n  </BasicModal>\n</template>\n<script lang=\"ts\">\n  import { defineComponent, ref, computed, unref } from \'vue\';\n  import { BasicModal, useModalInner } from \'/@/components/Modal\';\n  import { BasicForm, useForm } from \'/@/components/Form/index\';\n  import { formSchema } from \'./${entityName}.data\';\n\n  import { ${entityName}Api } from \'./${entityName}.api\';\n\n  export default defineComponent({\n    name: \'${entityName?cap_first}Modal\',\n    components: { BasicModal, BasicForm },\n    emits: [\'success\', \'register\'],\n    setup(_, { emit }) {\n      const isUpdate = ref(true);\n\n      const [registerForm, { setFieldsValue, updateSchema, validate }] = useForm({\n        labelWidth: 80,\n        baseColProps: { span: 24 },\n        schemas: formSchema,\n        showActionButtonGroup: false,\n      });\n\n      const [registerModal, { openOKLoading, closeModal }] = useModalInner(async (data) => {\n        isUpdate.value = !!data?.isUpdate;\n        if (unref(isUpdate)) {\n          setFieldsValue({\n            ...data.record,\n          });\n      });\n\n      const getTitle = computed(() => (!unref(isUpdate) ? \'新增\' : \'编辑\'));\n\n      async function handleSubmit() {\n        const values = await validate();\n        openOKLoading(async () => {\n          await ${entityName}Api.saveOrEdit(values, unref(isUpdate));\n          closeModal();\n          emit(\'success\');\n        });\n      }\n      return { registerModal, registerForm, getTitle, handleSubmit };\n    },\n  });\n</script>',
        '2023-02-04 20:22:51', NULL, NULL, 'admin', 82324589637, '${entityName?cap_first}.vue');
INSERT INTO `sys_gen_template`
VALUES (192707297157, '数据页',
        'import { BasicColumn } from \'/@/components/Table\';\nimport { FormSchema } from \'/@/components/Table\';\n\nexport const columns: BasicColumn[] = [\n];\n\nexport const searchFormSchema: FormSchema[] = [\n];\n\nexport const formSchema: FormSchema[] = [\n];',
        '2023-02-04 20:24:12', NULL, NULL, 'admin', 82324589637, '${entityName}.data.ts');
INSERT INTO `sys_gen_template`
VALUES (362832993636357, '数据库表java类映射',
        'package ${packageName}.${moduleName}.${entityName}.table;\n\nimport com.moxa.dream.system.annotation.Column;\nimport com.moxa.dream.system.annotation.Id;\nimport com.moxa.dream.system.annotation.Table;\nimport lombok.Data;\n\nimport java.sql.Types;\n\n/**\n * @Description: ${tableComment!\'\'}\n * @Author: ${author!\'\'}\n * @Date: ${.now?string[\"yyyy-MM-dd HH:mm:ss\"]}\n */\n@Data\n@Table(\"${tableName}\")\npublic class ${className} {\n\n    <#list columns as column>\n  \n		/**\n     * ${column.columnComment!\'\'}\n     */\n    <#if column.primaryPk>\n    @Id\n    </#if>\n    @Column(value = \"${column.columnName}\", jdbcType = Types.${column.columnType})\n    private ${column.attrType} ${column.attrName};\n</#list>\n}',
        '2022-12-11 08:31:15', 'admin', '2023-02-19 17:03:06', NULL, 82324589637, '${className}.java');

-- ----------------------------
-- Table structure for sys_interface_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_interface_permission`;
CREATE TABLE `sys_interface_permission`
(
    `id`      bigint(20)                                                    NOT NULL,
    `url`     varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '接口url',
    `role_id` bigint(20)                                                    NULL DEFAULT NULL COMMENT '角色id',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '角色权限表'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`
(
    `id`              bigint(20)                                                    NOT NULL,
    `log_type`        varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志类型',
    `username`        varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作用户账号',
    `realname`        varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作用户名称',
    `ip`              varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'IP',
    `method`          longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci     NULL COMMENT '请求java方法',
    `request_url`     varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求路径',
    `request_param`   longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci     NULL COMMENT '请求参数',
    `request_type`    varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '请求类型',
    `cost_time`       bigint(20)                                                    NULL DEFAULT NULL COMMENT '耗时',
    `create_time`     datetime(0)                                                   NULL DEFAULT NULL COMMENT '创建时间',
    `user_agent`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '浏览器',
    `status`          int(11)                                                       NULL DEFAULT NULL COMMENT '状态',
    `biz_module`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务模块',
    `description`     varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作描述',
    `message`         varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '错误信息',
    `exception_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '异常类',
    `stack_trace`     longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci     NULL COMMENT '详尽异常',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '系统日志表'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`
(
    `id`             bigint(20)                                                    NOT NULL COMMENT '主键id',
    `parent_id`      bigint(20)                                                    NULL DEFAULT NULL COMMENT '父id',
    `name`           varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单标题',
    `url`            varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路径',
    `component`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件',
    `redirect`       varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '一级菜单跳转地址',
    `menu_type`      int(11)                                                       NULL DEFAULT NULL COMMENT '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)',
    `sort_no`        double                                                        NULL DEFAULT NULL COMMENT '菜单排序',
    `fixed_tab`      smallint(6)                                                   NULL DEFAULT NULL COMMENT '聚合子路由: 1是0否',
    `icon`           varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
    `hidden`         int(11)                                                       NULL DEFAULT NULL COMMENT '是否隐藏路由: 0否,1是',
    `hide_tab`       int(11)                                                       NULL DEFAULT NULL COMMENT '是否隐藏tab: 0否,1是',
    `description`    varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
    `create_by`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
    `create_time`    datetime(0)                                                   NULL DEFAULT NULL COMMENT '创建时间',
    `update_by`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
    `update_time`    datetime(0)                                                   NULL DEFAULT NULL COMMENT '更新时间',
    `del_flag`       int(11)                                                       NULL DEFAULT NULL COMMENT '删除状态 0正常 1已删除',
    `keep_alive`     smallint(6)                                                   NULL DEFAULT NULL COMMENT '缓存路由: 1是0否',
    `component_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件名称',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu`
VALUES (1, NULL, '系统管理', '/system', 'layouts/default/index', '/system/user', 0, 2, 0, 'ant-design:setting', 0, 0, NULL,
        NULL, '2018-12-25 20:34:38', 'admin', '2022-12-20 23:27:32', 0, NULL, 'system');
INSERT INTO `sys_menu`
VALUES (2, 22, '角色管理', '/privilege/role', 'privilege/role/index', NULL, 1, 2, 0, 'ant-design:solution', 0, 0, NULL,
        NULL, '2018-12-25 20:34:38', 'admin', '2023-01-13 21:35:23', 0, 1, 'privilege-role');
INSERT INTO `sys_menu`
VALUES (3, 1, '用户管理', '/system/user', 'system/user/index', NULL, 1, 1, 0, 'ant-design:user', 0, 0, NULL, NULL,
        '2018-12-25 20:34:38', 'admin', '2023-02-02 00:09:56', 0, 1, 'system-user');
INSERT INTO `sys_menu`
VALUES (4, 1, '部门管理', '/system/dept', 'system/dept/index', NULL, 1, 2, 0, 'ant-design:team', 0, 0, NULL, 'admin',
        '2019-01-29 18:47:40', 'admin', '2023-01-29 22:07:03', 0, 1, 'system-dept');
INSERT INTO `sys_menu`
VALUES (5, 22, '菜单管理', '/privilege/menu', 'privilege/menu/index', NULL, 1, 1, 0, 'ant-design:menu-outlined', 0, 0, NULL,
        'admin', '2019-09-08 15:00:05', 'admin', '2023-01-27 10:43:27', 0, 1, 'privilege-menu');
INSERT INTO `sys_menu`
VALUES (6, NULL, 'Dashboard', '/dashboard', 'layouts/default/index', '/dashboard/home', 0, 1, 0, 'ion:grid-outline', 0,
        0, NULL, 'admin', '2021-09-15 19:51:23', 'admin', '2023-02-19 16:54:31', 0, 0, 'dashboard');
INSERT INTO `sys_menu`
VALUES (8, 15, '数据字典', '/basic/dict', 'basic/dict/index', NULL, 1, 1, 0, 'ant-design:hdd-twotone', 0, 0, NULL, 'admin',
        '2021-09-17 16:31:27', 'admin', '2023-02-18 21:11:09', 0, 1, 'basic-dict');
INSERT INTO `sys_menu`
VALUES (9, NULL, '系统监控', '/monitor', 'layouts/default/index', NULL, 0, 5, 0, 'ant-design:video-camera-filled', 0, 0,
        NULL, 'admin', '2021-09-19 09:19:22', 'admin', '2022-12-20 23:27:52', 0, NULL, 'monitor');
INSERT INTO `sys_menu`
VALUES (11, 16, '数据源管理', '/generate/datasource', 'generate/datasource/index', NULL, 1, 3, 0, 'ant-design:hdd-filled', 0,
        0, NULL, 'admin', '2021-09-19 16:48:17', 'admin', '2023-01-13 22:19:14', 0, 1, 'generate-datasource');
INSERT INTO `sys_menu`
VALUES (12, 15, '日志管理', '/basic/log', 'basic/log/index', NULL, 1, 5, 0, 'ant-design:interaction-outlined', 0, 0, NULL,
        'admin', '2021-09-19 18:15:56', 'admin', '2023-01-15 15:00:17', 0, 1, 'basic-log');
INSERT INTO `sys_menu`
VALUES (13, 9, '性能监控', '/monitor/server', 'monitor/server/index', NULL, 1, 9, 0, 'ant-design:thunderbolt-filled', 0, 0,
        NULL, 'admin', '2021-09-20 11:42:22', 'admin', '2023-01-02 00:20:10', 0, 1, 'monitor-server');
INSERT INTO `sys_menu`
VALUES (14, 9, 'Redis监控', '/monitor/redis', 'monitor/redis/index', NULL, 1, 10, 0, 'ant-design:trademark-outlined', 0,
        0, NULL, 'admin', '2021-09-20 14:31:04', 'admin', '2023-01-02 00:20:17', 0, 1, 'monitor-redis');
INSERT INTO `sys_menu`
VALUES (15, NULL, '基础管理', '/basic', 'layouts/default/index', NULL, 0, 3, 0, 'ant-design:android-outlined', 0, 0, NULL,
        'admin', '2022-11-12 20:34:52', 'admin', '2022-12-20 23:27:39', 0, NULL, 'basic');
INSERT INTO `sys_menu`
VALUES (16, NULL, '代码生成', '/generate', 'layouts/default/index', NULL, 0, 3, 0, 'ant-design:block-outlined', 0, 0, NULL,
        'admin', '2022-11-18 20:22:43', 'admin', '2023-02-10 20:50:41', 0, 0, 'generate');
INSERT INTO `sys_menu`
VALUES (17, 16, '类型映射', '/generate/field-type', 'generate/field-type/index', NULL, 1, 1, 0,
        'ant-design:gateway-outlined', 0, 0, NULL, 'admin', '2022-11-18 20:26:01', 'admin', '2023-01-12 08:52:09', 0, 1,
        'generate-field-type');
INSERT INTO `sys_menu`
VALUES (18, 16, '基类管理', '/generate/base-class', 'generate/base-class/index', NULL, 1, 1, 0, 'ant-design:flag-twotone',
        0, 0, NULL, 'admin', '2022-11-18 20:29:20', 'admin', '2023-01-12 08:51:49', 0, 1, 'generate-base-class');
INSERT INTO `sys_menu`
VALUES (19, 16, '代码生成', '/generate/code-gen', 'generate/code-gen/index', NULL, 1, 1, 0, 'ant-design:file-word-outlined',
        0, 0, NULL, 'admin', '2022-11-18 20:30:52', 'admin', '2023-01-12 08:51:26', 0, 1, 'generate-code-gen');
INSERT INTO `sys_menu`
VALUES (20, 16, '模板配置', '/generate/template', 'generate/template/index', NULL, 1, 1, 0,
        'ant-design:radius-setting-outlined', 0, 0, NULL, 'admin', '2022-11-29 21:24:46', 'admin',
        '2023-01-12 08:50:42', 0, 1, 'generate-template');
INSERT INTO `sys_menu`
VALUES (21, 6, '首页', '/dashboard/home', 'dashboard/home/index', NULL, 1, 1, 1, 'ant-design:home-twotone', 0, 0, NULL,
        'admin', '2022-12-20 23:12:49', 'admin', '2023-01-25 15:16:46', 0, 1, 'dashboard-home');
INSERT INTO `sys_menu`
VALUES (22, NULL, '权限管理', '/privilege', 'layouts/default/index', '', 0, 4, 0, 'ant-design:property-safety-outlined', 0,
        0, NULL, 'admin', '2023-01-13 20:47:59', 'admin', '2023-01-13 20:49:22', 0, NULL, 'privilege');
INSERT INTO `sys_menu`
VALUES (23, 1, '账户设置', '/system/setting', '/system/setting/index', NULL, 1, 10, 0, 'ant-design:user-switch-outlined', 1,
        0, NULL, 'admin', '2023-01-13 23:47:22', 'admin', '2023-01-26 15:50:00', 0, 1, 'system-setting');
INSERT INTO `sys_menu`
VALUES (270244951749, 15, '定时任务', '/basic/quartz', 'basic/quartz/index', NULL, 1, 3, 0,
        'ant-design:field-time-outlined', 0, 0, NULL, 'admin', '2023-02-18 20:56:17', 'admin', '2023-02-18 21:23:51', 0,
        0, 'quartz');

-- ----------------------------
-- Table structure for sys_quartz
-- ----------------------------
DROP TABLE IF EXISTS `sys_quartz`;
CREATE TABLE `sys_quartz`
(
    `id`          bigint(20)                                                    NOT NULL,
    `create_by`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '创建人',
    `create_time` datetime(0)                                                   NULL DEFAULT NULL COMMENT '创建时间',
    `del_flag`    int(11)                                                       NULL DEFAULT NULL COMMENT '删除状态',
    `update_by`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '修改人',
    `update_time` datetime(0)                                                   NULL DEFAULT NULL COMMENT '修改时间',
    `name`        varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务名',
    `cron`        varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'cron表达式',
    `parameter`   varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '参数',
    `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '定时任务'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_quartz
-- ----------------------------
INSERT INTO `sys_quartz`
VALUES (275051435013, 'admin', '2023-02-19 17:47:59', 0, 'admin', '2023-02-19 21:57:33', 'testJob', '* * * * * ? *',
        '{\'type\':\'A\'}', '测试任务');

-- ----------------------------
-- Table structure for sys_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_quartz_job`;
CREATE TABLE `sys_quartz_job`
(
    `id`              varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL,
    `create_by`       varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL DEFAULT NULL COMMENT '创建人',
    `create_time`     datetime(0)                                             NULL DEFAULT NULL COMMENT '创建时间',
    `del_flag`        int(1)                                                  NULL DEFAULT NULL COMMENT '删除状态',
    `update_by`       varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL DEFAULT NULL COMMENT '修改人',
    `update_time`     datetime(0)                                             NULL DEFAULT NULL COMMENT '修改时间',
    `job_name`        varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名',
    `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'cron表达式',
    `parameter`       varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
    `description`     varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
    `status`          int(1)                                                  NULL DEFAULT NULL COMMENT '状态 0正常 -1停止',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`
(
    `id`          bigint(20)                                                    NOT NULL COMMENT '主键id',
    `role_name`   varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色名称',
    `role_code`   varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色编码',
    `dept_id`     bigint(20)                                                    NULL DEFAULT NULL COMMENT '部门id',
    `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
    `create_by`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '创建人',
    `create_time` datetime(0)                                                   NULL DEFAULT NULL COMMENT '创建时间',
    `update_by`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '更新人',
    `update_time` datetime(0)                                                   NULL DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '角色表'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role`
VALUES (1, '管理员', 'admin', 42083908293, '管理员', NULL, '2018-12-21 18:03:39', 'admin', '2023-02-11 23:34:42');
INSERT INTO `sys_role`
VALUES (131517140997, '测试员', 'test', 42202626373, NULL, 'admin', '2023-01-24 18:49:15', 'admin', '2023-02-04 09:46:59');
INSERT INTO `sys_role`
VALUES (226157928197, '管理员1', 'admin1', 1, NULL, 'admin', '2023-02-10 21:35:18', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`
(
    `id`            bigint(20) NOT NULL,
    `role_id`       bigint(20) NULL DEFAULT NULL COMMENT '角色id',
    `permission_id` bigint(20) NULL DEFAULT NULL COMMENT '权限id',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '角色权限表'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission`
VALUES (71181784773, 1, 6);
INSERT INTO `sys_role_permission`
VALUES (71181784774, 1, 21);
INSERT INTO `sys_role_permission`
VALUES (71181784837, 1, 1);
INSERT INTO `sys_role_permission`
VALUES (71181784838, 1, 3);
INSERT INTO `sys_role_permission`
VALUES (71181784839, 1, 2);
INSERT INTO `sys_role_permission`
VALUES (71181784840, 1, 4);
INSERT INTO `sys_role_permission`
VALUES (71181784841, 1, 15);
INSERT INTO `sys_role_permission`
VALUES (71181784843, 1, 11);
INSERT INTO `sys_role_permission`
VALUES (71181784844, 1, 12);
INSERT INTO `sys_role_permission`
VALUES (71181784845, 1, 8);
INSERT INTO `sys_role_permission`
VALUES (71181784846, 1, 16);
INSERT INTO `sys_role_permission`
VALUES (71181784847, 1, 17);
INSERT INTO `sys_role_permission`
VALUES (71181784848, 1, 18);
INSERT INTO `sys_role_permission`
VALUES (71181784849, 1, 19);
INSERT INTO `sys_role_permission`
VALUES (71181784850, 1, 20);
INSERT INTO `sys_role_permission`
VALUES (71181784851, 1, 22);
INSERT INTO `sys_role_permission`
VALUES (71181784852, 1, 5);
INSERT INTO `sys_role_permission`
VALUES (71181784853, 1, 9);
INSERT INTO `sys_role_permission`
VALUES (71181784854, 1, 13);
INSERT INTO `sys_role_permission`
VALUES (71181784855, 1, 14);
INSERT INTO `sys_role_permission`
VALUES (71199952453, 1, 23);
INSERT INTO `sys_role_permission`
VALUES (162361300613, 131517140997, 6);
INSERT INTO `sys_role_permission`
VALUES (162361300614, 131517140997, 21);
INSERT INTO `sys_role_permission`
VALUES (162361300615, 131517140997, 1);
INSERT INTO `sys_role_permission`
VALUES (162361300616, 131517140997, 3);
INSERT INTO `sys_role_permission`
VALUES (162361300617, 131517140997, 4);
INSERT INTO `sys_role_permission`
VALUES (162361300618, 131517140997, 23);
INSERT INTO `sys_role_permission`
VALUES (162361300619, 131517140997, 16);
INSERT INTO `sys_role_permission`
VALUES (162361300620, 131517140997, 18);
INSERT INTO `sys_role_permission`
VALUES (162361300621, 131517140997, 19);
INSERT INTO `sys_role_permission`
VALUES (162361300622, 131517140997, 17);
INSERT INTO `sys_role_permission`
VALUES (162361300623, 131517140997, 20);
INSERT INTO `sys_role_permission`
VALUES (162361300624, 131517140997, 11);
INSERT INTO `sys_role_permission`
VALUES (162361300625, 131517140997, 15);
INSERT INTO `sys_role_permission`
VALUES (162361300626, 131517140997, 12);
INSERT INTO `sys_role_permission`
VALUES (162361300627, 131517140997, 8);
INSERT INTO `sys_role_permission`
VALUES (162361300628, 131517140997, 22);
INSERT INTO `sys_role_permission`
VALUES (162361300629, 131517140997, 5);
INSERT INTO `sys_role_permission`
VALUES (162361300630, 131517140997, 2);
INSERT INTO `sys_role_permission`
VALUES (162361300631, 131517140997, 9);
INSERT INTO `sys_role_permission`
VALUES (162361300632, 131517140997, 13);
INSERT INTO `sys_role_permission`
VALUES (162361300633, 131517140997, 14);
INSERT INTO `sys_role_permission`
VALUES (226159395909, 226157928197, 6);
INSERT INTO `sys_role_permission`
VALUES (226159395910, 226157928197, 21);
INSERT INTO `sys_role_permission`
VALUES (226159395911, 226157928197, 1);
INSERT INTO `sys_role_permission`
VALUES (226159395912, 226157928197, 3);
INSERT INTO `sys_role_permission`
VALUES (226159395913, 226157928197, 4);
INSERT INTO `sys_role_permission`
VALUES (226159395914, 226157928197, 23);
INSERT INTO `sys_role_permission`
VALUES (226159395915, 226157928197, 16);
INSERT INTO `sys_role_permission`
VALUES (226159395916, 226157928197, 20);
INSERT INTO `sys_role_permission`
VALUES (226159395917, 226157928197, 17);
INSERT INTO `sys_role_permission`
VALUES (226159395918, 226157928197, 18);
INSERT INTO `sys_role_permission`
VALUES (226159395919, 226157928197, 19);
INSERT INTO `sys_role_permission`
VALUES (226159395920, 226157928197, 11);
INSERT INTO `sys_role_permission`
VALUES (226159395921, 226157928197, 15);
INSERT INTO `sys_role_permission`
VALUES (226159395922, 226157928197, 12);
INSERT INTO `sys_role_permission`
VALUES (226159395923, 226157928197, 8);
INSERT INTO `sys_role_permission`
VALUES (226159395924, 226157928197, 22);
INSERT INTO `sys_role_permission`
VALUES (226159395925, 226157928197, 5);
INSERT INTO `sys_role_permission`
VALUES (226159395926, 226157928197, 2);
INSERT INTO `sys_role_permission`
VALUES (226159395927, 226157928197, 9);
INSERT INTO `sys_role_permission`
VALUES (226159395928, 226157928197, 13);
INSERT INTO `sys_role_permission`
VALUES (226159395929, 226157928197, 14);
INSERT INTO `sys_role_permission`
VALUES (270341797317, 1, 270244951749);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`
(
    `id`          bigint(20)                                                    NOT NULL COMMENT '主键id',
    `username`    varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录账号',
    `realname`    varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
    `password`    varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
    `avatar`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
    `sex`         smallint(6)                                                   NULL DEFAULT NULL COMMENT '性别',
    `phone`       varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '电话',
    `del_flag`    smallint(6)                                                   NULL DEFAULT NULL COMMENT '删除状态(0-正常,1-已删除)',
    `create_by`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '创建人',
    `create_time` datetime(0)                                                   NULL DEFAULT NULL COMMENT '创建时间',
    `update_by`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '更新人',
    `update_time` datetime(0)                                                   NULL DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '用户表'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user`
VALUES (1, 'admin', '管理员', '$2a$10$GK123CZgMaU2HQXFJGM46Or3EcQyZktQm6xeN1rR548Zvb/KA6QPG', '', 0, '', 0, NULL,
        '2019-06-21 17:54:10', 'admin', '2023-02-19 16:48:22');
INSERT INTO `sys_user`
VALUES (85465348741, 'test', '测试员', '$2a$10$Wm4Op/aI30y5DhhZ6vHrluc09JeoMysgU83URfH0kJLh4UOJ2UDyK', NULL, 0, NULL, 0,
        'admin', '2023-01-16 10:56:36', 'admin', '2023-02-11 20:28:42');

-- ----------------------------
-- Table structure for sys_user_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_dept`;
CREATE TABLE `sys_user_dept`
(
    `id`      bigint(20) NOT NULL COMMENT '主键id',
    `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
    `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门id',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '用户部门表'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_dept
-- ----------------------------
INSERT INTO `sys_user_dept`
VALUES (62824114501, 1, 42083908293);
INSERT INTO `sys_user_dept`
VALUES (62826415877, 1, 1);
INSERT INTO `sys_user_dept`
VALUES (85465353221, 85465348741, 42202626373);
INSERT INTO `sys_user_dept`
VALUES (187168267781, 187168267525, 42089689925);
INSERT INTO `sys_user_dept`
VALUES (187197395589, 187197391941, 42089689925);
INSERT INTO `sys_user_dept`
VALUES (187235881541, 187235864901, 42089689925);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`
(
    `id`      bigint(20) NOT NULL COMMENT '主键id',
    `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
    `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色id',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '用户角色表'
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role`
VALUES (8613065349, 1, 1);
INSERT INTO `sys_user_role`
VALUES (169315988677, 85465348741, 131517140997);
INSERT INTO `sys_user_role`
VALUES (187168267653, 187168267525, 131517140997);
INSERT INTO `sys_user_role`
VALUES (187197394437, 187197391941, 131517140997);
INSERT INTO `sys_user_role`
VALUES (187235878725, 187235864901, 131517140997);
INSERT INTO `sys_user_role`
VALUES (226158724037, 1, 226157928197);

SET FOREIGN_KEY_CHECKS = 1;
