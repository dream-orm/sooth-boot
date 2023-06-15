/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.0.225
 Source Server Type    : SQL Server
 Source Server Version : 16004035 (16.00.4035)
 Source Host           : 192.168.0.225:1433
 Source Catalog        : sooth
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 16004035 (16.00.4035)
 File Encoding         : 65001

 Date: 15/06/2023 21:57:49
*/


-- ----------------------------
-- Table structure for gen_base_class
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[gen_base_class]') AND type IN ('U'))
	DROP TABLE [dbo].[gen_base_class]
GO

CREATE TABLE [dbo].[gen_base_class] (
  [id] bigint  NOT NULL,
  [class_name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [fields] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_time] datetime2(7)  NULL,
  [create_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[gen_base_class] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'id',
'SCHEMA', N'dbo',
'TABLE', N'gen_base_class',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'基类全类名',
'SCHEMA', N'dbo',
'TABLE', N'gen_base_class',
'COLUMN', N'class_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'基类字段，多个用英文逗号分隔',
'SCHEMA', N'dbo',
'TABLE', N'gen_base_class',
'COLUMN', N'fields'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'gen_base_class',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'gen_base_class',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'gen_base_class',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'gen_base_class',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'基类管理',
'SCHEMA', N'dbo',
'TABLE', N'gen_base_class'
GO


-- ----------------------------
-- Records of gen_base_class
-- ----------------------------
INSERT INTO [dbo].[gen_base_class] ([id], [class_name], [fields], [create_time], [update_time], [create_by], [update_by]) VALUES (N'192027676293', N'com.moxa.sooth.core.base.entity.BaseEntity', N'createBy,createTime,updateBy,updateTime', N'2023-02-04 17:27:12.0000000', NULL, N'admin', NULL)
GO


-- ----------------------------
-- Table structure for gen_field_type
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[gen_field_type]') AND type IN ('U'))
	DROP TABLE [dbo].[gen_field_type]
GO

CREATE TABLE [dbo].[gen_field_type] (
  [id] bigint  NOT NULL,
  [column_type] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [attr_type] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[gen_field_type] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'id',
'SCHEMA', N'dbo',
'TABLE', N'gen_field_type',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段类型',
'SCHEMA', N'dbo',
'TABLE', N'gen_field_type',
'COLUMN', N'column_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'属性类型',
'SCHEMA', N'dbo',
'TABLE', N'gen_field_type',
'COLUMN', N'attr_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段类型管理',
'SCHEMA', N'dbo',
'TABLE', N'gen_field_type'
GO


-- ----------------------------
-- Records of gen_field_type
-- ----------------------------
INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'-16', N'LONGNVARCHAR', N'String')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'-15', N'NCHAR', N'String')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'-9', N'NVARCHAR', N'String')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'-8', N'ROWID', N'Object')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'-7', N'BIT', N'Byte')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'-6', N'TINYINT', N'Byte')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'-5', N'BIGINT', N'Long')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'-4', N'LONGVARBINARY', N'Byte[]')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'-3', N'VARBINARY', N'Byte[]')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'-2', N'BINARY', N'Byte[]')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'-1', N'LONGVARCHAR', N'String')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'0', N'NULL', N'Object')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'1', N'CHAR', N'String')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'2', N'NUMERIC', N'java.math.BigDecimal')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'3', N'DECIMAL', N'java.math.BigDecimal')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'4', N'INTEGER', N'Integer')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'5', N'SMALLINT', N'Short')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'6', N'FLOAT', N'Float')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'7', N'REAL', N'Float')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'8', N'DOUBLE', N'Double')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'12', N'VARCHAR', N'String')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'16', N'BOOLEAN', N'Boolean')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'70', N'DATALINK', N'Object')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'91', N'DATE', N'java.util.Date')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'92', N'TIME', N'java.sql.Time')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'93', N'TIMESTAMP', N'java.util.Date')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'1111', N'OTHER', N'Object')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'2000', N'JAVA_OBJECT', N'Object')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'2001', N'DISTINCT', N'Object')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'2002', N'STRUCT', N'Object')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'2003', N'ARRAY', N'Object')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'2004', N'BLOB', N'java.io.InputStream')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'2005', N'CLOB', N'String')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'2006', N'REF', N'Object')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'2009', N'SQLXML', N'Object')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'2011', N'NCLOB', N'String')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'2012', N'REF_CURSOR', N'Object')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'2013', N'TIME_WITH_TIMEZONE', N'Object')
GO

INSERT INTO [dbo].[gen_field_type] ([id], [column_type], [attr_type]) VALUES (N'2014', N'TIMESTAMP_WITH_TIMEZONE', N'Object')
GO


-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[gen_table]') AND type IN ('U'))
	DROP TABLE [dbo].[gen_table]
GO

CREATE TABLE [dbo].[gen_table] (
  [id] bigint  NOT NULL,
  [table_name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [class_name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [table_comment] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_time] datetime2(7)  NULL,
  [create_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[gen_table] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'id',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表名',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'table_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'类名',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'class_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'说明',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'table_comment'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'代码生成表',
'SCHEMA', N'dbo',
'TABLE', N'gen_table'
GO


-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO [dbo].[gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'190414497349', N'sys_menu', N'SysMenu', N'菜单权限表', N'2023-02-04 10:27:07.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384943109', N'gen_base_class', N'GenBaseClass', N'基类管理', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384947013', N'gen_field_type', N'GenFieldType', N'字段类型管理', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384948549', N'gen_table', N'GenTable', N'代码生成表', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384950085', N'gen_table_field', N'GenTableField', N'代码生成表字段', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384952389', N'gen_template', N'GenTemplate', N'模板配置', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384953477', N'gen_template_group', N'GenTemplateGroup', N'模板配置组', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384954501', N'sys_button', N'SysButton', N'角色权限表', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384955717', N'sys_button_permission', N'SysButtonPermission', N'角色权限表', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384956805', N'sys_data_permission', N'SysDataPermission', N'角色权限表', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384958021', N'sys_data_source', N'SysDataSource', NULL, N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384959493', N'sys_dept', N'SysDept', N'组织机构表', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384960965', N'sys_dict', N'SysDict', NULL, N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384962373', N'sys_dict_item', N'SysDictItem', NULL, N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384963717', N'sys_log', N'SysLog', N'系统日志表', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384966149', N'sys_role', N'SysRole', N'角色表', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384967493', N'sys_role_permission', N'SysRolePermission', N'角色权限表', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384968837', N'sys_user', N'SysUser', N'用户表', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384970053', N'sys_user_dept', N'SysUserDept', N'用户部门表', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384971205', N'sys_user_role', N'SysUserRole', N'用户角色表', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'274868828933', N'sys_quartz', N'SysQuartz', N'定时任务', N'2023-02-19 17:00:25.0000000', NULL, N'admin', NULL)
GO


-- ----------------------------
-- Table structure for gen_table_field
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[gen_table_field]') AND type IN ('U'))
	DROP TABLE [dbo].[gen_table_field]
GO

CREATE TABLE [dbo].[gen_table_field] (
  [id] bigint  NOT NULL,
  [table_id] bigint  NULL,
  [column_name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [column_type] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [column_comment] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [attr_name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [attr_type] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [order_no] int  NULL,
  [primary_pk] smallint  NULL
)
GO

ALTER TABLE [dbo].[gen_table_field] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'id',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_field',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表ID',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_field',
'COLUMN', N'table_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段名称',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_field',
'COLUMN', N'column_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段类型',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_field',
'COLUMN', N'column_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段说明',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_field',
'COLUMN', N'column_comment'
GO

EXEC sp_addextendedproperty
'MS_Description', N'属性名',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_field',
'COLUMN', N'attr_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'属性类型',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_field',
'COLUMN', N'attr_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_field',
'COLUMN', N'order_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键 0：否  1：是',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_field',
'COLUMN', N'primary_pk'
GO

EXEC sp_addextendedproperty
'MS_Description', N'代码生成表字段',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_field'
GO


-- ----------------------------
-- Records of gen_table_field
-- ----------------------------
INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'190414499013', N'190414497349', N'id', N'BIGINT', N'主键id', N'id', N'Long', NULL, N'1')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'190414499014', N'190414497349', N'parent_id', N'BIGINT', N'父id', N'parentId', N'Long', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'190414499015', N'190414497349', N'name', N'VARCHAR', N'菜单标题', N'name', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'190414499016', N'190414497349', N'url', N'VARCHAR', N'路径', N'url', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'190414499017', N'190414497349', N'component', N'VARCHAR', N'组件', N'component', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'190414499018', N'190414497349', N'redirect', N'VARCHAR', N'一级菜单跳转地址', N'redirect', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'190414499019', N'190414497349', N'menu_type', N'INTEGER', N'菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)', N'menuType', N'Integer', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'190414499020', N'190414497349', N'sort_no', N'DOUBLE', N'菜单排序', N'sortNo', N'Double', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'190414499021', N'190414497349', N'fixed_tab', N'SMALLINT', N'聚合子路由: 1是0否', N'fixedTab', N'Short', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'190414499022', N'190414497349', N'icon', N'VARCHAR', N'菜单图标', N'icon', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'190414499023', N'190414497349', N'hidden', N'INTEGER', N'是否隐藏路由: 0否,1是', N'hidden', N'Integer', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'190414499024', N'190414497349', N'hide_tab', N'INTEGER', N'是否隐藏tab: 0否,1是', N'hideTab', N'Integer', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'190414499025', N'190414497349', N'description', N'VARCHAR', N'描述', N'description', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'190414499026', N'190414497349', N'create_by', N'VARCHAR', N'创建人', N'createBy', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'190414499027', N'190414497349', N'create_time', N'TIMESTAMP', N'创建时间', N'createTime', N'java.util.Date', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'190414499028', N'190414497349', N'update_by', N'VARCHAR', N'更新人', N'updateBy', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'190414499029', N'190414497349', N'update_time', N'TIMESTAMP', N'更新时间', N'updateTime', N'java.util.Date', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'190414499030', N'190414497349', N'del_flag', N'INTEGER', N'删除状态 0正常 1已删除', N'delFlag', N'Integer', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'190414499031', N'190414497349', N'keep_alive', N'SMALLINT', N'缓存路由: 1是0否', N'keepAlive', N'Short', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'190414499032', N'190414497349', N'component_name', N'VARCHAR', N'组件名称', N'componentName', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384944133', N'197384943109', N'id', N'BIGINT', N'id', N'id', N'Long', NULL, N'1')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384944134', N'197384943109', N'class_name', N'VARCHAR', N'基类全类名', N'className', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384944135', N'197384943109', N'fields', N'VARCHAR', N'基类字段，多个用英文逗号分隔', N'fields', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384944136', N'197384943109', N'create_time', N'TIMESTAMP', N'创建时间', N'createTime', N'java.util.Date', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384944137', N'197384943109', N'update_time', N'TIMESTAMP', N'创建时间', N'updateTime', N'java.util.Date', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384944138', N'197384943109', N'create_by', N'VARCHAR', N'创建人', N'createBy', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384944139', N'197384943109', N'update_by', N'VARCHAR', N'更新人', N'updateBy', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384947333', N'197384947013', N'id', N'BIGINT', N'id', N'id', N'Long', NULL, N'1')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384947334', N'197384947013', N'column_type', N'VARCHAR', N'字段类型', N'columnType', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384947335', N'197384947013', N'attr_type', N'VARCHAR', N'属性类型', N'attrType', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384948933', N'197384948549', N'id', N'BIGINT', N'id', N'id', N'Long', NULL, N'1')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384948934', N'197384948549', N'table_name', N'VARCHAR', N'表名', N'tableName', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384948935', N'197384948549', N'class_name', N'VARCHAR', N'类名', N'className', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384948936', N'197384948549', N'table_comment', N'VARCHAR', N'说明', N'tableComment', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384948937', N'197384948549', N'create_time', N'TIMESTAMP', N'创建时间', N'createTime', N'java.util.Date', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384948938', N'197384948549', N'update_time', N'TIMESTAMP', N'创建时间', N'updateTime', N'java.util.Date', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384948939', N'197384948549', N'create_by', N'VARCHAR', N'创建人', N'createBy', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384948940', N'197384948549', N'update_by', N'VARCHAR', N'更新人', N'updateBy', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384950213', N'197384950085', N'id', N'BIGINT', N'id', N'id', N'Long', NULL, N'1')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384950214', N'197384950085', N'table_id', N'BIGINT', N'表ID', N'tableId', N'Long', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384950215', N'197384950085', N'column_name', N'VARCHAR', N'字段名称', N'columnName', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384950216', N'197384950085', N'column_type', N'VARCHAR', N'字段类型', N'columnType', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384950217', N'197384950085', N'column_comment', N'VARCHAR', N'字段说明', N'columnComment', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384950218', N'197384950085', N'attr_name', N'VARCHAR', N'属性名', N'attrName', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384950219', N'197384950085', N'attr_type', N'VARCHAR', N'属性类型', N'attrType', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384950220', N'197384950085', N'order_no', N'INTEGER', N'排序', N'orderNo', N'Integer', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384950221', N'197384950085', N'primary_pk', N'SMALLINT', N'主键 0：否  1：是', N'primaryPk', N'Short', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384952517', N'197384952389', N'id', N'BIGINT', N'id', N'id', N'Long', NULL, N'1')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384952518', N'197384952389', N'name', N'VARCHAR', N'模板名称', N'name', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384952519', N'197384952389', N'content', N'VARCHAR', NULL, N'content', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384952520', N'197384952389', N'create_time', N'TIMESTAMP', N'创建时间', N'createTime', N'java.util.Date', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384952521', N'197384952389', N'update_by', N'VARCHAR', N'更新人登录名称', N'updateBy', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384952522', N'197384952389', N'update_time', N'TIMESTAMP', N'更新日期', N'updateTime', N'java.util.Date', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384952523', N'197384952389', N'create_by', N'VARCHAR', N'创建人登录名称', N'createBy', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384952524', N'197384952389', N'group_id', N'BIGINT', N'分组id', N'groupId', N'Long', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384952525', N'197384952389', N'file_name', N'VARCHAR', N'模板文件名', N'fileName', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384953541', N'197384953477', N'id', N'BIGINT', N'id', N'id', N'Long', NULL, N'1')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384953542', N'197384953477', N'name', N'VARCHAR', N'表名', N'name', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384954629', N'197384954501', N'id', N'BIGINT', NULL, N'id', N'Long', NULL, N'1')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384954630', N'197384954501', N'menu_id', N'BIGINT', N'菜单id', N'menuId', N'Long', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384954631', N'197384954501', N'type', N'VARCHAR', N'按钮权限类型', N'type', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384955845', N'197384955717', N'id', N'BIGINT', NULL, N'id', N'Long', NULL, N'1')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384955846', N'197384955717', N'button_id', N'BIGINT', N'按钮id', N'buttonId', N'Long', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384955847', N'197384955717', N'role_id', N'BIGINT', N'角色id', N'roleId', N'Long', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384956869', N'197384956805', N'id', N'BIGINT', NULL, N'id', N'Long', NULL, N'1')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384956870', N'197384956805', N'permission_code', N'INTEGER', N'权限', N'permissionCode', N'Integer', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384956871', N'197384956805', N'dept_ids', N'VARCHAR', N'指定部门', N'deptIds', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384956872', N'197384956805', N'role_id', N'BIGINT', N'角色id', N'roleId', N'Long', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384958213', N'197384958021', N'id', N'BIGINT', NULL, N'id', N'Long', NULL, N'1')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384958214', N'197384958021', N'name', N'VARCHAR', N'数据源名称', N'name', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384958215', N'197384958021', N'description', N'VARCHAR', N'描述', N'description', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384958216', N'197384958021', N'url', N'VARCHAR', N'数据源地址', N'url', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384958217', N'197384958021', N'username', N'VARCHAR', N'用户名', N'username', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384958218', N'197384958021', N'password', N'VARCHAR', N'密码', N'password', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384958219', N'197384958021', N'create_by', N'VARCHAR', N'创建人', N'createBy', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384958220', N'197384958021', N'create_time', N'TIMESTAMP', N'创建日期', N'createTime', N'java.util.Date', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384958221', N'197384958021', N'update_by', N'VARCHAR', N'更新人', N'updateBy', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384958222', N'197384958021', N'update_time', N'TIMESTAMP', N'更新日期', N'updateTime', N'java.util.Date', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384959685', N'197384959493', N'dept_id', N'BIGINT', N'ID', N'deptId', N'Long', NULL, N'1')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384959686', N'197384959493', N'parent_id', N'BIGINT', N'父机构ID', N'parentId', N'Long', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384959687', N'197384959493', N'dept_name', N'VARCHAR', N'机构/部门名称', N'deptName', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384959688', N'197384959493', N'dept_code', N'VARCHAR', N'机构/部门编码', N'deptCode', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384959689', N'197384959493', N'order_no', N'DOUBLE', N'排序', N'orderNo', N'Double', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384959690', N'197384959493', N'description', N'VARCHAR', N'描述', N'description', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384959691', N'197384959493', N'status', N'INTEGER', N'状态（1启用，0不启用）', N'status', N'Integer', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384959692', N'197384959493', N'del_flag', N'INTEGER', N'删除状态（0，正常，1已删除）', N'delFlag', N'Integer', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384959693', N'197384959493', N'create_by', N'VARCHAR', N'创建人', N'createBy', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384959694', N'197384959493', N'create_time', N'TIMESTAMP', N'创建日期', N'createTime', N'java.util.Date', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384959695', N'197384959493', N'update_by', N'VARCHAR', N'更新人', N'updateBy', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384959696', N'197384959493', N'update_time', N'TIMESTAMP', N'更新日期', N'updateTime', N'java.util.Date', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384961093', N'197384960965', N'id', N'BIGINT', NULL, N'id', N'Long', NULL, N'1')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384961094', N'197384960965', N'name', N'VARCHAR', N'字典名称', N'name', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384961095', N'197384960965', N'code', N'VARCHAR', N'字典编码', N'code', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384961096', N'197384960965', N'description', N'VARCHAR', N'描述', N'description', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384961097', N'197384960965', N'del_flag', N'INTEGER', N'删除状态', N'delFlag', N'Integer', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384961098', N'197384960965', N'create_by', N'VARCHAR', N'创建人', N'createBy', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384961099', N'197384960965', N'create_time', N'TIMESTAMP', N'创建时间', N'createTime', N'java.util.Date', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384961157', N'197384960965', N'update_by', N'VARCHAR', N'更新人', N'updateBy', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384961158', N'197384960965', N'update_time', N'TIMESTAMP', N'更新时间', N'updateTime', N'java.util.Date', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384961159', N'197384960965', N'type', N'INTEGER', N'字典类型0为string,1为number', N'type', N'Integer', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384962501', N'197384962373', N'id', N'BIGINT', NULL, N'id', N'Long', NULL, N'1')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384962502', N'197384962373', N'dict_id', N'BIGINT', N'字典id', N'dictId', N'Long', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384962503', N'197384962373', N'name', N'VARCHAR', N'字典项文本', N'name', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384962504', N'197384962373', N'value', N'VARCHAR', N'字典项值', N'value', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384962505', N'197384962373', N'description', N'VARCHAR', N'描述', N'description', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384962506', N'197384962373', N'order_no', N'DOUBLE', N'排序', N'orderNo', N'Double', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384963909', N'197384963717', N'id', N'BIGINT', NULL, N'id', N'Long', NULL, N'1')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384963910', N'197384963717', N'log_type', N'VARCHAR', N'日志类型', N'logType', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384963911', N'197384963717', N'username', N'VARCHAR', N'操作用户账号', N'username', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384963912', N'197384963717', N'realname', N'VARCHAR', N'操作用户名称', N'realname', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384963913', N'197384963717', N'ip', N'VARCHAR', N'IP', N'ip', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384963914', N'197384963717', N'method', N'VARCHAR', N'请求java方法', N'method', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384963915', N'197384963717', N'request_url', N'VARCHAR', N'请求路径', N'requestUrl', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384963916', N'197384963717', N'request_param', N'VARCHAR', N'请求参数', N'requestParam', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384963917', N'197384963717', N'request_type', N'VARCHAR', N'请求类型', N'requestType', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384963918', N'197384963717', N'cost_time', N'BIGINT', N'耗时', N'costTime', N'Long', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384963919', N'197384963717', N'create_time', N'TIMESTAMP', N'创建时间', N'createTime', N'java.util.Date', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384963920', N'197384963717', N'user_agent', N'VARCHAR', N'浏览器', N'userAgent', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384963921', N'197384963717', N'status', N'INTEGER', N'状态', N'status', N'Integer', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384963922', N'197384963717', N'biz_module', N'VARCHAR', N'业务模块', N'bizModule', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384963923', N'197384963717', N'description', N'VARCHAR', N'操作描述', N'description', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384963924', N'197384963717', N'message', N'VARCHAR', N'错误信息', N'message', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384963925', N'197384963717', N'exception_class', N'VARCHAR', N'异常类', N'exceptionClass', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384963926', N'197384963717', N'stack_trace', N'VARCHAR', N'详尽异常', N'stackTrace', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384966341', N'197384966149', N'id', N'BIGINT', N'主键id', N'id', N'Long', NULL, N'1')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384966342', N'197384966149', N'role_name', N'VARCHAR', N'角色名称', N'roleName', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384966343', N'197384966149', N'role_code', N'VARCHAR', N'角色编码', N'roleCode', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384966344', N'197384966149', N'dept_id', N'BIGINT', N'部门id', N'deptId', N'Long', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384966345', N'197384966149', N'description', N'VARCHAR', N'描述', N'description', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384966346', N'197384966149', N'create_by', N'VARCHAR', N'创建人', N'createBy', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384966347', N'197384966149', N'create_time', N'TIMESTAMP', N'创建时间', N'createTime', N'java.util.Date', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384966348', N'197384966149', N'update_by', N'VARCHAR', N'更新人', N'updateBy', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384966349', N'197384966149', N'update_time', N'TIMESTAMP', N'更新时间', N'updateTime', N'java.util.Date', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384967621', N'197384967493', N'id', N'BIGINT', NULL, N'id', N'Long', NULL, N'1')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384967622', N'197384967493', N'role_id', N'BIGINT', N'角色id', N'roleId', N'Long', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384967623', N'197384967493', N'permission_id', N'BIGINT', N'权限id', N'permissionId', N'Long', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384968965', N'197384968837', N'id', N'BIGINT', N'主键id', N'id', N'Long', NULL, N'1')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384968966', N'197384968837', N'username', N'VARCHAR', N'登录账号', N'username', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384968967', N'197384968837', N'realname', N'VARCHAR', N'真实姓名', N'realname', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384968968', N'197384968837', N'password', N'VARCHAR', N'密码', N'password', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384968969', N'197384968837', N'avatar', N'VARCHAR', N'头像', N'avatar', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384968970', N'197384968837', N'sex', N'SMALLINT', N'性别', N'sex', N'Short', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384968971', N'197384968837', N'phone', N'VARCHAR', N'电话', N'phone', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384968972', N'197384968837', N'del_flag', N'SMALLINT', N'删除状态(0-正常,1-已删除)', N'delFlag', N'Short', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384968973', N'197384968837', N'create_by', N'VARCHAR', N'创建人', N'createBy', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384968974', N'197384968837', N'create_time', N'TIMESTAMP', N'创建时间', N'createTime', N'java.util.Date', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384968975', N'197384968837', N'update_by', N'VARCHAR', N'更新人', N'updateBy', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384968976', N'197384968837', N'update_time', N'TIMESTAMP', N'更新时间', N'updateTime', N'java.util.Date', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384970181', N'197384970053', N'id', N'BIGINT', N'主键id', N'id', N'Long', NULL, N'1')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384970182', N'197384970053', N'user_id', N'BIGINT', N'用户id', N'userId', N'Long', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384970183', N'197384970053', N'dept_id', N'BIGINT', N'部门id', N'deptId', N'Long', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384971333', N'197384971205', N'id', N'BIGINT', N'主键id', N'id', N'Long', NULL, N'1')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384971334', N'197384971205', N'user_id', N'BIGINT', N'用户id', N'userId', N'Long', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'197384971335', N'197384971205', N'role_id', N'BIGINT', N'角色id', N'roleId', N'Long', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'274859735429', N'274859734981', N'id', N'VARCHAR', NULL, N'id', N'String', NULL, N'1')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'274859735430', N'274859734981', N'create_by', N'VARCHAR', N'创建人', N'createBy', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'274859735431', N'274859734981', N'create_time', N'TIMESTAMP', N'创建时间', N'createTime', N'java.util.Date', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'274859735432', N'274859734981', N'del_flag', N'INTEGER', N'删除状态', N'delFlag', N'Integer', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'274859735433', N'274859734981', N'update_by', N'VARCHAR', N'修改人', N'updateBy', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'274859735434', N'274859734981', N'update_time', N'TIMESTAMP', N'修改时间', N'updateTime', N'java.util.Date', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'274859735435', N'274859734981', N'job_name', N'VARCHAR', N'任务名', N'jobName', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'274859735436', N'274859734981', N'cron_expression', N'VARCHAR', N'cron表达式', N'cronExpression', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'274859735437', N'274859734981', N'parameter', N'VARCHAR', N'参数', N'parameter', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'274859735438', N'274859734981', N'description', N'VARCHAR', N'描述', N'description', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'274859735439', N'274859734981', N'status', N'INTEGER', N'状态 0正常 -1停止', N'status', N'Integer', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'274868829253', N'274868828933', N'id', N'VARCHAR', NULL, N'id', N'String', NULL, N'1')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'274868829254', N'274868828933', N'create_by', N'VARCHAR', N'创建人', N'createBy', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'274868829255', N'274868828933', N'create_time', N'TIMESTAMP', N'创建时间', N'createTime', N'java.util.Date', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'274868829256', N'274868828933', N'del_flag', N'INTEGER', N'删除状态', N'delFlag', N'Integer', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'274868829257', N'274868828933', N'update_by', N'VARCHAR', N'修改人', N'updateBy', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'274868829258', N'274868828933', N'update_time', N'TIMESTAMP', N'修改时间', N'updateTime', N'java.util.Date', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'274868829259', N'274868828933', N'name', N'VARCHAR', N'任务名', N'name', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'274868829260', N'274868828933', N'cron', N'VARCHAR', N'cron表达式', N'cron', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'274868829261', N'274868828933', N'parameter', N'VARCHAR', N'参数', N'parameter', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'274868829262', N'274868828933', N'description', N'VARCHAR', N'描述', N'description', N'String', NULL, N'0')
GO

INSERT INTO [dbo].[gen_table_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk]) VALUES (N'274868829263', N'274868828933', N'status', N'INTEGER', N'状态 0正常 -1停止', N'status', N'Integer', NULL, N'0')
GO


-- ----------------------------
-- Table structure for gen_template
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[gen_template]') AND type IN ('U'))
	DROP TABLE [dbo].[gen_template]
GO

CREATE TABLE [dbo].[gen_template] (
  [id] bigint  NOT NULL,
  [name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [content] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [group_id] bigint  NULL,
  [file_name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[gen_template] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'id',
'SCHEMA', N'dbo',
'TABLE', N'gen_template',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板名称',
'SCHEMA', N'dbo',
'TABLE', N'gen_template',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'gen_template',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'gen_template',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'gen_template',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'gen_template',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分组id',
'SCHEMA', N'dbo',
'TABLE', N'gen_template',
'COLUMN', N'group_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板文件名',
'SCHEMA', N'dbo',
'TABLE', N'gen_template',
'COLUMN', N'file_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板配置',
'SCHEMA', N'dbo',
'TABLE', N'gen_template'
GO


-- ----------------------------
-- Records of gen_template
-- ----------------------------
INSERT INTO [dbo].[gen_template] ([id], [name], [content], [create_time], [update_by], [update_time], [create_by], [group_id], [file_name]) VALUES (N'192034258629', N'编辑视图', N'package ${packageName}.${moduleName}.${entityName}.table;

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
}', N'2023-02-04 17:28:55.0000000', N'admin', N'2023-02-04 19:46:23.0000000', N'admin', N'82324589637', N'${className}EditView.java')
GO

INSERT INTO [dbo].[gen_template] ([id], [name], [content], [create_time], [update_by], [update_time], [create_by], [group_id], [file_name]) VALUES (N'192578414789', N'查询条件接受类', N'package ${packageName}.${moduleName}.${entityName}.model;

import lombok.Data;

@Data
public class ${className}Model {
  
}', N'2023-02-04 19:50:38.0000000', N'admin', N'2023-02-04 19:54:07.0000000', N'admin', N'82324589637', N'${className}Model.java')
GO

INSERT INTO [dbo].[gen_template] ([id], [name], [content], [create_time], [update_by], [update_time], [create_by], [group_id], [file_name]) VALUES (N'192596589061', N'列表视图', N'package ${packageName}.${moduleName}.${entityName}.view;

import lombok.Data;

@Data
public class ${className}ListView {
  
}', N'2023-02-04 19:55:22.0000000', NULL, NULL, N'admin', N'82324589637', N'${className}ListView.java')
GO

INSERT INTO [dbo].[gen_template] ([id], [name], [content], [create_time], [update_by], [update_time], [create_by], [group_id], [file_name]) VALUES (N'192608309829', N'接口服务类', N'package ${packageName}.${moduleName}.${entityName}.service;

import com.moxa.dream.template.service.IService;
import ${packageName}.${moduleName}.${entityName}.view.${className}ListView;
import ${packageName}.${moduleName}.${entityName}.view.${className}EditView;


public class I${className}Service extends IService<${className}ListView,${className}EditView> {
  
}', N'2023-02-04 19:58:25.0000000', NULL, NULL, N'admin', N'82324589637', N'I${className}Service.java')
GO

INSERT INTO [dbo].[gen_template] ([id], [name], [content], [create_time], [update_by], [update_time], [create_by], [group_id], [file_name]) VALUES (N'192619070789', N'接口实现类', N'package ${packageName}.${moduleName}.${entityName}.service.impl;

import com.moxa.dream.template.service.IService;
import ${packageName}.${moduleName}.${entityName}.service.I${className}Service;
import ${packageName}.${moduleName}.${entityName}.view.${className}ListView;
import ${packageName}.${moduleName}.${entityName}.view.${className}EditView;
import org.springframework.stereotype.Service;

@Service
public class ${className}ServiceImpl extends ServiceImpl<${className}ListView,${className}EditView> implements I${className}Service{
  
}', N'2023-02-04 20:01:13.0000000', NULL, NULL, N'admin', N'82324589637', N'${className}ServiceImpl.java')
GO

INSERT INTO [dbo].[gen_template] ([id], [name], [content], [create_time], [update_by], [update_time], [create_by], [group_id], [file_name]) VALUES (N'192633866053', N'视图控制类', N'package ${packageName}.${moduleName}.${entityName}.service.impl;

import com.moxa.sooth.core.base.controller.BaseController;
import ${packageName}.${moduleName}.${entityName}.service.I${className}Service;
import ${packageName}.${moduleName}.${entityName}.model.${className}Model;
import ${packageName}.${moduleName}.${entityName}.view.${className}EditView;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/${moduleName}/${entityName}")
public class ${className}Controller extends BaseController<I${className}Service, ${className}EditView, ${className}Model>{
  
}', N'2023-02-04 20:05:04.0000000', NULL, NULL, N'admin', N'82324589637', N'${className}Controller.java')
GO

INSERT INTO [dbo].[gen_template] ([id], [name], [content], [create_time], [update_by], [update_time], [create_by], [group_id], [file_name]) VALUES (N'192662837189', N'api请求页', N'import { BaseApi } from ''/@/api/base/baseApi'';

class ${entityName?cap_first}Api extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
}

export const ${entityName}Api = new ${entityName?cap_first}Api(''/${moduleName}/${entityName}'').api;', N'2023-02-04 20:12:37.0000000', N'admin', N'2023-02-04 20:13:07.0000000', N'admin', N'82324589637', N'${entityName}.api.ts')
GO

INSERT INTO [dbo].[gen_template] ([id], [name], [content], [create_time], [update_by], [update_time], [create_by], [group_id], [file_name]) VALUES (N'192688658309', N'列表页', N'<template>
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
</script>', N'2023-02-04 20:19:20.0000000', NULL, NULL, N'admin', N'82324589637', N'index.vue')
GO

INSERT INTO [dbo].[gen_template] ([id], [name], [content], [create_time], [update_by], [update_time], [create_by], [group_id], [file_name]) VALUES (N'192702147397', N'弹窗页', N'<template>
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
</script>', N'2023-02-04 20:22:51.0000000', NULL, NULL, N'admin', N'82324589637', N'${entityName?cap_first}.vue')
GO

INSERT INTO [dbo].[gen_template] ([id], [name], [content], [create_time], [update_by], [update_time], [create_by], [group_id], [file_name]) VALUES (N'192707297157', N'数据页', N'import { BasicColumn } from ''/@/components/Table'';
import { FormSchema } from ''/@/components/Table'';

export const columns: BasicColumn[] = [
];

export const searchFormSchema: FormSchema[] = [
];

export const formSchema: FormSchema[] = [
];', N'2023-02-04 20:24:12.0000000', NULL, NULL, N'admin', N'82324589637', N'${entityName}.data.ts')
GO

INSERT INTO [dbo].[gen_template] ([id], [name], [content], [create_time], [update_by], [update_time], [create_by], [group_id], [file_name]) VALUES (N'362832993636357', N'数据库表java类映射', N'package ${packageName}.${moduleName}.${entityName}.table;

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
}', N'2022-12-11 08:31:15.0000000', N'admin', N'2023-02-19 17:03:06.0000000', NULL, N'82324589637', N'${className}.java')
GO


-- ----------------------------
-- Table structure for gen_template_group
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[gen_template_group]') AND type IN ('U'))
	DROP TABLE [dbo].[gen_template_group]
GO

CREATE TABLE [dbo].[gen_template_group] (
  [id] bigint  NOT NULL,
  [name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[gen_template_group] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'id',
'SCHEMA', N'dbo',
'TABLE', N'gen_template_group',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表名',
'SCHEMA', N'dbo',
'TABLE', N'gen_template_group',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板配置组',
'SCHEMA', N'dbo',
'TABLE', N'gen_template_group'
GO


-- ----------------------------
-- Records of gen_template_group
-- ----------------------------
INSERT INTO [dbo].[gen_template_group] ([id], [name]) VALUES (N'82324589637', N'基础模板组')
GO


-- ----------------------------
-- Table structure for program_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[program_info]') AND type IN ('U'))
	DROP TABLE [dbo].[program_info]
GO

CREATE TABLE [dbo].[program_info] (
  [machine_name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [program_name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [deadline] datetime2(7)  NOT NULL,
  [creat_time] datetime2(7)  NULL,
  [update_tim] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[program_info] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'机器名称',
'SCHEMA', N'dbo',
'TABLE', N'program_info',
'COLUMN', N'machine_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'程序名称',
'SCHEMA', N'dbo',
'TABLE', N'program_info',
'COLUMN', N'program_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'运维截止时间',
'SCHEMA', N'dbo',
'TABLE', N'program_info',
'COLUMN', N'deadline'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'program_info',
'COLUMN', N'creat_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'program_info',
'COLUMN', N'update_tim'
GO

EXEC sp_addextendedproperty
'MS_Description', N'程序运维信息',
'SCHEMA', N'dbo',
'TABLE', N'program_info'
GO


-- ----------------------------
-- Records of program_info
-- ----------------------------

-- ----------------------------
-- Table structure for program_messages
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[program_messages]') AND type IN ('U'))
	DROP TABLE [dbo].[program_messages]
GO

CREATE TABLE [dbo].[program_messages] (
  [machine_name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [program_name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [message] nvarchar(1024) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] nvarchar(42) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [creat_time] datetime2(7)  NULL,
  [update_tim] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[program_messages] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'机器名称',
'SCHEMA', N'dbo',
'TABLE', N'program_messages',
'COLUMN', N'machine_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'程序名称',
'SCHEMA', N'dbo',
'TABLE', N'program_messages',
'COLUMN', N'program_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'消息内容',
'SCHEMA', N'dbo',
'TABLE', N'program_messages',
'COLUMN', N'message'
GO

EXEC sp_addextendedproperty
'MS_Description', N'消息类别',
'SCHEMA', N'dbo',
'TABLE', N'program_messages',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'program_messages',
'COLUMN', N'creat_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'program_messages',
'COLUMN', N'update_tim'
GO

EXEC sp_addextendedproperty
'MS_Description', N'程序消息',
'SCHEMA', N'dbo',
'TABLE', N'program_messages'
GO


-- ----------------------------
-- Records of program_messages
-- ----------------------------

-- ----------------------------
-- Table structure for sys_base_class
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_base_class]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_base_class]
GO

CREATE TABLE [dbo].[sys_base_class] (
  [id] bigint  NOT NULL,
  [class_name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [fields] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_time] datetime2(7)  NULL,
  [create_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_base_class] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'id',
'SCHEMA', N'dbo',
'TABLE', N'sys_base_class',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'基类全类名',
'SCHEMA', N'dbo',
'TABLE', N'sys_base_class',
'COLUMN', N'class_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'基类字段，多个用英文逗号分隔',
'SCHEMA', N'dbo',
'TABLE', N'sys_base_class',
'COLUMN', N'fields'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_base_class',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_base_class',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_base_class',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_base_class',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'基类管理',
'SCHEMA', N'dbo',
'TABLE', N'sys_base_class'
GO


-- ----------------------------
-- Records of sys_base_class
-- ----------------------------
INSERT INTO [dbo].[sys_base_class] ([id], [class_name], [fields], [create_time], [update_time], [create_by], [update_by]) VALUES (N'192027676293', N'com.moxa.sooth.core.base.entity.BaseEntity', N'createBy,createTime,updateBy,updateTime', N'2023-02-04 17:27:12.0000000', NULL, N'admin', NULL)
GO


-- ----------------------------
-- Table structure for sys_button
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_button]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_button]
GO

CREATE TABLE [dbo].[sys_button] (
  [id] bigint  NOT NULL,
  [menu_id] bigint  NULL,
  [type] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_button] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单id',
'SCHEMA', N'dbo',
'TABLE', N'sys_button',
'COLUMN', N'menu_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'按钮权限类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_button',
'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色权限表',
'SCHEMA', N'dbo',
'TABLE', N'sys_button'
GO


-- ----------------------------
-- Records of sys_button
-- ----------------------------
INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'153157080517', N'3', N'add')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'153157080518', N'3', N'edit')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'153157080519', N'3', N'remove')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'153157080520', N'3', N'removeBatch')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'153162963205', N'4', N'add')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'153162963206', N'4', N'edit')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'153162963207', N'4', N'remove')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'153162963208', N'4', N'removeBatch')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'153165063429', N'5', N'add')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'153165063430', N'5', N'edit')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'153165063431', N'5', N'remove')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'153165063432', N'5', N'removeBatch')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'153166387781', N'2', N'add')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'153166387782', N'2', N'edit')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'153166387783', N'2', N'remove')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'153166387784', N'2', N'removeBatch')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'153366975621', N'2', N'menu_permission')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'153366975622', N'2', N'button_permission')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'153366975623', N'2', N'data_permission')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'159925289733', N'3', N'remove_batch')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'173652824133', N'5', N'remove_batch')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'173652824134', N'5', N'button_setting')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'173652824135', N'5', N'add_sub')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'173653609605', N'4', N'remove_batch')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'173664974213', N'8', N'add')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'173664974214', N'8', N'edit')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'173664974215', N'8', N'remove')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'173664974216', N'8', N'remove_batch')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'178966814853', N'20', N'add')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'178966814854', N'20', N'edit')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'178966814855', N'20', N'remove')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'178966814856', N'20', N'remove_batch')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'178967663493', N'17', N'edit')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'178968322373', N'18', N'add')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'178968322374', N'18', N'edit')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'178968322375', N'18', N'remove')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'178968322376', N'18', N'remove_batch')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'178969028229', N'19', N'add')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'178969028230', N'19', N'edit')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'178969028231', N'19', N'remove')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'178969028232', N'19', N'remove_batch')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'178969766725', N'11', N'add')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'178969766726', N'11', N'edit')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'178969766727', N'11', N'remove')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'178969766728', N'11', N'remove_batch')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'179002517125', N'19', N'import')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'179002517126', N'19', N'generate')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'179002517127', N'19', N'sync')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'187263535685', N'2', N'remove_batch')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'192006785029', N'12', N'remove_batch')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'208603001541', N'2', N'role_user')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'270339307653', N'270244951749', N'add')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'270339307654', N'270244951749', N'edit')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'270339307655', N'270244951749', N'remove')
GO

INSERT INTO [dbo].[sys_button] ([id], [menu_id], [type]) VALUES (N'270339307656', N'270244951749', N'remove_batch')
GO


-- ----------------------------
-- Table structure for sys_button_permission
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_button_permission]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_button_permission]
GO

CREATE TABLE [dbo].[sys_button_permission] (
  [id] bigint  NOT NULL,
  [button_id] bigint  NULL,
  [role_id] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_button_permission] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'按钮id',
'SCHEMA', N'dbo',
'TABLE', N'sys_button_permission',
'COLUMN', N'button_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色id',
'SCHEMA', N'dbo',
'TABLE', N'sys_button_permission',
'COLUMN', N'role_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色权限表',
'SCHEMA', N'dbo',
'TABLE', N'sys_button_permission'
GO


-- ----------------------------
-- Records of sys_button_permission
-- ----------------------------
INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902597', N'153157080517', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902598', N'153157080518', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902599', N'153157080519', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902600', N'159925289733', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902601', N'153162963205', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902602', N'153162963206', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902603', N'153162963207', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902604', N'173653609605', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902605', N'178966814853', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902606', N'178966814854', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902607', N'178966814855', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902608', N'178966814856', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902609', N'178967663493', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902610', N'178968322373', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902611', N'178968322374', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902612', N'178968322375', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902613', N'178968322376', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902614', N'178969028229', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902615', N'178969028230', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902616', N'178969028231', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902617', N'178969028232', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902618', N'179002517125', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902619', N'179002517127', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902620', N'179002517126', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902621', N'178969766725', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902622', N'178969766726', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902623', N'178969766727', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902624', N'178969766728', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902625', N'192006785029', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902626', N'173664974213', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902627', N'173664974214', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902628', N'173664974215', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902629', N'173664974216', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902630', N'153165063429', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902631', N'153165063430', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902632', N'153165063431', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902633', N'173652824133', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902634', N'173652824135', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902635', N'173652824134', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902636', N'153166387781', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902637', N'153166387782', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902638', N'153166387783', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902639', N'187263535685', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902640', N'153366975622', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902641', N'153366975621', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902642', N'153366975623', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'226159902643', N'208603001541', N'226157928197')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950853', N'153157080517', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950854', N'153157080518', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950855', N'153157080519', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950856', N'159925289733', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950857', N'153162963205', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950858', N'153162963206', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950859', N'153162963207', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950860', N'173653609605', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950861', N'192006785029', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950862', N'173664974213', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950863', N'173664974214', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950864', N'173664974215', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950865', N'173664974216', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950866', N'178966814853', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950867', N'178966814854', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950868', N'178966814855', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950869', N'178966814856', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950870', N'178967663493', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950871', N'178968322373', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950872', N'178968322374', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950873', N'178968322375', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950874', N'178968322376', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950875', N'178969028229', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950876', N'178969028230', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950877', N'178969028231', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950878', N'178969028232', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950879', N'179002517125', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950880', N'179002517127', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950881', N'179002517126', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950882', N'178969766725', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950883', N'178969766726', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950884', N'178969766727', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950885', N'178969766728', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950886', N'153165063429', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950887', N'153165063430', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950888', N'153165063431', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950889', N'173652824133', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950890', N'173652824135', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950891', N'173652824134', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950892', N'153166387781', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950893', N'153166387782', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950894', N'153166387783', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950895', N'187263535685', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950896', N'153366975622', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950897', N'153366975621', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950917', N'153366975623', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950918', N'208603001541', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950919', N'270339307653', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950920', N'270339307654', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950921', N'270339307655', N'1')
GO

INSERT INTO [dbo].[sys_button_permission] ([id], [button_id], [role_id]) VALUES (N'274846950922', N'270339307656', N'1')
GO


-- ----------------------------
-- Table structure for sys_data_permission
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_data_permission]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_data_permission]
GO

CREATE TABLE [dbo].[sys_data_permission] (
  [id] bigint  NOT NULL,
  [permission_code] int  NULL,
  [dept_ids] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [role_id] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_data_permission] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_permission',
'COLUMN', N'permission_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'指定部门',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_permission',
'COLUMN', N'dept_ids'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色id',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_permission',
'COLUMN', N'role_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色权限表',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_permission'
GO


-- ----------------------------
-- Records of sys_data_permission
-- ----------------------------
INSERT INTO [dbo].[sys_data_permission] ([id], [permission_code], [dept_ids], [role_id]) VALUES (N'130099105285', N'4', N'', N'1')
GO

INSERT INTO [dbo].[sys_data_permission] ([id], [permission_code], [dept_ids], [role_id]) VALUES (N'131663002949', N'3', N'', N'131517140997')
GO

INSERT INTO [dbo].[sys_data_permission] ([id], [permission_code], [dept_ids], [role_id]) VALUES (N'226160867909', N'3', N'', N'226157928197')
GO


-- ----------------------------
-- Table structure for sys_data_source
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_data_source]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_data_source]
GO

CREATE TABLE [dbo].[sys_data_source] (
  [id] bigint  NOT NULL,
  [name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [description] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [url] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [username] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [password] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[sys_data_source] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据源名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_source',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_source',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据源地址',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_source',
'COLUMN', N'url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户名',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_source',
'COLUMN', N'username'
GO

EXEC sp_addextendedproperty
'MS_Description', N'密码',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_source',
'COLUMN', N'password'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_source',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_source',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_source',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_source',
'COLUMN', N'update_time'
GO


-- ----------------------------
-- Records of sys_data_source
-- ----------------------------
INSERT INTO [dbo].[sys_data_source] ([id], [name], [description], [url], [username], [password], [create_by], [create_time], [update_by], [update_time]) VALUES (N'87734678533', N'mysql基础数据源', NULL, N'jdbc:mysql://192.168.0.3/sooth?useUnicode=true&characterEncoding=utf-8&allowMultiQueries=true&useAffectedRows=true&zeroDateTimeBehavior=convertToNull&serverTimezone=Asia/Shanghai', N'root', N'6d95f0648637a3895996ce82aeb6e157', N'admin', N'2023-01-16 20:47:34.0000000', N'admin', N'2023-01-29 20:00:51.0000000')
GO

INSERT INTO [dbo].[sys_data_source] ([id], [name], [description], [url], [username], [password], [create_by], [create_time], [update_by], [update_time]) VALUES (N'93397288581', N'localhost数据源', NULL, N'jdbc:mysql://127.0.0.1:3306/sooth?characterEncoding=UTF-8&useUnicode=true&useSSL=false&tinyInt1isBit=false&allowPublicKeyRetrieval=true&serverTimezone=Asia/Shanghai', N'root', N'443967e8cfda5646d4f3e044f7a18704', N'admin', N'2023-01-17 21:22:12.0000000', N'admin', N'2023-02-11 19:13:22.0000000')
GO

INSERT INTO [dbo].[sys_data_source] ([id], [name], [description], [url], [username], [password], [create_by], [create_time], [update_by], [update_time]) VALUES (N'159443767877', N'pg数据源', NULL, N'jdbc:postgresql://192.168.0.194:5432/sooth', N'postgres', N'443967e8cfda5646d4f3e044f7a18704', N'admin', N'2023-01-29 20:01:49.0000000', NULL, NULL)
GO


-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dept]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_dept]
GO

CREATE TABLE [dbo].[sys_dept] (
  [dept_id] bigint  NOT NULL,
  [parent_id] bigint  NULL,
  [dept_name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [dept_code] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [order_no] float(53)  NULL,
  [description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] int  NULL,
  [del_flag] int  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[sys_dept] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_dept',
'COLUMN', N'dept_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父机构ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_dept',
'COLUMN', N'parent_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'机构/部门名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_dept',
'COLUMN', N'dept_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'机构/部门编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_dept',
'COLUMN', N'dept_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'sys_dept',
'COLUMN', N'order_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'sys_dept',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（1启用，0不启用）',
'SCHEMA', N'dbo',
'TABLE', N'sys_dept',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除状态（0，正常，1已删除）',
'SCHEMA', N'dbo',
'TABLE', N'sys_dept',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_dept',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'sys_dept',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_dept',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'sys_dept',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'组织机构表',
'SCHEMA', N'dbo',
'TABLE', N'sys_dept'
GO


-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO [dbo].[sys_dept] ([dept_id], [parent_id], [dept_name], [dept_code], [order_no], [description], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'1', NULL, N'研发部', N'01', N'1', N'', NULL, N'0', N'admin', N'2023-01-02 00:40:23.0000000', N'admin', N'2023-02-11 20:28:50.0000000')
GO

INSERT INTO [dbo].[sys_dept] ([dept_id], [parent_id], [dept_name], [dept_code], [order_no], [description], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'42083908293', N'1', N'中台研发部', N'0101', N'1', N'', N'0', N'0', N'admin', N'2023-01-08 14:39:21.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dept] ([dept_id], [parent_id], [dept_name], [dept_code], [order_no], [description], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'42089689925', NULL, N'产品部', N'02', N'2', NULL, NULL, N'0', N'admin', N'2023-01-08 14:40:51.0000000', N'admin', N'2023-02-19 16:54:12.0000000')
GO

INSERT INTO [dbo].[sys_dept] ([dept_id], [parent_id], [dept_name], [dept_code], [order_no], [description], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'42202626373', NULL, N'测试部', N'03', N'3', NULL, N'0', N'0', N'admin', N'2023-01-08 15:10:16.0000000', NULL, NULL)
GO


-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dict]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_dict]
GO

CREATE TABLE [dbo].[sys_dict] (
  [id] bigint  NOT NULL,
  [name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [code] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [description] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [del_flag] int  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [type] int  NULL
)
GO

ALTER TABLE [dbo].[sys_dict] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除状态',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典类型0为string,1为number',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'type'
GO


-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO [dbo].[sys_dict] ([id], [name], [code], [description], [del_flag], [create_by], [create_time], [update_by], [update_time], [type]) VALUES (N'8616451013', N'性别', N'sex', NULL, N'0', N'admin', N'2023-01-02 13:23:52.0000000', N'admin', N'2023-02-04 16:42:20.0000000', NULL)
GO

INSERT INTO [dbo].[sys_dict] ([id], [name], [code], [description], [del_flag], [create_by], [create_time], [update_by], [update_time], [type]) VALUES (N'71375867077', N'数据权限', N'data_permission', N'控制数据查看范围', N'0', N'admin', N'2023-01-13 21:47:28.0000000', N'admin', N'2023-01-13 21:47:46.0000000', NULL)
GO

INSERT INTO [dbo].[sys_dict] ([id], [name], [code], [description], [del_flag], [create_by], [create_time], [update_by], [update_time], [type]) VALUES (N'74316854597', N'数据库类型', N'database_type', NULL, N'1', N'admin', N'2023-01-14 10:33:21.0000000', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict] ([id], [name], [code], [description], [del_flag], [create_by], [create_time], [update_by], [update_time], [type]) VALUES (N'76765765253', N'成功状态', N'success_status', NULL, N'0', N'admin', N'2023-01-14 21:11:05.0000000', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict] ([id], [name], [code], [description], [del_flag], [create_by], [create_time], [update_by], [update_time], [type]) VALUES (N'77499306373', N'日志类型', N'log_type', NULL, N'0', N'admin', N'2023-01-15 00:22:07.0000000', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict] ([id], [name], [code], [description], [del_flag], [create_by], [create_time], [update_by], [update_time], [type]) VALUES (N'140960825093', N'按钮权限', N'button_type', NULL, N'0', N'admin', N'2023-01-26 11:48:33.0000000', N'admin', N'2023-01-26 14:57:05.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [name], [code], [description], [del_flag], [create_by], [create_time], [update_by], [update_time], [type]) VALUES (N'153462050245', N'是否', N'whether', NULL, N'1', N'admin', N'2023-01-28 18:04:05.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [name], [code], [description], [del_flag], [create_by], [create_time], [update_by], [update_time], [type]) VALUES (N'270588795589', N'运行状态', N'run_status', NULL, N'0', N'admin', N'2023-02-18 22:25:50.0000000', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict] ([id], [name], [code], [description], [del_flag], [create_by], [create_time], [update_by], [update_time], [type]) VALUES (N'281647507141', N'显示方式', N'show_type', NULL, N'0', N'admin', N'2023-02-20 22:25:42.0000000', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict] ([id], [name], [code], [description], [del_flag], [create_by], [create_time], [update_by], [update_time], [type]) VALUES (N'281904125957', N'校验方式', N'valid_type', NULL, N'0', N'admin', N'2023-02-20 23:32:32.0000000', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict] ([id], [name], [code], [description], [del_flag], [create_by], [create_time], [update_by], [update_time], [type]) VALUES (N'287214592837', N'控件类型', N'control_type', NULL, N'0', N'admin', N'2023-02-21 22:35:28.0000000', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict] ([id], [name], [code], [description], [del_flag], [create_by], [create_time], [update_by], [update_time], [type]) VALUES (N'287229532613', N'查询方式', N'search_type', NULL, N'0', N'admin', N'2023-02-21 22:39:21.0000000', NULL, NULL, NULL)
GO


-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dict_item]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_dict_item]
GO

CREATE TABLE [dbo].[sys_dict_item] (
  [id] bigint  NOT NULL,
  [dict_id] bigint  NULL,
  [name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [value] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [description] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [order_no] float(53)  NULL,
  [tag] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_dict_item] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典id',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_item',
'COLUMN', N'dict_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典项文本',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_item',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典项值',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_item',
'COLUMN', N'value'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_item',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_item',
'COLUMN', N'order_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'颜色标签',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_item',
'COLUMN', N'tag'
GO


-- ----------------------------
-- Records of sys_dict_item
-- ----------------------------
INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'8617419717', N'8616451013', N'男', N'0', NULL, N'1', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'8617941573', N'8616451013', N'女', N'1', NULL, N'1', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'71381259781', N'71375867077', N'本人', N'1', N'只能查看本部门且本人创建的数据', N'1', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'71389730373', N'71375867077', N'本部门', N'2', N'只能查看本部门数据', N'2', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'71398373445', N'71375867077', N'本部门以及子部门', N'3', N'只能查看部门以及子部门数据', N'3', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'71400237445', N'71375867077', N'所有部门', N'4', N'查看所有部门数据', N'4', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'76767618309', N'76765765253', N'成功', N'0', NULL, N'1', N'success')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'76768298309', N'76765765253', N'失败', N'1', NULL, N'2', N'error')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'77513234117', N'77499306373', N'认证日志', N'auth', NULL, N'1', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'77514748549', N'77499306373', N'操作日志', N'operate', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'140963430661', N'140960825093', N'编辑', N'edit', N'通用', N'2', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'140964512005', N'140960825093', N'删除', N'remove', N'通用', N'3', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'140965814533', N'140960825093', N'批量删除', N'remove_batch', N'通用', N'4', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'140966682309', N'140960825093', N'新增', N'add', N'通用', N'1', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'153235156869', N'140960825093', N'菜单权限', N'menu_permission', N'角色管理', N'5', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'153236810181', N'140960825093', N'按钮权限', N'button_permission', N'角色管理', N'5', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'153239148101', N'140960825093', N'数据权限', N'data_permission', N'角色管理', N'5', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'153391879877', N'140960825093', N'按钮配置', N'button_setting', N'菜单权限', N'5', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'153395673029', N'140960825093', N'添加下级', N'add_sub', N'菜单权限', N'5', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'178905837061', N'140960825093', N'角色用户', N'role_user', N'角色权限', N'6', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'178986906693', N'140960825093', N'导入', N'import', N'通用', N'4', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'178989785861', N'140960825093', N'导出', N'export', N'通用', N'4', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'178991094853', N'140960825093', N'同步', N'sync', N'', N'5', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'178992321221', N'140960825093', N'生成', N'generate', N'', N'5', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'197152164165', N'77499306373', N'错误日志', N'error', NULL, N'3', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'275811501061', N'270588795589', N'未运行', N'0', NULL, N'1', N'blue')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'275818088837', N'270588795589', N'运行中', N'1', NULL, N'2', N'green')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'281650423493', N'281647507141', N'隐藏', N'0', NULL, N'1', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'281654521733', N'281647507141', N'显示', N'1', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'281908298373', N'281904125957', N'必填', N'required', NULL, N'1', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'287215769477', N'287214592837', N'输入框', N'input', NULL, N'1', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'287217141957', N'287214592837', N'密码框', N'password', NULL, N'3', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'287220408005', N'287214592837', N'数字框', N'number', NULL, N'5', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'287223508165', N'287214592837', N'选择框', N'select', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'287225453125', N'287214592837', N'日期框', N'date', NULL, N'4', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'287231888133', N'287229532613', N'=', N'=', NULL, N'1', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'287237421125', N'287229532613', N'like', N'like', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'287240704133', N'287229532613', N'between', N'between', NULL, N'3', NULL)
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [name], [value], [description], [order_no], [tag]) VALUES (N'287245772805', N'287229532613', N'in', N'in', NULL, N'4', NULL)
GO


-- ----------------------------
-- Table structure for sys_field_type
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_field_type]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_field_type]
GO

CREATE TABLE [dbo].[sys_field_type] (
  [id] bigint  NOT NULL,
  [column_type] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [attr_type] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_field_type] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'id',
'SCHEMA', N'dbo',
'TABLE', N'sys_field_type',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_field_type',
'COLUMN', N'column_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'属性类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_field_type',
'COLUMN', N'attr_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段类型管理',
'SCHEMA', N'dbo',
'TABLE', N'sys_field_type'
GO


-- ----------------------------
-- Records of sys_field_type
-- ----------------------------
INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'-16', N'LONGNVARCHAR', N'String')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'-15', N'NCHAR', N'String')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'-9', N'NVARCHAR', N'String')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'-8', N'ROWID', N'Object')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'-7', N'BIT', N'Byte')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'-6', N'TINYINT', N'Byte')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'-5', N'BIGINT', N'Long')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'-4', N'LONGVARBINARY', N'Byte[]')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'-3', N'VARBINARY', N'Byte[]')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'-2', N'BINARY', N'Byte[]')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'-1', N'LONGVARCHAR', N'String')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'0', N'NULL', N'Object')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'1', N'CHAR', N'String')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'2', N'NUMERIC', N'java.math.BigDecimal')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'3', N'DECIMAL', N'java.math.BigDecimal')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'4', N'INTEGER', N'Integer')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'5', N'SMALLINT', N'Short')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'6', N'FLOAT', N'Float')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'7', N'REAL', N'Float')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'8', N'DOUBLE', N'Double')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'12', N'VARCHAR', N'String')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'16', N'BOOLEAN', N'Boolean')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'70', N'DATALINK', N'Object')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'91', N'DATE', N'java.util.Date')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'92', N'TIME', N'java.sql.Time')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'93', N'TIMESTAMP', N'java.util.Date')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'1111', N'OTHER', N'Object')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'2000', N'JAVA_OBJECT', N'Object')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'2001', N'DISTINCT', N'Object')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'2002', N'STRUCT', N'Object')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'2003', N'ARRAY', N'Object')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'2004', N'BLOB', N'java.io.InputStream')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'2005', N'CLOB', N'String')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'2006', N'REF', N'Object')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'2009', N'SQLXML', N'Object')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'2011', N'NCLOB', N'String')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'2012', N'REF_CURSOR', N'Object')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'2013', N'TIME_WITH_TIMEZONE', N'Object')
GO

INSERT INTO [dbo].[sys_field_type] ([id], [column_type], [attr_type]) VALUES (N'2014', N'TIMESTAMP_WITH_TIMEZONE', N'Object')
GO


-- ----------------------------
-- Table structure for sys_gen_field
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_gen_field]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_gen_field]
GO

CREATE TABLE [dbo].[sys_gen_field] (
  [id] bigint  NOT NULL,
  [table_id] bigint  NULL,
  [column_name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [column_type] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [column_comment] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [attr_name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [attr_type] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [order_no] int  NULL,
  [primary_pk] smallint  NULL,
  [show_list_type] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [valid_type] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [dict_code] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [show_edit_type] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [control_type] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [search_type] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_gen_field] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'id',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_field',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_field',
'COLUMN', N'table_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_field',
'COLUMN', N'column_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_field',
'COLUMN', N'column_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段说明',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_field',
'COLUMN', N'column_comment'
GO

EXEC sp_addextendedproperty
'MS_Description', N'属性名',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_field',
'COLUMN', N'attr_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'属性类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_field',
'COLUMN', N'attr_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_field',
'COLUMN', N'order_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键 0：否  1：是',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_field',
'COLUMN', N'primary_pk'
GO

EXEC sp_addextendedproperty
'MS_Description', N'列表页显示方式',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_field',
'COLUMN', N'show_list_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'校验方式',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_field',
'COLUMN', N'valid_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_field',
'COLUMN', N'dict_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编辑页显示方式',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_field',
'COLUMN', N'show_edit_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'控件类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_field',
'COLUMN', N'control_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'查询方式',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_field',
'COLUMN', N'search_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'代码生成表字段',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_field'
GO


-- ----------------------------
-- Records of sys_gen_field
-- ----------------------------
INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'190414499013', N'190414497349', N'id', N'BIGINT', N'主键id', N'id', N'Long', NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'190414499014', N'190414497349', N'parent_id', N'BIGINT', N'父id', N'parentId', N'Long', NULL, N'0', NULL, NULL, N'sex', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'190414499015', N'190414497349', N'name', N'VARCHAR', N'菜单标题', N'name', N'String', NULL, N'0', NULL, N'required', N'sex', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'190414499016', N'190414497349', N'url', N'VARCHAR', N'路径', N'url', N'String', NULL, N'0', NULL, NULL, N'data_permission', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'190414499017', N'190414497349', N'component', N'VARCHAR', N'组件', N'component', N'String', NULL, N'1', N'0', N'required', N'sex', N'0', N'input', N'=')
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'190414499018', N'190414497349', N'redirect', N'VARCHAR', N'一级菜单跳转地址', N'redirect', N'String', NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'190414499019', N'190414497349', N'menu_type', N'INTEGER', N'菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)', N'menuType', N'Integer', NULL, N'1', N'0', N'required', N'sex', N'0', N'input', N'=')
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'190414499020', N'190414497349', N'sort_no', N'DOUBLE', N'菜单排序', N'sortNo', N'Double', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'190414499021', N'190414497349', N'fixed_tab', N'SMALLINT', N'聚合子路由: 1是0否', N'fixedTab', N'Short', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'190414499022', N'190414497349', N'icon', N'VARCHAR', N'菜单图标', N'icon', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'190414499023', N'190414497349', N'hidden', N'INTEGER', N'是否隐藏路由: 0否,1是', N'hidden', N'Integer', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'190414499024', N'190414497349', N'hide_tab', N'INTEGER', N'是否隐藏tab: 0否,1是', N'hideTab', N'Integer', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'190414499025', N'190414497349', N'description', N'VARCHAR', N'描述', N'description', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'190414499026', N'190414497349', N'create_by', N'VARCHAR', N'创建人', N'createBy', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'190414499027', N'190414497349', N'create_time', N'TIMESTAMP', N'创建时间', N'createTime', N'java.util.Date', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'190414499028', N'190414497349', N'update_by', N'VARCHAR', N'更新人', N'updateBy', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'190414499029', N'190414497349', N'update_time', N'TIMESTAMP', N'更新时间', N'updateTime', N'java.util.Date', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'190414499030', N'190414497349', N'del_flag', N'INTEGER', N'删除状态 0正常 1已删除', N'delFlag', N'Integer', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'190414499031', N'190414497349', N'keep_alive', N'SMALLINT', N'缓存路由: 1是0否', N'keepAlive', N'Short', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'190414499032', N'190414497349', N'component_name', N'VARCHAR', N'组件名称', N'componentName', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384944133', N'197384943109', N'id', N'BIGINT', N'id', N'id', N'Long', NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384944134', N'197384943109', N'class_name', N'VARCHAR', N'基类全类名', N'className', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384944135', N'197384943109', N'fields', N'VARCHAR', N'基类字段，多个用英文逗号分隔', N'fields', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384944136', N'197384943109', N'create_time', N'TIMESTAMP', N'创建时间', N'createTime', N'java.util.Date', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384944137', N'197384943109', N'update_time', N'TIMESTAMP', N'创建时间', N'updateTime', N'java.util.Date', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384944138', N'197384943109', N'create_by', N'VARCHAR', N'创建人', N'createBy', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384944139', N'197384943109', N'update_by', N'VARCHAR', N'更新人', N'updateBy', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384947333', N'197384947013', N'id', N'BIGINT', N'id', N'id', N'Long', NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384947334', N'197384947013', N'column_type', N'VARCHAR', N'字段类型', N'columnType', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384947335', N'197384947013', N'attr_type', N'VARCHAR', N'属性类型', N'attrType', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384948933', N'197384948549', N'id', N'BIGINT', N'id', N'id', N'Long', NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384948934', N'197384948549', N'table_name', N'VARCHAR', N'表名', N'tableName', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384948935', N'197384948549', N'class_name', N'VARCHAR', N'类名', N'className', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384948936', N'197384948549', N'table_comment', N'VARCHAR', N'说明', N'tableComment', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384948937', N'197384948549', N'create_time', N'TIMESTAMP', N'创建时间', N'createTime', N'java.util.Date', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384948938', N'197384948549', N'update_time', N'TIMESTAMP', N'创建时间', N'updateTime', N'java.util.Date', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384948939', N'197384948549', N'create_by', N'VARCHAR', N'创建人', N'createBy', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384948940', N'197384948549', N'update_by', N'VARCHAR', N'更新人', N'updateBy', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384950213', N'197384950085', N'id', N'BIGINT', N'id', N'id', N'Long', NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384950214', N'197384950085', N'table_id', N'BIGINT', N'表ID', N'tableId', N'Long', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384950215', N'197384950085', N'column_name', N'VARCHAR', N'字段名称', N'columnName', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384950216', N'197384950085', N'column_type', N'VARCHAR', N'字段类型', N'columnType', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384950217', N'197384950085', N'column_comment', N'VARCHAR', N'字段说明', N'columnComment', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384950218', N'197384950085', N'attr_name', N'VARCHAR', N'属性名', N'attrName', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384950219', N'197384950085', N'attr_type', N'VARCHAR', N'属性类型', N'attrType', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384950220', N'197384950085', N'order_no', N'INTEGER', N'排序', N'orderNo', N'Integer', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384950221', N'197384950085', N'primary_pk', N'SMALLINT', N'主键 0：否  1：是', N'primaryPk', N'Short', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384952517', N'197384952389', N'id', N'BIGINT', N'id', N'id', N'Long', NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384952518', N'197384952389', N'name', N'VARCHAR', N'模板名称', N'name', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384952519', N'197384952389', N'content', N'VARCHAR', NULL, N'content', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384952520', N'197384952389', N'create_time', N'TIMESTAMP', N'创建时间', N'createTime', N'java.util.Date', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384952521', N'197384952389', N'update_by', N'VARCHAR', N'更新人登录名称', N'updateBy', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384952522', N'197384952389', N'update_time', N'TIMESTAMP', N'更新日期', N'updateTime', N'java.util.Date', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384952523', N'197384952389', N'create_by', N'VARCHAR', N'创建人登录名称', N'createBy', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384952524', N'197384952389', N'group_id', N'BIGINT', N'分组id', N'groupId', N'Long', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384952525', N'197384952389', N'file_name', N'VARCHAR', N'模板文件名', N'fileName', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384953541', N'197384953477', N'id', N'BIGINT', N'id', N'id', N'Long', NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384953542', N'197384953477', N'name', N'VARCHAR', N'表名', N'name', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384954629', N'197384954501', N'id', N'BIGINT', NULL, N'id', N'Long', NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384954630', N'197384954501', N'menu_id', N'BIGINT', N'菜单id', N'menuId', N'Long', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384954631', N'197384954501', N'type', N'VARCHAR', N'按钮权限类型', N'type', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384955845', N'197384955717', N'id', N'BIGINT', NULL, N'id', N'Long', NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384955846', N'197384955717', N'button_id', N'BIGINT', N'按钮id', N'buttonId', N'Long', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384955847', N'197384955717', N'role_id', N'BIGINT', N'角色id', N'roleId', N'Long', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384956869', N'197384956805', N'id', N'BIGINT', NULL, N'id', N'Long', NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384956870', N'197384956805', N'permission_code', N'INTEGER', N'权限', N'permissionCode', N'Integer', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384956871', N'197384956805', N'dept_ids', N'VARCHAR', N'指定部门', N'deptIds', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384956872', N'197384956805', N'role_id', N'BIGINT', N'角色id', N'roleId', N'Long', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384958213', N'197384958021', N'id', N'BIGINT', NULL, N'id', N'Long', NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384958214', N'197384958021', N'name', N'VARCHAR', N'数据源名称', N'name', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384958215', N'197384958021', N'description', N'VARCHAR', N'描述', N'description', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384958216', N'197384958021', N'url', N'VARCHAR', N'数据源地址', N'url', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384958217', N'197384958021', N'username', N'VARCHAR', N'用户名', N'username', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384958218', N'197384958021', N'password', N'VARCHAR', N'密码', N'password', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384958219', N'197384958021', N'create_by', N'VARCHAR', N'创建人', N'createBy', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384958220', N'197384958021', N'create_time', N'TIMESTAMP', N'创建日期', N'createTime', N'java.util.Date', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384958221', N'197384958021', N'update_by', N'VARCHAR', N'更新人', N'updateBy', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384958222', N'197384958021', N'update_time', N'TIMESTAMP', N'更新日期', N'updateTime', N'java.util.Date', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384959685', N'197384959493', N'dept_id', N'BIGINT', N'ID', N'deptId', N'Long', NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384959686', N'197384959493', N'parent_id', N'BIGINT', N'父机构ID', N'parentId', N'Long', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384959687', N'197384959493', N'dept_name', N'VARCHAR', N'机构/部门名称', N'deptName', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384959688', N'197384959493', N'dept_code', N'VARCHAR', N'机构/部门编码', N'deptCode', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384959689', N'197384959493', N'order_no', N'DOUBLE', N'排序', N'orderNo', N'Double', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384959690', N'197384959493', N'description', N'VARCHAR', N'描述', N'description', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384959691', N'197384959493', N'status', N'INTEGER', N'状态（1启用，0不启用）', N'status', N'Integer', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384959692', N'197384959493', N'del_flag', N'INTEGER', N'删除状态（0，正常，1已删除）', N'delFlag', N'Integer', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384959693', N'197384959493', N'create_by', N'VARCHAR', N'创建人', N'createBy', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384959694', N'197384959493', N'create_time', N'TIMESTAMP', N'创建日期', N'createTime', N'java.util.Date', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384959695', N'197384959493', N'update_by', N'VARCHAR', N'更新人', N'updateBy', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384959696', N'197384959493', N'update_time', N'TIMESTAMP', N'更新日期', N'updateTime', N'java.util.Date', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384961093', N'197384960965', N'id', N'BIGINT', NULL, N'id', N'Long', NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384961094', N'197384960965', N'name', N'VARCHAR', N'字典名称', N'name', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384961095', N'197384960965', N'code', N'VARCHAR', N'字典编码', N'code', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384961096', N'197384960965', N'description', N'VARCHAR', N'描述', N'description', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384961097', N'197384960965', N'del_flag', N'INTEGER', N'删除状态', N'delFlag', N'Integer', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384961098', N'197384960965', N'create_by', N'VARCHAR', N'创建人', N'createBy', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384961099', N'197384960965', N'create_time', N'TIMESTAMP', N'创建时间', N'createTime', N'java.util.Date', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384961157', N'197384960965', N'update_by', N'VARCHAR', N'更新人', N'updateBy', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384961158', N'197384960965', N'update_time', N'TIMESTAMP', N'更新时间', N'updateTime', N'java.util.Date', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384961159', N'197384960965', N'type', N'INTEGER', N'字典类型0为string,1为number', N'type', N'Integer', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384962501', N'197384962373', N'id', N'BIGINT', NULL, N'id', N'Long', NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384962502', N'197384962373', N'dict_id', N'BIGINT', N'字典id', N'dictId', N'Long', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384962503', N'197384962373', N'name', N'VARCHAR', N'字典项文本', N'name', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384962504', N'197384962373', N'value', N'VARCHAR', N'字典项值', N'value', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384962505', N'197384962373', N'description', N'VARCHAR', N'描述', N'description', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384962506', N'197384962373', N'order_no', N'DOUBLE', N'排序', N'orderNo', N'Double', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384963909', N'197384963717', N'id', N'BIGINT', NULL, N'id', N'Long', NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384963910', N'197384963717', N'log_type', N'VARCHAR', N'日志类型', N'logType', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384963911', N'197384963717', N'username', N'VARCHAR', N'操作用户账号', N'username', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384963912', N'197384963717', N'realname', N'VARCHAR', N'操作用户名称', N'realname', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384963913', N'197384963717', N'ip', N'VARCHAR', N'IP', N'ip', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384963914', N'197384963717', N'method', N'VARCHAR', N'请求java方法', N'method', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384963915', N'197384963717', N'request_url', N'VARCHAR', N'请求路径', N'requestUrl', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384963916', N'197384963717', N'request_param', N'VARCHAR', N'请求参数', N'requestParam', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384963917', N'197384963717', N'request_type', N'VARCHAR', N'请求类型', N'requestType', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384963918', N'197384963717', N'cost_time', N'BIGINT', N'耗时', N'costTime', N'Long', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384963919', N'197384963717', N'create_time', N'TIMESTAMP', N'创建时间', N'createTime', N'java.util.Date', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384963920', N'197384963717', N'user_agent', N'VARCHAR', N'浏览器', N'userAgent', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384963921', N'197384963717', N'status', N'INTEGER', N'状态', N'status', N'Integer', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384963922', N'197384963717', N'biz_module', N'VARCHAR', N'业务模块', N'bizModule', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384963923', N'197384963717', N'description', N'VARCHAR', N'操作描述', N'description', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384963924', N'197384963717', N'message', N'VARCHAR', N'错误信息', N'message', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384963925', N'197384963717', N'exception_class', N'VARCHAR', N'异常类', N'exceptionClass', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384963926', N'197384963717', N'stack_trace', N'VARCHAR', N'详尽异常', N'stackTrace', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384966341', N'197384966149', N'id', N'BIGINT', N'主键id', N'id', N'Long', NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384966342', N'197384966149', N'role_name', N'VARCHAR', N'角色名称', N'roleName', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384966343', N'197384966149', N'role_code', N'VARCHAR', N'角色编码', N'roleCode', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384966344', N'197384966149', N'dept_id', N'BIGINT', N'部门id', N'deptId', N'Long', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384966345', N'197384966149', N'description', N'VARCHAR', N'描述', N'description', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384966346', N'197384966149', N'create_by', N'VARCHAR', N'创建人', N'createBy', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384966347', N'197384966149', N'create_time', N'TIMESTAMP', N'创建时间', N'createTime', N'java.util.Date', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384966348', N'197384966149', N'update_by', N'VARCHAR', N'更新人', N'updateBy', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384966349', N'197384966149', N'update_time', N'TIMESTAMP', N'更新时间', N'updateTime', N'java.util.Date', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384967621', N'197384967493', N'id', N'BIGINT', NULL, N'id', N'Long', NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384967622', N'197384967493', N'role_id', N'BIGINT', N'角色id', N'roleId', N'Long', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384967623', N'197384967493', N'permission_id', N'BIGINT', N'权限id', N'permissionId', N'Long', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384968965', N'197384968837', N'id', N'BIGINT', N'主键id', N'id', N'Long', NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384968966', N'197384968837', N'username', N'VARCHAR', N'登录账号', N'username', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384968967', N'197384968837', N'realname', N'VARCHAR', N'真实姓名', N'realname', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384968968', N'197384968837', N'password', N'VARCHAR', N'密码', N'password', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384968969', N'197384968837', N'avatar', N'VARCHAR', N'头像', N'avatar', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384968970', N'197384968837', N'sex', N'SMALLINT', N'性别', N'sex', N'Short', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384968971', N'197384968837', N'phone', N'VARCHAR', N'电话', N'phone', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384968972', N'197384968837', N'del_flag', N'SMALLINT', N'删除状态(0-正常,1-已删除)', N'delFlag', N'Short', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384968973', N'197384968837', N'create_by', N'VARCHAR', N'创建人', N'createBy', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384968974', N'197384968837', N'create_time', N'TIMESTAMP', N'创建时间', N'createTime', N'java.util.Date', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384968975', N'197384968837', N'update_by', N'VARCHAR', N'更新人', N'updateBy', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384968976', N'197384968837', N'update_time', N'TIMESTAMP', N'更新时间', N'updateTime', N'java.util.Date', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384970181', N'197384970053', N'id', N'BIGINT', N'主键id', N'id', N'Long', NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384970182', N'197384970053', N'user_id', N'BIGINT', N'用户id', N'userId', N'Long', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384970183', N'197384970053', N'dept_id', N'BIGINT', N'部门id', N'deptId', N'Long', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384971333', N'197384971205', N'id', N'BIGINT', N'主键id', N'id', N'Long', NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384971334', N'197384971205', N'user_id', N'BIGINT', N'用户id', N'userId', N'Long', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'197384971335', N'197384971205', N'role_id', N'BIGINT', N'角色id', N'roleId', N'Long', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'274859735429', N'274859734981', N'id', N'VARCHAR', NULL, N'id', N'String', NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'274859735430', N'274859734981', N'create_by', N'VARCHAR', N'创建人', N'createBy', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'274859735431', N'274859734981', N'create_time', N'TIMESTAMP', N'创建时间', N'createTime', N'java.util.Date', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'274859735432', N'274859734981', N'del_flag', N'INTEGER', N'删除状态', N'delFlag', N'Integer', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'274859735433', N'274859734981', N'update_by', N'VARCHAR', N'修改人', N'updateBy', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'274859735434', N'274859734981', N'update_time', N'TIMESTAMP', N'修改时间', N'updateTime', N'java.util.Date', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'274859735435', N'274859734981', N'job_name', N'VARCHAR', N'任务名', N'jobName', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'274859735436', N'274859734981', N'cron_expression', N'VARCHAR', N'cron表达式', N'cronExpression', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'274859735437', N'274859734981', N'parameter', N'VARCHAR', N'参数', N'parameter', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'274859735438', N'274859734981', N'description', N'VARCHAR', N'描述', N'description', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'274859735439', N'274859734981', N'status', N'INTEGER', N'状态 0正常 -1停止', N'status', N'Integer', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'274868829253', N'274868828933', N'id', N'VARCHAR', NULL, N'id', N'String', NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'274868829254', N'274868828933', N'create_by', N'VARCHAR', N'创建人', N'createBy', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'274868829255', N'274868828933', N'create_time', N'TIMESTAMP', N'创建时间', N'createTime', N'java.util.Date', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'274868829256', N'274868828933', N'del_flag', N'INTEGER', N'删除状态', N'delFlag', N'Integer', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'274868829257', N'274868828933', N'update_by', N'VARCHAR', N'修改人', N'updateBy', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'274868829258', N'274868828933', N'update_time', N'TIMESTAMP', N'修改时间', N'updateTime', N'java.util.Date', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'274868829259', N'274868828933', N'name', N'VARCHAR', N'任务名', N'name', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'274868829260', N'274868828933', N'cron', N'VARCHAR', N'cron表达式', N'cron', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'274868829261', N'274868828933', N'parameter', N'VARCHAR', N'参数', N'parameter', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'274868829262', N'274868828933', N'description', N'VARCHAR', N'描述', N'description', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'274868829263', N'274868828933', N'status', N'INTEGER', N'状态 0正常 -1停止', N'status', N'Integer', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'287265331525', N'287265330309', N'id', N'BIGINT', N'id', N'id', N'Long', NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'287265331526', N'287265330309', N'table_id', N'BIGINT', N'表ID', N'tableId', N'Long', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'287265331527', N'287265330309', N'column_name', N'VARCHAR', N'字段名称', N'columnName', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'287265331528', N'287265330309', N'column_type', N'VARCHAR', N'字段类型', N'columnType', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'287265331529', N'287265330309', N'column_comment', N'VARCHAR', N'字段说明', N'columnComment', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'287265331530', N'287265330309', N'attr_name', N'VARCHAR', N'属性名', N'attrName', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'287265331531', N'287265330309', N'attr_type', N'VARCHAR', N'属性类型', N'attrType', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'287265331532', N'287265330309', N'order_no', N'INTEGER', N'排序', N'orderNo', N'Integer', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'287265331533', N'287265330309', N'primary_pk', N'SMALLINT', N'主键 0：否  1：是', N'primaryPk', N'Short', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'287265331534', N'287265330309', N'show_list_type', N'SMALLINT', N'列表页显示方式', N'showListType', N'Short', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'287265331535', N'287265330309', N'valid_type', N'VARCHAR', N'校验方式', N'validType', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'287265331536', N'287265330309', N'dict_code', N'VARCHAR', N'字典', N'dictCode', N'String', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_gen_field] ([id], [table_id], [column_name], [column_type], [column_comment], [attr_name], [attr_type], [order_no], [primary_pk], [show_list_type], [valid_type], [dict_code], [show_edit_type], [control_type], [search_type]) VALUES (N'287265331537', N'287265330309', N'show_edit_type', N'SMALLINT', N'编辑页显示方式', N'showEditType', N'Short', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO


-- ----------------------------
-- Table structure for sys_gen_group
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_gen_group]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_gen_group]
GO

CREATE TABLE [dbo].[sys_gen_group] (
  [id] bigint  NOT NULL,
  [name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_gen_group] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'id',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_group',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表名',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_group',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板配置组',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_group'
GO


-- ----------------------------
-- Records of sys_gen_group
-- ----------------------------
INSERT INTO [dbo].[sys_gen_group] ([id], [name]) VALUES (N'82324589637', N'基础模板组')
GO


-- ----------------------------
-- Table structure for sys_gen_table
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_gen_table]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_gen_table]
GO

CREATE TABLE [dbo].[sys_gen_table] (
  [id] bigint  NOT NULL,
  [table_name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [class_name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [table_comment] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_time] datetime2(7)  NULL,
  [create_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_gen_table] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'id',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_table',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表名',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_table',
'COLUMN', N'table_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'类名',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_table',
'COLUMN', N'class_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'说明',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_table',
'COLUMN', N'table_comment'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_table',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_table',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_table',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_table',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'代码生成表',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_table'
GO


-- ----------------------------
-- Records of sys_gen_table
-- ----------------------------
INSERT INTO [dbo].[sys_gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'190414497349', N'sys_menu', N'SysMenu', N'菜单权限表', N'2023-02-04 10:27:07.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[sys_gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384943109', N'gen_base_class', N'GenBaseClass', N'基类管理', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[sys_gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384947013', N'gen_field_type', N'GenFieldType', N'字段类型管理', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[sys_gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384948549', N'gen_table', N'GenTable', N'代码生成表', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[sys_gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384952389', N'gen_template', N'GenTemplate', N'模板配置', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[sys_gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384953477', N'gen_template_group', N'GenTemplateGroup', N'模板配置组', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[sys_gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384954501', N'sys_button', N'SysButton', N'角色权限表', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[sys_gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384955717', N'sys_button_permission', N'SysButtonPermission', N'角色权限表', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[sys_gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384956805', N'sys_data_permission', N'SysDataPermission', N'角色权限表', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[sys_gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384958021', N'sys_data_source', N'SysDataSource', NULL, N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[sys_gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384959493', N'sys_dept', N'SysDept', N'组织机构表', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[sys_gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384960965', N'sys_dict', N'SysDict', NULL, N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[sys_gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384962373', N'sys_dict_item', N'SysDictItem', NULL, N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[sys_gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384963717', N'sys_log', N'SysLog', N'系统日志表', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[sys_gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384966149', N'sys_role', N'SysRole', N'角色表', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[sys_gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384967493', N'sys_role_permission', N'SysRolePermission', N'角色权限表', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[sys_gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384968837', N'sys_user', N'SysUser', N'用户表', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[sys_gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384970053', N'sys_user_dept', N'SysUserDept', N'用户部门表', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[sys_gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'197384971205', N'sys_user_role', N'SysUserRole', N'用户角色表', N'2023-02-05 16:42:20.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[sys_gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'274868828933', N'sys_quartz', N'SysQuartz', N'定时任务', N'2023-02-19 17:00:25.0000000', NULL, N'admin', NULL)
GO

INSERT INTO [dbo].[sys_gen_table] ([id], [table_name], [class_name], [table_comment], [create_time], [update_time], [create_by], [update_by]) VALUES (N'287265330309', N'gen_table_field', N'GenTableField', N'代码生成表字段', N'2023-02-21 22:48:41.0000000', NULL, N'admin', NULL)
GO


-- ----------------------------
-- Table structure for sys_gen_template
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_gen_template]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_gen_template]
GO

CREATE TABLE [dbo].[sys_gen_template] (
  [id] bigint  NOT NULL,
  [name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [content] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [group_id] bigint  NULL,
  [file_name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_gen_template] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'id',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_template',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_template',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_template',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_template',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_template',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_template',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分组id',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_template',
'COLUMN', N'group_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板文件名',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_template',
'COLUMN', N'file_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板配置',
'SCHEMA', N'dbo',
'TABLE', N'sys_gen_template'
GO


-- ----------------------------
-- Records of sys_gen_template
-- ----------------------------
INSERT INTO [dbo].[sys_gen_template] ([id], [name], [content], [create_time], [update_by], [update_time], [create_by], [group_id], [file_name]) VALUES (N'192034258629', N'编辑视图', N'package ${packageName}.${moduleName}.${entityName}.table;

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
public class ${className}EV extends ${baseClass} {
<#else>
public class ${className}EV {  
</#if>  
    <#list columns as column>
    <#if !baseFields??||baseFields?seq_index_of("${column.attrName}")==-1>
		/**
     * ${column.columnComment}
     */
    private ${column.attrType} ${column.attrName};
		</#if>
</#list>
}', N'2023-02-04 17:28:55.0000000', N'admin', N'2023-02-21 22:47:33.0000000', N'admin', N'82324589637', N'${className}EV.java')
GO

INSERT INTO [dbo].[sys_gen_template] ([id], [name], [content], [create_time], [update_by], [update_time], [create_by], [group_id], [file_name]) VALUES (N'192578414789', N'查询条件接受类', N'package ${packageName}.${moduleName}.${entityName}.model;

import lombok.Data;

@Data
public class ${className}Model {
  
}', N'2023-02-04 19:50:38.0000000', N'admin', N'2023-02-04 19:54:07.0000000', N'admin', N'82324589637', N'${className}Model.java')
GO

INSERT INTO [dbo].[sys_gen_template] ([id], [name], [content], [create_time], [update_by], [update_time], [create_by], [group_id], [file_name]) VALUES (N'192596589061', N'列表视图', N'package ${packageName}.${moduleName}.${entityName}.view;

import lombok.Data;

@Data
public class ${className}LV {
  
}', N'2023-02-04 19:55:22.0000000', N'admin', N'2023-02-21 22:46:59.0000000', N'admin', N'82324589637', N'${className}LV.java')
GO

INSERT INTO [dbo].[sys_gen_template] ([id], [name], [content], [create_time], [update_by], [update_time], [create_by], [group_id], [file_name]) VALUES (N'192608309829', N'接口服务类', N'package ${packageName}.${moduleName}.${entityName}.service;

import com.moxa.dream.template.service.IService;
import ${packageName}.${moduleName}.${entityName}.view.${className}ListView;
import ${packageName}.${moduleName}.${entityName}.view.${className}EditView;


public class I${className}Service extends IService<${className}ListView,${className}EditView> {
  
}', N'2023-02-04 19:58:25.0000000', NULL, NULL, N'admin', N'82324589637', N'I${className}Service.java')
GO

INSERT INTO [dbo].[sys_gen_template] ([id], [name], [content], [create_time], [update_by], [update_time], [create_by], [group_id], [file_name]) VALUES (N'192619070789', N'接口实现类', N'package ${packageName}.${moduleName}.${entityName}.service.impl;

import com.moxa.dream.template.service.IService;
import ${packageName}.${moduleName}.${entityName}.service.I${className}Service;
import ${packageName}.${moduleName}.${entityName}.view.${className}ListView;
import ${packageName}.${moduleName}.${entityName}.view.${className}EditView;
import org.springframework.stereotype.Service;

@Service
public class ${className}ServiceImpl extends ServiceImpl<${className}ListView,${className}EditView> implements I${className}Service{
  
}', N'2023-02-04 20:01:13.0000000', NULL, NULL, N'admin', N'82324589637', N'${className}ServiceImpl.java')
GO

INSERT INTO [dbo].[sys_gen_template] ([id], [name], [content], [create_time], [update_by], [update_time], [create_by], [group_id], [file_name]) VALUES (N'192633866053', N'视图控制类', N'package ${packageName}.${moduleName}.${entityName}.service.impl;

import com.moxa.sooth.core.base.controller.BaseController;
import ${packageName}.${moduleName}.${entityName}.service.I${className}Service;
import ${packageName}.${moduleName}.${entityName}.model.${className}Model;
import ${packageName}.${moduleName}.${entityName}.view.${className}EditView;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/${moduleName}/${entityName}")
public class ${className}Controller extends BaseController<I${className}Service, ${className}EditView, ${className}Model>{
  
}', N'2023-02-04 20:05:04.0000000', NULL, NULL, N'admin', N'82324589637', N'${className}Controller.java')
GO

INSERT INTO [dbo].[sys_gen_template] ([id], [name], [content], [create_time], [update_by], [update_time], [create_by], [group_id], [file_name]) VALUES (N'192662837189', N'api请求页', N'import { BaseApi } from ''/@/api/base/baseApi'';

class ${entityName?cap_first}Api extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
}

export const ${entityName}Api = new ${entityName?cap_first}Api(''/${moduleName}/${entityName}'').api;', N'2023-02-04 20:12:37.0000000', N'admin', N'2023-02-04 20:13:07.0000000', N'admin', N'82324589637', N'${entityName}.api.ts')
GO

INSERT INTO [dbo].[sys_gen_template] ([id], [name], [content], [create_time], [update_by], [update_time], [create_by], [group_id], [file_name]) VALUES (N'192688658309', N'列表页', N'<template>
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
</script>', N'2023-02-04 20:19:20.0000000', NULL, NULL, N'admin', N'82324589637', N'index.vue')
GO

INSERT INTO [dbo].[sys_gen_template] ([id], [name], [content], [create_time], [update_by], [update_time], [create_by], [group_id], [file_name]) VALUES (N'192702147397', N'弹窗页', N'<template>
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
</script>', N'2023-02-04 20:22:51.0000000', NULL, NULL, N'admin', N'82324589637', N'${entityName?cap_first}.vue')
GO

INSERT INTO [dbo].[sys_gen_template] ([id], [name], [content], [create_time], [update_by], [update_time], [create_by], [group_id], [file_name]) VALUES (N'192707297157', N'数据页', N'import { BasicColumn } from ''/@/components/Table'';
import { FormSchema } from ''/@/components/Table'';

export const columns: BasicColumn[] = [
];

export const searchFormSchema: FormSchema[] = [
];

export const formSchema: FormSchema[] = [
];', N'2023-02-04 20:24:12.0000000', NULL, NULL, N'admin', N'82324589637', N'${entityName}.data.ts')
GO

INSERT INTO [dbo].[sys_gen_template] ([id], [name], [content], [create_time], [update_by], [update_time], [create_by], [group_id], [file_name]) VALUES (N'362832993636357', N'数据库表java类映射', N'package ${packageName}.${moduleName}.${entityName}.table;

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
}', N'2022-12-11 08:31:15.0000000', N'admin', N'2023-02-19 17:03:06.0000000', NULL, N'82324589637', N'${className}.java')
GO


-- ----------------------------
-- Table structure for sys_interface_permission
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_interface_permission]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_interface_permission]
GO

CREATE TABLE [dbo].[sys_interface_permission] (
  [id] bigint  NOT NULL,
  [url] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [role_id] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_interface_permission] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'接口url',
'SCHEMA', N'dbo',
'TABLE', N'sys_interface_permission',
'COLUMN', N'url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色id',
'SCHEMA', N'dbo',
'TABLE', N'sys_interface_permission',
'COLUMN', N'role_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色权限表',
'SCHEMA', N'dbo',
'TABLE', N'sys_interface_permission'
GO


-- ----------------------------
-- Records of sys_interface_permission
-- ----------------------------

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_log]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_log]
GO

CREATE TABLE [dbo].[sys_log] (
  [id] bigint  NOT NULL,
  [log_type] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [username] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [realname] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ip] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [method] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [request_url] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [request_param] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [request_type] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [cost_time] bigint  NULL,
  [create_time] datetime2(7)  NULL,
  [user_agent] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] int  NULL,
  [biz_module] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [description] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [message] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [exception_class] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [stack_trace] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_log] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'日志类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'log_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作用户账号',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'username'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作用户名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'realname'
GO

EXEC sp_addextendedproperty
'MS_Description', N'IP',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'ip'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求java方法',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'method'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求路径',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'request_url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求参数',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'request_param'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'request_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'耗时',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'cost_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'浏览器',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'user_agent'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'业务模块',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'biz_module'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作描述',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'错误信息',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'message'
GO

EXEC sp_addextendedproperty
'MS_Description', N'异常类',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'exception_class'
GO

EXEC sp_addextendedproperty
'MS_Description', N'详尽异常',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'stack_trace'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统日志表',
'SCHEMA', N'dbo',
'TABLE', N'sys_log'
GO


-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO [dbo].[sys_log] ([id], [log_type], [username], [realname], [ip], [method], [request_url], [request_param], [request_type], [cost_time], [create_time], [user_agent], [status], [biz_module], [description], [message], [exception_class], [stack_trace]) VALUES (N'915694898757', N'auth', NULL, NULL, N'127.0.0.1', N'com.moxa.sooth.module.base.login.controller.LoginController.login', N'/sooth/sys/login', N'[{"captcha":"vsms","checkKey":"1686810123088","password":"123456","username":"admin"}]', N'POST', N'332', N'2023-06-15 14:22:12.3470000', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', N'1', N'系统认证', N'登录', N'执行''com.moxa.sooth.module.base.buttonPermission.mapper.SysButtonPermissionMapper.getPermCodes''失败：Incorrect syntax near ''`''.', N'com.moxa.dream.util.exception.DreamRunTimeException', N'com.moxa.dream.util.exception.DreamRunTimeException: 执行''com.moxa.sooth.module.base.buttonPermission.mapper.SysButtonPermissionMapper.getPermCodes''失败：Incorrect syntax near ''`''.
	at com.moxa.dream.system.core.session.DefaultSession.execute(DefaultSession.java:83)
	at com.moxa.dream.system.core.session.DefaultSession.execute(DefaultSession.java:48)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at com.moxa.dream.template.session.SessionTemplate$SessionInterceptor.invoke(SessionTemplate.java:84)
	at com.sun.proxy.$Proxy108.execute(Unknown Source)
	at com.moxa.dream.template.session.SessionTemplate.execute(SessionTemplate.java:49)
	at com.moxa.dream.system.mapper.DefaultMapperInvoke.invoke(DefaultMapperInvoke.java:17)
	at com.moxa.dream.system.mapper.DefaultMapperFactory.lambda$getMapper$3(DefaultMapperFactory.java:274)
	at com.sun.proxy.$Proxy111.getPermCodes(Unknown Source)
	at com.moxa.sooth.module.base.buttonPermission.service.impl.SysButtonPermissionServiceImpl.getPermCodes(SysButtonPermissionServiceImpl.java:47)
	at com.moxa.sooth.module.base.core.service.impl.SysApiServiceImpl.getLoginUser(SysApiServiceImpl.java:68)
	at com.moxa.sooth.module.base.login.controller.LoginController.login(LoginController.java:63)
	at com.moxa.sooth.module.base.login.controller.LoginController$$FastClassBySpringCGLIB$$69c88930.invoke(<generated>)
	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:783)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)
	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:89)
	at com.moxa.sooth.module.base.core.aspect.LogAspect.proceed(LogAspect.java:82)
	at com.moxa.sooth.module.base.core.aspect.LogAspect.login(LogAspect.java:50)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:634)
	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:624)
	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:72)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)
	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:97)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)
	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:698)
	at com.moxa.sooth.module.base.login.controller.LoginController$$EnhancerBySpringCGLIB$$11df8a43.login(<generated>)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)
	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:150)
	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:117)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:808)
	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)
	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1067)
	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:963)
	at org.springframework.web.servl')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [username], [realname], [ip], [method], [request_url], [request_param], [request_type], [cost_time], [create_time], [user_agent], [status], [biz_module], [description], [message], [exception_class], [stack_trace]) VALUES (N'915694901445', N'error', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2023-06-15 14:22:12.8340000', NULL, N'1', NULL, NULL, N'执行''com.moxa.sooth.module.base.buttonPermission.mapper.SysButtonPermissionMapper.getPermCodes''失败：Incorrect syntax near ''`''.', N'com.moxa.dream.util.exception.DreamRunTimeException', N'com.moxa.dream.util.exception.DreamRunTimeException: 执行''com.moxa.sooth.module.base.buttonPermission.mapper.SysButtonPermissionMapper.getPermCodes''失败：Incorrect syntax near ''`''.
	at com.moxa.dream.system.core.session.DefaultSession.execute(DefaultSession.java:83)
	at com.moxa.dream.system.core.session.DefaultSession.execute(DefaultSession.java:48)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at com.moxa.dream.template.session.SessionTemplate$SessionInterceptor.invoke(SessionTemplate.java:84)
	at com.sun.proxy.$Proxy108.execute(Unknown Source)
	at com.moxa.dream.template.session.SessionTemplate.execute(SessionTemplate.java:49)
	at com.moxa.dream.system.mapper.DefaultMapperInvoke.invoke(DefaultMapperInvoke.java:17)
	at com.moxa.dream.system.mapper.DefaultMapperFactory.lambda$getMapper$3(DefaultMapperFactory.java:274)
	at com.sun.proxy.$Proxy111.getPermCodes(Unknown Source)
	at com.moxa.sooth.module.base.buttonPermission.service.impl.SysButtonPermissionServiceImpl.getPermCodes(SysButtonPermissionServiceImpl.java:47)
	at com.moxa.sooth.module.base.core.service.impl.SysApiServiceImpl.getLoginUser(SysApiServiceImpl.java:68)
	at com.moxa.sooth.module.base.login.controller.LoginController.login(LoginController.java:63)
	at com.moxa.sooth.module.base.login.controller.LoginController$$FastClassBySpringCGLIB$$69c88930.invoke(<generated>)
	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:783)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)
	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:89)
	at com.moxa.sooth.module.base.core.aspect.LogAspect.proceed(LogAspect.java:82)
	at com.moxa.sooth.module.base.core.aspect.LogAspect.login(LogAspect.java:50)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:634)
	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:624)
	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:72)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)
	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:97)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)
	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:698)
	at com.moxa.sooth.module.base.login.controller.LoginController$$EnhancerBySpringCGLIB$$11df8a43.login(<generated>)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)
	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:150)
	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:117)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:808)
	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)
	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1067)
	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:963)
	at org.springframework.web.servl')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [username], [realname], [ip], [method], [request_url], [request_param], [request_type], [cost_time], [create_time], [user_agent], [status], [biz_module], [description], [message], [exception_class], [stack_trace]) VALUES (N'915788667909', N'auth', NULL, NULL, N'127.0.0.1', N'com.moxa.sooth.module.base.login.controller.LoginController.login', N'/sooth/sys/login', N'[{"captcha":"zrdg","checkKey":"1686811590186","password":"123456","username":"admin"}]', N'POST', N'468', N'2023-06-15 14:46:36.9230000', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', N'1', N'系统认证', N'登录', N'执行''com.moxa.sooth.module.base.buttonPermission.mapper.SysButtonPermissionMapper.getPermCodes''失败：Incorrect syntax near ''`''.', N'com.moxa.dream.util.exception.DreamRunTimeException', N'com.moxa.dream.util.exception.DreamRunTimeException: 执行''com.moxa.sooth.module.base.buttonPermission.mapper.SysButtonPermissionMapper.getPermCodes''失败：Incorrect syntax near ''`''.
	at com.moxa.dream.system.core.session.DefaultSession.execute(DefaultSession.java:83)
	at com.moxa.dream.system.core.session.DefaultSession.execute(DefaultSession.java:48)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at com.moxa.dream.template.session.SessionTemplate$SessionInterceptor.invoke(SessionTemplate.java:84)
	at com.sun.proxy.$Proxy112.execute(Unknown Source)
	at com.moxa.dream.template.session.SessionTemplate.execute(SessionTemplate.java:49)
	at com.moxa.dream.system.mapper.DefaultMapperInvoke.invoke(DefaultMapperInvoke.java:17)
	at com.moxa.dream.system.mapper.DefaultMapperFactory.lambda$getMapper$3(DefaultMapperFactory.java:274)
	at com.sun.proxy.$Proxy114.getPermCodes(Unknown Source)
	at com.moxa.sooth.module.base.buttonPermission.service.impl.SysButtonPermissionServiceImpl.getPermCodes(SysButtonPermissionServiceImpl.java:47)
	at com.moxa.sooth.module.base.core.service.impl.SysApiServiceImpl.getLoginUser(SysApiServiceImpl.java:68)
	at com.moxa.sooth.module.base.login.controller.LoginController.login(LoginController.java:63)
	at com.moxa.sooth.module.base.login.controller.LoginController$$FastClassBySpringCGLIB$$1.invoke(<generated>)
	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:783)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)
	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:89)
	at com.moxa.sooth.module.base.core.aspect.LogAspect.proceed(LogAspect.java:82)
	at com.moxa.sooth.module.base.core.aspect.LogAspect.login(LogAspect.java:50)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:634)
	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:624)
	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:72)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)
	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:97)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)
	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:698)
	at com.moxa.sooth.module.base.login.controller.LoginController$$EnhancerBySpringCGLIB$$1.login(<generated>)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)
	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:150)
	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:117)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:808)
	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)
	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1067)
	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:963)
	at org.springframework.web.servlet.FrameworkSe')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [username], [realname], [ip], [method], [request_url], [request_param], [request_type], [cost_time], [create_time], [user_agent], [status], [biz_module], [description], [message], [exception_class], [stack_trace]) VALUES (N'915788670213', N'error', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2023-06-15 14:46:37.9700000', NULL, N'1', NULL, NULL, N'执行''com.moxa.sooth.module.base.buttonPermission.mapper.SysButtonPermissionMapper.getPermCodes''失败：Incorrect syntax near ''`''.', N'com.moxa.dream.util.exception.DreamRunTimeException', N'com.moxa.dream.util.exception.DreamRunTimeException: 执行''com.moxa.sooth.module.base.buttonPermission.mapper.SysButtonPermissionMapper.getPermCodes''失败：Incorrect syntax near ''`''.
	at com.moxa.dream.system.core.session.DefaultSession.execute(DefaultSession.java:83)
	at com.moxa.dream.system.core.session.DefaultSession.execute(DefaultSession.java:48)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at com.moxa.dream.template.session.SessionTemplate$SessionInterceptor.invoke(SessionTemplate.java:84)
	at com.sun.proxy.$Proxy112.execute(Unknown Source)
	at com.moxa.dream.template.session.SessionTemplate.execute(SessionTemplate.java:49)
	at com.moxa.dream.system.mapper.DefaultMapperInvoke.invoke(DefaultMapperInvoke.java:17)
	at com.moxa.dream.system.mapper.DefaultMapperFactory.lambda$getMapper$3(DefaultMapperFactory.java:274)
	at com.sun.proxy.$Proxy114.getPermCodes(Unknown Source)
	at com.moxa.sooth.module.base.buttonPermission.service.impl.SysButtonPermissionServiceImpl.getPermCodes(SysButtonPermissionServiceImpl.java:47)
	at com.moxa.sooth.module.base.core.service.impl.SysApiServiceImpl.getLoginUser(SysApiServiceImpl.java:68)
	at com.moxa.sooth.module.base.login.controller.LoginController.login(LoginController.java:63)
	at com.moxa.sooth.module.base.login.controller.LoginController$$FastClassBySpringCGLIB$$1.invoke(<generated>)
	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:783)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)
	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:89)
	at com.moxa.sooth.module.base.core.aspect.LogAspect.proceed(LogAspect.java:82)
	at com.moxa.sooth.module.base.core.aspect.LogAspect.login(LogAspect.java:50)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:634)
	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:624)
	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:72)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)
	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:97)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)
	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:698)
	at com.moxa.sooth.module.base.login.controller.LoginController$$EnhancerBySpringCGLIB$$1.login(<generated>)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)
	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:150)
	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:117)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:808)
	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)
	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1067)
	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:963)
	at org.springframework.web.servlet.FrameworkSe')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [username], [realname], [ip], [method], [request_url], [request_param], [request_type], [cost_time], [create_time], [user_agent], [status], [biz_module], [description], [message], [exception_class], [stack_trace]) VALUES (N'915842577413', N'auth', NULL, NULL, N'127.0.0.1', N'com.moxa.sooth.module.base.login.controller.LoginController.login', N'/sooth/sys/login', N'[{"captcha":"bbzm","checkKey":"1686812419199","password":"123456","username":"admin"}]', N'POST', N'14', N'2023-06-15 15:00:39.5310000', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', N'1', N'系统认证', N'登录', N'验证码错误', N'com.moxa.sooth.module.base.core.exception.SoothException', NULL)
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [username], [realname], [ip], [method], [request_url], [request_param], [request_type], [cost_time], [create_time], [user_agent], [status], [biz_module], [description], [message], [exception_class], [stack_trace]) VALUES (N'915843033157', N'auth', NULL, NULL, N'127.0.0.1', N'com.moxa.sooth.module.base.login.controller.LoginController.login', N'/sooth/sys/login', N'[{"captcha":"qbj0","checkKey":"1686812440420","password":"123456","username":"admin"}]', N'POST', N'412', N'2023-06-15 15:00:46.9800000', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', N'0', N'系统认证', N'登录', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [username], [realname], [ip], [method], [request_url], [request_param], [request_type], [cost_time], [create_time], [user_agent], [status], [biz_module], [description], [message], [exception_class], [stack_trace]) VALUES (N'915844797893', N'error', N'admin', N'管理员', N'127.0.0.1', NULL, N'/sooth/sys/dept/listTree', NULL, N'GET', NULL, N'2023-06-15 15:01:14.9530000', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', N'1', NULL, NULL, N'com.moxa.dream.util.exception.DreamRunTimeException: 执行''com.moxa.sooth.module.base.dataPermission.mapper.SysDataPermissionMapper.getDataPermission''失败：''GROUP_CONCAT'' is not a recognized built-in function name.', N'com.moxa.dream.util.exception.DreamRunTimeException', N'com.moxa.dream.util.exception.DreamRunTimeException: com.moxa.dream.util.exception.DreamRunTimeException: 执行''com.moxa.sooth.module.base.dataPermission.mapper.SysDataPermissionMapper.getDataPermission''失败：''GROUP_CONCAT'' is not a recognized built-in function name.
	at com.moxa.dream.template.mapper.AbstractMapper.execute(AbstractMapper.java:76)
	at com.moxa.dream.template.mapper.ValidateMapper.executeValidate(ValidateMapper.java:103)
	at com.moxa.dream.template.mapper.ValidateMapper.execute(ValidateMapper.java:99)
	at com.moxa.dream.template.mapper.SelectTreeMapper.execute(SelectTreeMapper.java:21)
	at com.moxa.dream.template.mapper.AbstractMapper.execute(AbstractMapper.java:64)
	at com.moxa.dream.template.mapper.DefaultTemplateMapper.selectTree(DefaultTemplateMapper.java:168)
	at com.moxa.dream.template.mapper.TutorTemplateMapper.selectTree(TutorTemplateMapper.java:55)
	at com.moxa.sooth.module.base.dept.service.impl.SysDeptServiceImpl.listTree(SysDeptServiceImpl.java:30)
	at com.moxa.sooth.module.base.dept.controller.SysDeptController.listTree(SysDeptController.java:24)
	at com.moxa.sooth.module.base.dept.controller.SysDeptController$$FastClassBySpringCGLIB$$1.invoke(<generated>)
	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:783)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)
	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:97)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)
	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:698)
	at com.moxa.sooth.module.base.dept.controller.SysDeptController$$EnhancerBySpringCGLIB$$1.listTree(<generated>)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)
	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:150)
	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:117)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:808)
	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)
	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1067)
	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:963)
	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1006)
	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:898)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:655)
	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:883)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:764)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:227)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)
	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)
	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)
	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)
	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:154)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)
	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)
	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)
	at org.apache.shiro.web.servlet.AdviceFilter.')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [username], [realname], [ip], [method], [request_url], [request_param], [request_type], [cost_time], [create_time], [user_agent], [status], [biz_module], [description], [message], [exception_class], [stack_trace]) VALUES (N'915844797894', N'error', N'admin', N'管理员', N'127.0.0.1', NULL, N'/sooth/sys/user/page', NULL, N'GET', NULL, N'2023-06-15 15:01:14.9550000', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', N'1', NULL, NULL, N'com.moxa.dream.util.exception.DreamRunTimeException: 执行''com.moxa.sooth.module.base.dataPermission.mapper.SysDataPermissionMapper.getDataPermission''失败：''GROUP_CONCAT'' is not a recognized built-in function name.', N'com.moxa.dream.util.exception.DreamRunTimeException', N'com.moxa.dream.util.exception.DreamRunTimeException: com.moxa.dream.util.exception.DreamRunTimeException: 执行''com.moxa.sooth.module.base.dataPermission.mapper.SysDataPermissionMapper.getDataPermission''失败：''GROUP_CONCAT'' is not a recognized built-in function name.
	at com.moxa.dream.system.core.session.DefaultSession.execute(DefaultSession.java:46)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at com.moxa.dream.template.session.SessionTemplate$SessionInterceptor.invoke(SessionTemplate.java:84)
	at com.sun.proxy.$Proxy112.execute(Unknown Source)
	at com.moxa.dream.template.session.SessionTemplate.execute(SessionTemplate.java:49)
	at com.moxa.dream.system.mapper.DefaultMapperInvoke.invoke(DefaultMapperInvoke.java:17)
	at com.moxa.dream.system.mapper.DefaultMapperFactory.lambda$getMapper$3(DefaultMapperFactory.java:274)
	at com.sun.proxy.$Proxy116.selectPage(Unknown Source)
	at com.moxa.sooth.module.base.user.service.impl.SysUserServiceImpl.selectPage(SysUserServiceImpl.java:53)
	at com.moxa.sooth.module.base.user.service.impl.SysUserServiceImpl$$FastClassBySpringCGLIB$$1.invoke(<generated>)
	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)
	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:689)
	at com.moxa.sooth.module.base.user.service.impl.SysUserServiceImpl$$EnhancerBySpringCGLIB$$1.selectPage(<generated>)
	at com.moxa.sooth.module.base.core.controller.BaseController.selectPage(BaseController.java:47)
	at com.moxa.sooth.module.base.core.controller.BaseController$$FastClassBySpringCGLIB$$1.invoke(<generated>)
	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:783)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)
	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:97)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)
	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:698)
	at com.moxa.sooth.module.base.user.controller.SysUserController$$EnhancerBySpringCGLIB$$1.selectPage(<generated>)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)
	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:150)
	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:117)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:808)
	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)
	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1067)
	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:963)
	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1006)
	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:898)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:655)
	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:883)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:764)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:227)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)
	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)
	at org.ap')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [username], [realname], [ip], [method], [request_url], [request_param], [request_type], [cost_time], [create_time], [user_agent], [status], [biz_module], [description], [message], [exception_class], [stack_trace]) VALUES (N'916832167813', N'auth', NULL, NULL, N'127.0.0.1', N'com.moxa.sooth.module.base.login.controller.LoginController.login', N'/sooth/sys/login', N'[{"captcha":"nxh6","checkKey":"1686827880932","password":"123456","username":"admin"}]', N'POST', N'177', N'2023-06-15 19:18:21.9010000', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', N'0', N'系统认证', N'登录', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [username], [realname], [ip], [method], [request_url], [request_param], [request_type], [cost_time], [create_time], [user_agent], [status], [biz_module], [description], [message], [exception_class], [stack_trace]) VALUES (N'916833472069', N'error', N'admin', N'管理员', N'127.0.0.1', NULL, N'/sooth/sys/log/page', NULL, N'GET', NULL, N'2023-06-15 19:18:42.9720000', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', N'1', NULL, NULL, N'执行''com.moxa.dream.template.service.ServiceImpl.selectPage''失败：The ORDER BY clause is invalid in views, inline functions, derived tables, subqueries, and common table expressions, unless TOP, OFFSET or FOR XML is also specified.', N'com.moxa.dream.util.exception.DreamRunTimeException', N'com.moxa.dream.util.exception.DreamRunTimeException: 执行''com.moxa.dream.template.service.ServiceImpl.selectPage''失败：The ORDER BY clause is invalid in views, inline functions, derived tables, subqueries, and common table expressions, unless TOP, OFFSET or FOR XML is also specified.
	at com.moxa.dream.system.core.session.DefaultSession.execute(DefaultSession.java:83)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at com.moxa.dream.template.session.SessionTemplate$SessionInterceptor.invoke(SessionTemplate.java:84)
	at com.sun.proxy.$Proxy112.execute(Unknown Source)
	at com.moxa.dream.template.session.SessionTemplate.execute(SessionTemplate.java:54)
	at com.moxa.dream.template.mapper.AbstractMapper.execute(AbstractMapper.java:85)
	at com.moxa.dream.template.mapper.AbstractMapper.execute(AbstractMapper.java:78)
	at com.moxa.dream.template.mapper.ValidateMapper.executeValidate(ValidateMapper.java:103)
	at com.moxa.dream.template.mapper.ValidateMapper.execute(ValidateMapper.java:99)
	at com.moxa.dream.template.mapper.SelectPageMapper.execute(SelectPageMapper.java:71)
	at com.moxa.dream.template.mapper.DefaultTemplateMapper.selectPage(DefaultTemplateMapper.java:172)
	at com.moxa.dream.template.mapper.DefaultTemplateMapper.selectPage(DefaultTemplateMapper.java:92)
	at com.moxa.dream.template.service.ServiceImpl.selectPage(ServiceImpl.java:71)
	at com.moxa.sooth.module.base.core.controller.BaseController.selectPage(BaseController.java:47)
	at com.moxa.sooth.module.base.core.controller.BaseController$$FastClassBySpringCGLIB$$1.invoke(<generated>)
	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:783)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)
	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:97)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)
	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:698)
	at com.moxa.sooth.module.base.log.controller.SysLogController$$EnhancerBySpringCGLIB$$1.selectPage(<generated>)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)
	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:150)
	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:117)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:808)
	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)
	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1067)
	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:963)
	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1006)
	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:898)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:655)
	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:883)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:764)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:227)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)
	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)
	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilt')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [username], [realname], [ip], [method], [request_url], [request_param], [request_type], [cost_time], [create_time], [user_agent], [status], [biz_module], [description], [message], [exception_class], [stack_trace]) VALUES (N'917067321861', N'auth', NULL, NULL, N'127.0.0.1', N'com.moxa.sooth.module.base.login.controller.LoginController.login', N'/sooth/sys/login', N'[{"captcha":"vrub","checkKey":"1686831570555","password":"123456","username":"admin"}]', N'POST', N'82', N'2023-06-15 20:19:36.2910000', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', N'1', N'系统认证', N'登录', NULL, N'java.lang.StackOverflowError', N'java.lang.StackOverflowError
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.ToMSSQL.toString(ToMSSQL.java:223)
	at com.moxa.dream.antlr.sql.ToPubSQL.toStringForRowNumber(ToPubSQL.java:87)
	at com.moxa.dream.antlr.sql.T')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [username], [realname], [ip], [method], [request_url], [request_param], [request_type], [cost_time], [create_time], [user_agent], [status], [biz_module], [description], [message], [exception_class], [stack_trace]) VALUES (N'917067333125', N'error', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2023-06-15 20:19:37.0780000', NULL, N'1', NULL, NULL, N'Handler dispatch failed; nested exception is java.lang.StackOverflowError', N'org.springframework.web.util.NestedServletException', N'org.springframework.web.util.NestedServletException: Handler dispatch failed; nested exception is java.lang.StackOverflowError
	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1082)
	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:963)
	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1006)
	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:909)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:681)
	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:883)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:764)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:227)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)
	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)
	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)
	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)
	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:154)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)
	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)
	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)
	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)
	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:154)
	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)
	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)
	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)
	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:154)
	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)
	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:458)
	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:373)
	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)
	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)
	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)
	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:370)
	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:154)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)
	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:100)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)
	at org.springframework.web.filter.FormContentFilter.doFilterInternal(FormContentFilter.java:93)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)
	at org.springframework.boot.actuate.metrics.web.servlet.WebMvcMetricsFilter.doFilterInternal(WebMvcMetricsFilter.java:96)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)
	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:201)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)
	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.jav')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [username], [realname], [ip], [method], [request_url], [request_param], [request_type], [cost_time], [create_time], [user_agent], [status], [biz_module], [description], [message], [exception_class], [stack_trace]) VALUES (N'917088032837', N'auth', NULL, NULL, N'127.0.0.1', N'com.moxa.sooth.module.base.login.controller.LoginController.login', N'/sooth/sys/login', N'[{"captcha":"fepg","checkKey":"1686831893236","password":"123456","username":"admin"}]', N'POST', N'581', N'2023-06-15 20:24:59.4320000', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', N'0', N'系统认证', N'登录', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [username], [realname], [ip], [method], [request_url], [request_param], [request_type], [cost_time], [create_time], [user_agent], [status], [biz_module], [description], [message], [exception_class], [stack_trace]) VALUES (N'917089727365', N'error', N'admin', N'管理员', N'127.0.0.1', NULL, N'/sooth/sys/menu/listMenuTree', NULL, N'GET', NULL, N'2023-06-15 20:25:26.9760000', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', N'1', NULL, NULL, N'执行''com.moxa.sooth.module.base.menu.mapper.SysMenuMapper.listMenuTree''失败：The ORDER BY clause is invalid in views, inline functions, derived tables, subqueries, and common table expressions, unless TOP, OFFSET or FOR XML is also specified.', N'com.moxa.dream.util.exception.DreamRunTimeException', N'com.moxa.dream.util.exception.DreamRunTimeException: 执行''com.moxa.sooth.module.base.menu.mapper.SysMenuMapper.listMenuTree''失败：The ORDER BY clause is invalid in views, inline functions, derived tables, subqueries, and common table expressions, unless TOP, OFFSET or FOR XML is also specified.
	at com.moxa.dream.system.core.session.DefaultSession.execute(DefaultSession.java:83)
	at com.moxa.dream.system.core.session.DefaultSession.execute(DefaultSession.java:48)
	at sun.reflect.GeneratedMethodAccessor146.invoke(Unknown Source)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at com.moxa.dream.template.session.SessionTemplate$SessionInterceptor.invoke(SessionTemplate.java:84)
	at com.sun.proxy.$Proxy112.execute(Unknown Source)
	at com.moxa.dream.template.session.SessionTemplate.execute(SessionTemplate.java:49)
	at com.moxa.dream.system.mapper.DefaultMapperInvoke.invoke(DefaultMapperInvoke.java:17)
	at com.moxa.dream.system.mapper.DefaultMapperFactory.lambda$getMapper$3(DefaultMapperFactory.java:274)
	at com.sun.proxy.$Proxy125.listMenuTree(Unknown Source)
	at com.moxa.sooth.module.base.menu.service.impl.SysMenuServiceImpl.listMenuTree(SysMenuServiceImpl.java:42)
	at com.moxa.sooth.module.base.menu.service.impl.SysMenuServiceImpl$$FastClassBySpringCGLIB$$1.invoke(<generated>)
	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)
	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:689)
	at com.moxa.sooth.module.base.menu.service.impl.SysMenuServiceImpl$$EnhancerBySpringCGLIB$$1.listMenuTree(<generated>)
	at com.moxa.sooth.module.base.menu.controller.SysMenuController.listMenuTree(SysMenuController.java:42)
	at com.moxa.sooth.module.base.menu.controller.SysMenuController$$FastClassBySpringCGLIB$$1.invoke(<generated>)
	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:783)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)
	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:97)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)
	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:698)
	at com.moxa.sooth.module.base.menu.controller.SysMenuController$$EnhancerBySpringCGLIB$$1.listMenuTree(<generated>)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)
	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:150)
	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:117)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:808)
	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)
	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1067)
	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:963)
	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1006)
	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:898)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:655)
	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:883)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:764)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:227)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)
	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)
	at org.apache.catalina.core.ApplicationFilterChain')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [username], [realname], [ip], [method], [request_url], [request_param], [request_type], [cost_time], [create_time], [user_agent], [status], [biz_module], [description], [message], [exception_class], [stack_trace]) VALUES (N'917121073413', N'operate', N'admin', N'管理员', N'127.0.0.1', N'com.moxa.sooth.module.base.user.controller.SysUserController.editUser', N'/sooth/sys/user/editUser', N'[{"deptIdList":[42083908293,1],"dict":{},"id":1,"phone":"","realname":"管理员","roleIdList":[1,226157928197],"sex":0,"username":"admin"}]', N'POST', N'83', N'2023-06-15 20:33:36.1960000', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', N'0', N'用户管理', N'编辑', NULL, NULL, NULL)
GO


-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_menu]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_menu]
GO

CREATE TABLE [dbo].[sys_menu] (
  [id] bigint  NOT NULL,
  [parent_id] bigint  NULL,
  [name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [url] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [component] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [redirect] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [menu_type] int  NULL,
  [sort_no] float(53)  NULL,
  [fixed_tab] smallint  NULL,
  [icon] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [hidden] int  NULL,
  [hide_tab] int  NULL,
  [description] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [del_flag] int  NULL,
  [keep_alive] smallint  NULL,
  [component_name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_menu] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父id',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'parent_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单标题',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'路径',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'组件',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'component'
GO

EXEC sp_addextendedproperty
'MS_Description', N'一级菜单跳转地址',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'redirect'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'menu_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单排序',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'sort_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'聚合子路由: 1是0否',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'fixed_tab'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单图标',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'icon'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否隐藏路由: 0否,1是',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'hidden'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否隐藏tab: 0否,1是',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'hide_tab'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除状态 0正常 1已删除',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'缓存路由: 1是0否',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'keep_alive'
GO

EXEC sp_addextendedproperty
'MS_Description', N'组件名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'component_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单权限表',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu'
GO


-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO [dbo].[sys_menu] ([id], [parent_id], [name], [url], [component], [redirect], [menu_type], [sort_no], [fixed_tab], [icon], [hidden], [hide_tab], [description], [create_by], [create_time], [update_by], [update_time], [del_flag], [keep_alive], [component_name]) VALUES (N'1', NULL, N'系统管理', N'/system', N'layouts/default/index', N'/system/user', N'0', N'2', N'0', N'ant-design:setting', N'0', N'0', NULL, NULL, N'2018-12-25 20:34:38.0000000', N'admin', N'2022-12-20 23:27:32.0000000', N'0', NULL, N'system')
GO

INSERT INTO [dbo].[sys_menu] ([id], [parent_id], [name], [url], [component], [redirect], [menu_type], [sort_no], [fixed_tab], [icon], [hidden], [hide_tab], [description], [create_by], [create_time], [update_by], [update_time], [del_flag], [keep_alive], [component_name]) VALUES (N'2', N'22', N'角色管理', N'/privilege/role', N'privilege/role/index', NULL, N'1', N'2', N'0', N'ant-design:solution', N'0', N'0', NULL, NULL, N'2018-12-25 20:34:38.0000000', N'admin', N'2023-01-13 21:35:23.0000000', N'0', N'1', N'privilege-role')
GO

INSERT INTO [dbo].[sys_menu] ([id], [parent_id], [name], [url], [component], [redirect], [menu_type], [sort_no], [fixed_tab], [icon], [hidden], [hide_tab], [description], [create_by], [create_time], [update_by], [update_time], [del_flag], [keep_alive], [component_name]) VALUES (N'3', N'1', N'用户管理', N'/system/user', N'system/user/index', NULL, N'1', N'1', N'0', N'ant-design:user', N'0', N'0', NULL, NULL, N'2018-12-25 20:34:38.0000000', N'admin', N'2023-02-02 00:09:56.0000000', N'0', N'1', N'system-user')
GO

INSERT INTO [dbo].[sys_menu] ([id], [parent_id], [name], [url], [component], [redirect], [menu_type], [sort_no], [fixed_tab], [icon], [hidden], [hide_tab], [description], [create_by], [create_time], [update_by], [update_time], [del_flag], [keep_alive], [component_name]) VALUES (N'4', N'1', N'部门管理', N'/system/dept', N'system/dept/index', NULL, N'1', N'2', N'0', N'ant-design:team', N'0', N'0', NULL, N'admin', N'2019-01-29 18:47:40.0000000', N'admin', N'2023-01-29 22:07:03.0000000', N'0', N'1', N'system-dept')
GO

INSERT INTO [dbo].[sys_menu] ([id], [parent_id], [name], [url], [component], [redirect], [menu_type], [sort_no], [fixed_tab], [icon], [hidden], [hide_tab], [description], [create_by], [create_time], [update_by], [update_time], [del_flag], [keep_alive], [component_name]) VALUES (N'5', N'22', N'菜单管理', N'/privilege/menu', N'privilege/menu/index', NULL, N'1', N'1', N'0', N'ant-design:menu-outlined', N'0', N'0', NULL, N'admin', N'2019-09-08 15:00:05.0000000', N'admin', N'2023-01-27 10:43:27.0000000', N'0', N'1', N'privilege-menu')
GO

INSERT INTO [dbo].[sys_menu] ([id], [parent_id], [name], [url], [component], [redirect], [menu_type], [sort_no], [fixed_tab], [icon], [hidden], [hide_tab], [description], [create_by], [create_time], [update_by], [update_time], [del_flag], [keep_alive], [component_name]) VALUES (N'6', NULL, N'Dashboard', N'/dashboard', N'layouts/default/index', N'/dashboard/home', N'0', N'1', N'0', N'ion:grid-outline', N'0', N'0', NULL, N'admin', N'2021-09-15 19:51:23.0000000', N'admin', N'2023-02-19 16:54:31.0000000', N'0', N'0', N'dashboard')
GO

INSERT INTO [dbo].[sys_menu] ([id], [parent_id], [name], [url], [component], [redirect], [menu_type], [sort_no], [fixed_tab], [icon], [hidden], [hide_tab], [description], [create_by], [create_time], [update_by], [update_time], [del_flag], [keep_alive], [component_name]) VALUES (N'8', N'15', N'数据字典', N'/basic/dict', N'basic/dict/index', NULL, N'1', N'1', N'0', N'ant-design:hdd-twotone', N'0', N'0', NULL, N'admin', N'2021-09-17 16:31:27.0000000', N'admin', N'2023-02-18 21:11:09.0000000', N'0', N'1', N'basic-dict')
GO

INSERT INTO [dbo].[sys_menu] ([id], [parent_id], [name], [url], [component], [redirect], [menu_type], [sort_no], [fixed_tab], [icon], [hidden], [hide_tab], [description], [create_by], [create_time], [update_by], [update_time], [del_flag], [keep_alive], [component_name]) VALUES (N'9', NULL, N'系统监控', N'/monitor', N'layouts/default/index', NULL, N'0', N'5', N'0', N'ant-design:video-camera-filled', N'0', N'0', NULL, N'admin', N'2021-09-19 09:19:22.0000000', N'admin', N'2022-12-20 23:27:52.0000000', N'0', NULL, N'monitor')
GO

INSERT INTO [dbo].[sys_menu] ([id], [parent_id], [name], [url], [component], [redirect], [menu_type], [sort_no], [fixed_tab], [icon], [hidden], [hide_tab], [description], [create_by], [create_time], [update_by], [update_time], [del_flag], [keep_alive], [component_name]) VALUES (N'11', N'16', N'数据源管理', N'/generate/datasource', N'generate/datasource/index', NULL, N'1', N'3', N'0', N'ant-design:hdd-filled', N'0', N'0', NULL, N'admin', N'2021-09-19 16:48:17.0000000', N'admin', N'2023-01-13 22:19:14.0000000', N'0', N'1', N'generate-datasource')
GO

INSERT INTO [dbo].[sys_menu] ([id], [parent_id], [name], [url], [component], [redirect], [menu_type], [sort_no], [fixed_tab], [icon], [hidden], [hide_tab], [description], [create_by], [create_time], [update_by], [update_time], [del_flag], [keep_alive], [component_name]) VALUES (N'12', N'15', N'日志管理', N'/basic/log', N'basic/log/index', NULL, N'1', N'5', N'0', N'ant-design:interaction-outlined', N'0', N'0', NULL, N'admin', N'2021-09-19 18:15:56.0000000', N'admin', N'2023-01-15 15:00:17.0000000', N'0', N'1', N'basic-log')
GO

INSERT INTO [dbo].[sys_menu] ([id], [parent_id], [name], [url], [component], [redirect], [menu_type], [sort_no], [fixed_tab], [icon], [hidden], [hide_tab], [description], [create_by], [create_time], [update_by], [update_time], [del_flag], [keep_alive], [component_name]) VALUES (N'13', N'9', N'性能监控', N'/monitor/server', N'monitor/server/index', NULL, N'1', N'9', N'0', N'ant-design:thunderbolt-filled', N'0', N'0', NULL, N'admin', N'2021-09-20 11:42:22.0000000', N'admin', N'2023-01-02 00:20:10.0000000', N'0', N'1', N'monitor-server')
GO

INSERT INTO [dbo].[sys_menu] ([id], [parent_id], [name], [url], [component], [redirect], [menu_type], [sort_no], [fixed_tab], [icon], [hidden], [hide_tab], [description], [create_by], [create_time], [update_by], [update_time], [del_flag], [keep_alive], [component_name]) VALUES (N'14', N'9', N'Redis监控', N'/monitor/redis', N'monitor/redis/index', NULL, N'1', N'10', N'0', N'ant-design:trademark-outlined', N'0', N'0', NULL, N'admin', N'2021-09-20 14:31:04.0000000', N'admin', N'2023-01-02 00:20:17.0000000', N'0', N'1', N'monitor-redis')
GO

INSERT INTO [dbo].[sys_menu] ([id], [parent_id], [name], [url], [component], [redirect], [menu_type], [sort_no], [fixed_tab], [icon], [hidden], [hide_tab], [description], [create_by], [create_time], [update_by], [update_time], [del_flag], [keep_alive], [component_name]) VALUES (N'15', NULL, N'基础管理', N'/basic', N'layouts/default/index', NULL, N'0', N'3', N'0', N'ant-design:android-outlined', N'0', N'0', NULL, N'admin', N'2022-11-12 20:34:52.0000000', N'admin', N'2022-12-20 23:27:39.0000000', N'0', NULL, N'basic')
GO

INSERT INTO [dbo].[sys_menu] ([id], [parent_id], [name], [url], [component], [redirect], [menu_type], [sort_no], [fixed_tab], [icon], [hidden], [hide_tab], [description], [create_by], [create_time], [update_by], [update_time], [del_flag], [keep_alive], [component_name]) VALUES (N'16', NULL, N'代码生成', N'/generate', N'layouts/default/index', NULL, N'0', N'3', N'0', N'ant-design:block-outlined', N'0', N'0', NULL, N'admin', N'2022-11-18 20:22:43.0000000', N'admin', N'2023-02-10 20:50:41.0000000', N'0', N'0', N'generate')
GO

INSERT INTO [dbo].[sys_menu] ([id], [parent_id], [name], [url], [component], [redirect], [menu_type], [sort_no], [fixed_tab], [icon], [hidden], [hide_tab], [description], [create_by], [create_time], [update_by], [update_time], [del_flag], [keep_alive], [component_name]) VALUES (N'17', N'16', N'类型映射', N'/generate/field-type', N'generate/field-type/index', NULL, N'1', N'1', N'0', N'ant-design:gateway-outlined', N'0', N'0', NULL, N'admin', N'2022-11-18 20:26:01.0000000', N'admin', N'2023-01-12 08:52:09.0000000', N'0', N'1', N'generate-field-type')
GO

INSERT INTO [dbo].[sys_menu] ([id], [parent_id], [name], [url], [component], [redirect], [menu_type], [sort_no], [fixed_tab], [icon], [hidden], [hide_tab], [description], [create_by], [create_time], [update_by], [update_time], [del_flag], [keep_alive], [component_name]) VALUES (N'18', N'16', N'基类管理', N'/generate/base-class', N'generate/base-class/index', NULL, N'1', N'1', N'0', N'ant-design:flag-twotone', N'0', N'0', NULL, N'admin', N'2022-11-18 20:29:20.0000000', N'admin', N'2023-01-12 08:51:49.0000000', N'0', N'1', N'generate-base-class')
GO

INSERT INTO [dbo].[sys_menu] ([id], [parent_id], [name], [url], [component], [redirect], [menu_type], [sort_no], [fixed_tab], [icon], [hidden], [hide_tab], [description], [create_by], [create_time], [update_by], [update_time], [del_flag], [keep_alive], [component_name]) VALUES (N'19', N'16', N'代码生成', N'/generate/code-gen', N'generate/code-gen/index', NULL, N'1', N'1', N'0', N'ant-design:file-word-outlined', N'0', N'0', NULL, N'admin', N'2022-11-18 20:30:52.0000000', N'admin', N'2023-01-12 08:51:26.0000000', N'0', N'1', N'generate-code-gen')
GO

INSERT INTO [dbo].[sys_menu] ([id], [parent_id], [name], [url], [component], [redirect], [menu_type], [sort_no], [fixed_tab], [icon], [hidden], [hide_tab], [description], [create_by], [create_time], [update_by], [update_time], [del_flag], [keep_alive], [component_name]) VALUES (N'20', N'16', N'模板配置', N'/generate/template', N'generate/template/index', NULL, N'1', N'1', N'0', N'ant-design:radius-setting-outlined', N'0', N'0', NULL, N'admin', N'2022-11-29 21:24:46.0000000', N'admin', N'2023-01-12 08:50:42.0000000', N'0', N'1', N'generate-template')
GO

INSERT INTO [dbo].[sys_menu] ([id], [parent_id], [name], [url], [component], [redirect], [menu_type], [sort_no], [fixed_tab], [icon], [hidden], [hide_tab], [description], [create_by], [create_time], [update_by], [update_time], [del_flag], [keep_alive], [component_name]) VALUES (N'21', N'6', N'首页', N'/dashboard/home', N'dashboard/home/index', NULL, N'1', N'1', N'1', N'ant-design:home-twotone', N'0', N'0', NULL, N'admin', N'2022-12-20 23:12:49.0000000', N'admin', N'2023-01-25 15:16:46.0000000', N'0', N'1', N'dashboard-home')
GO

INSERT INTO [dbo].[sys_menu] ([id], [parent_id], [name], [url], [component], [redirect], [menu_type], [sort_no], [fixed_tab], [icon], [hidden], [hide_tab], [description], [create_by], [create_time], [update_by], [update_time], [del_flag], [keep_alive], [component_name]) VALUES (N'22', NULL, N'权限管理', N'/privilege', N'layouts/default/index', N'', N'0', N'4', N'0', N'ant-design:property-safety-outlined', N'0', N'0', NULL, N'admin', N'2023-01-13 20:47:59.0000000', N'admin', N'2023-01-13 20:49:22.0000000', N'0', NULL, N'privilege')
GO

INSERT INTO [dbo].[sys_menu] ([id], [parent_id], [name], [url], [component], [redirect], [menu_type], [sort_no], [fixed_tab], [icon], [hidden], [hide_tab], [description], [create_by], [create_time], [update_by], [update_time], [del_flag], [keep_alive], [component_name]) VALUES (N'23', N'1', N'账户设置', N'/system/setting', N'/system/setting/index', NULL, N'1', N'10', N'0', N'ant-design:user-switch-outlined', N'1', N'0', NULL, N'admin', N'2023-01-13 23:47:22.0000000', N'admin', N'2023-01-26 15:50:00.0000000', N'0', N'1', N'system-setting')
GO

INSERT INTO [dbo].[sys_menu] ([id], [parent_id], [name], [url], [component], [redirect], [menu_type], [sort_no], [fixed_tab], [icon], [hidden], [hide_tab], [description], [create_by], [create_time], [update_by], [update_time], [del_flag], [keep_alive], [component_name]) VALUES (N'270244951749', N'15', N'定时任务', N'/basic/quartz', N'basic/quartz/index', NULL, N'1', N'3', N'0', N'ant-design:field-time-outlined', N'0', N'0', NULL, N'admin', N'2023-02-18 20:56:17.0000000', N'admin', N'2023-02-18 21:23:51.0000000', N'0', N'0', N'quartz')
GO


-- ----------------------------
-- Table structure for sys_quartz
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_quartz]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_quartz]
GO

CREATE TABLE [dbo].[sys_quartz] (
  [id] bigint  NOT NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [del_flag] int  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [cron] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [parameter] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [description] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_quartz] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除状态',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务名',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'cron表达式',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz',
'COLUMN', N'cron'
GO

EXEC sp_addextendedproperty
'MS_Description', N'参数',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz',
'COLUMN', N'parameter'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'定时任务',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz'
GO


-- ----------------------------
-- Records of sys_quartz
-- ----------------------------
INSERT INTO [dbo].[sys_quartz] ([id], [create_by], [create_time], [del_flag], [update_by], [update_time], [name], [cron], [parameter], [description]) VALUES (N'275051435013', N'admin', N'2023-02-19 17:47:59.0000000', N'0', N'admin', N'2023-02-19 21:57:33.0000000', N'testJob', N'* * * * * ? *', N'{''type'':''A''}', N'测试任务')
GO


-- ----------------------------
-- Table structure for sys_quartz_job
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_quartz_job]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_quartz_job]
GO

CREATE TABLE [dbo].[sys_quartz_job] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [del_flag] int  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [job_name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [cron_expression] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [parameter] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [description] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] int  NULL
)
GO

ALTER TABLE [dbo].[sys_quartz_job] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz_job',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz_job',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除状态',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz_job',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz_job',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz_job',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务名',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz_job',
'COLUMN', N'job_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'cron表达式',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz_job',
'COLUMN', N'cron_expression'
GO

EXEC sp_addextendedproperty
'MS_Description', N'参数',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz_job',
'COLUMN', N'parameter'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz_job',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态 0正常 -1停止',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz_job',
'COLUMN', N'status'
GO


-- ----------------------------
-- Records of sys_quartz_job
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_role]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_role]
GO

CREATE TABLE [dbo].[sys_role] (
  [id] bigint  NOT NULL,
  [role_name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [role_code] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [dept_id] bigint  NULL,
  [description] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[sys_role] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'role_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'role_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门id',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'dept_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色表',
'SCHEMA', N'dbo',
'TABLE', N'sys_role'
GO


-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO [dbo].[sys_role] ([id], [role_name], [role_code], [dept_id], [description], [create_by], [create_time], [update_by], [update_time]) VALUES (N'1', N'管理员', N'admin', N'42083908293', N'管理员', NULL, N'2018-12-21 18:03:39.0000000', N'admin', N'2023-02-11 23:34:42.0000000')
GO

INSERT INTO [dbo].[sys_role] ([id], [role_name], [role_code], [dept_id], [description], [create_by], [create_time], [update_by], [update_time]) VALUES (N'131517140997', N'测试员', N'test', N'42202626373', NULL, N'admin', N'2023-01-24 18:49:15.0000000', N'admin', N'2023-02-04 09:46:59.0000000')
GO

INSERT INTO [dbo].[sys_role] ([id], [role_name], [role_code], [dept_id], [description], [create_by], [create_time], [update_by], [update_time]) VALUES (N'226157928197', N'管理员1', N'admin1', N'1', NULL, N'admin', N'2023-02-10 21:35:18.0000000', NULL, NULL)
GO


-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_role_permission]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_role_permission]
GO

CREATE TABLE [dbo].[sys_role_permission] (
  [id] bigint  NOT NULL,
  [role_id] bigint  NULL,
  [permission_id] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_role_permission] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色id',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_permission',
'COLUMN', N'role_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限id',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_permission',
'COLUMN', N'permission_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色权限表',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_permission'
GO


-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'71181784773', N'1', N'6')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'71181784774', N'1', N'21')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'71181784837', N'1', N'1')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'71181784838', N'1', N'3')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'71181784839', N'1', N'2')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'71181784840', N'1', N'4')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'71181784841', N'1', N'15')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'71181784843', N'1', N'11')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'71181784844', N'1', N'12')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'71181784845', N'1', N'8')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'71181784846', N'1', N'16')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'71181784847', N'1', N'17')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'71181784848', N'1', N'18')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'71181784849', N'1', N'19')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'71181784850', N'1', N'20')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'71181784851', N'1', N'22')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'71181784852', N'1', N'5')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'71181784853', N'1', N'9')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'71181784854', N'1', N'13')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'71181784855', N'1', N'14')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'71199952453', N'1', N'23')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'162361300613', N'131517140997', N'6')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'162361300614', N'131517140997', N'21')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'162361300615', N'131517140997', N'1')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'162361300616', N'131517140997', N'3')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'162361300617', N'131517140997', N'4')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'162361300618', N'131517140997', N'23')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'162361300619', N'131517140997', N'16')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'162361300620', N'131517140997', N'18')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'162361300621', N'131517140997', N'19')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'162361300622', N'131517140997', N'17')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'162361300623', N'131517140997', N'20')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'162361300624', N'131517140997', N'11')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'162361300625', N'131517140997', N'15')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'162361300626', N'131517140997', N'12')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'162361300627', N'131517140997', N'8')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'162361300628', N'131517140997', N'22')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'162361300629', N'131517140997', N'5')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'162361300630', N'131517140997', N'2')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'162361300631', N'131517140997', N'9')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'162361300632', N'131517140997', N'13')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'162361300633', N'131517140997', N'14')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'226159395909', N'226157928197', N'6')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'226159395910', N'226157928197', N'21')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'226159395911', N'226157928197', N'1')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'226159395912', N'226157928197', N'3')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'226159395913', N'226157928197', N'4')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'226159395914', N'226157928197', N'23')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'226159395915', N'226157928197', N'16')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'226159395916', N'226157928197', N'20')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'226159395917', N'226157928197', N'17')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'226159395918', N'226157928197', N'18')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'226159395919', N'226157928197', N'19')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'226159395920', N'226157928197', N'11')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'226159395921', N'226157928197', N'15')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'226159395922', N'226157928197', N'12')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'226159395923', N'226157928197', N'8')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'226159395924', N'226157928197', N'22')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'226159395925', N'226157928197', N'5')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'226159395926', N'226157928197', N'2')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'226159395927', N'226157928197', N'9')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'226159395928', N'226157928197', N'13')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'226159395929', N'226157928197', N'14')
GO

INSERT INTO [dbo].[sys_role_permission] ([id], [role_id], [permission_id]) VALUES (N'270341797317', N'1', N'270244951749')
GO


-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_user]
GO

CREATE TABLE [dbo].[sys_user] (
  [id] bigint  NOT NULL,
  [username] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [realname] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [password] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [avatar] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [sex] smallint  NULL,
  [phone] nvarchar(45) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [del_flag] smallint  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[sys_user] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'登录账号',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'username'
GO

EXEC sp_addextendedproperty
'MS_Description', N'真实姓名',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'realname'
GO

EXEC sp_addextendedproperty
'MS_Description', N'密码',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'password'
GO

EXEC sp_addextendedproperty
'MS_Description', N'头像',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'avatar'
GO

EXEC sp_addextendedproperty
'MS_Description', N'性别',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'sex'
GO

EXEC sp_addextendedproperty
'MS_Description', N'电话',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'phone'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除状态(0-正常,1-已删除)',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户表',
'SCHEMA', N'dbo',
'TABLE', N'sys_user'
GO


-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO [dbo].[sys_user] ([id], [username], [realname], [password], [avatar], [sex], [phone], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'1', N'admin', N'管理员', N'$2a$10$GK123CZgMaU2HQXFJGM46Or3EcQyZktQm6xeN1rR548Zvb/KA6QPG', N'', N'0', N'', N'0', NULL, N'2019-06-21 17:54:10.0000000', N'admin', N'2023-06-15 20:33:36.7090000')
GO

INSERT INTO [dbo].[sys_user] ([id], [username], [realname], [password], [avatar], [sex], [phone], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'85465348741', N'test', N'测试员', N'$2a$10$Wm4Op/aI30y5DhhZ6vHrluc09JeoMysgU83URfH0kJLh4UOJ2UDyK', NULL, N'0', NULL, N'0', N'admin', N'2023-01-16 10:56:36.0000000', N'admin', N'2023-02-11 20:28:42.0000000')
GO


-- ----------------------------
-- Table structure for sys_user_dept
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user_dept]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_user_dept]
GO

CREATE TABLE [dbo].[sys_user_dept] (
  [id] bigint  NOT NULL,
  [user_id] bigint  NULL,
  [dept_id] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_user_dept] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_dept',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户id',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_dept',
'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门id',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_dept',
'COLUMN', N'dept_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户部门表',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_dept'
GO


-- ----------------------------
-- Records of sys_user_dept
-- ----------------------------
INSERT INTO [dbo].[sys_user_dept] ([id], [user_id], [dept_id]) VALUES (N'62824114501', N'1', N'42083908293')
GO

INSERT INTO [dbo].[sys_user_dept] ([id], [user_id], [dept_id]) VALUES (N'62826415877', N'1', N'1')
GO

INSERT INTO [dbo].[sys_user_dept] ([id], [user_id], [dept_id]) VALUES (N'85465353221', N'85465348741', N'42202626373')
GO

INSERT INTO [dbo].[sys_user_dept] ([id], [user_id], [dept_id]) VALUES (N'187168267781', N'187168267525', N'42089689925')
GO

INSERT INTO [dbo].[sys_user_dept] ([id], [user_id], [dept_id]) VALUES (N'187197395589', N'187197391941', N'42089689925')
GO

INSERT INTO [dbo].[sys_user_dept] ([id], [user_id], [dept_id]) VALUES (N'187235881541', N'187235864901', N'42089689925')
GO


-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user_role]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_user_role]
GO

CREATE TABLE [dbo].[sys_user_role] (
  [id] bigint  NOT NULL,
  [user_id] bigint  NULL,
  [role_id] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_user_role] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_role',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户id',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_role',
'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色id',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_role',
'COLUMN', N'role_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户角色表',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_role'
GO


-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO [dbo].[sys_user_role] ([id], [user_id], [role_id]) VALUES (N'8613065349', N'1', N'1')
GO

INSERT INTO [dbo].[sys_user_role] ([id], [user_id], [role_id]) VALUES (N'169315988677', N'85465348741', N'131517140997')
GO

INSERT INTO [dbo].[sys_user_role] ([id], [user_id], [role_id]) VALUES (N'187168267653', N'187168267525', N'131517140997')
GO

INSERT INTO [dbo].[sys_user_role] ([id], [user_id], [role_id]) VALUES (N'187197394437', N'187197391941', N'131517140997')
GO

INSERT INTO [dbo].[sys_user_role] ([id], [user_id], [role_id]) VALUES (N'187235878725', N'187235864901', N'131517140997')
GO

INSERT INTO [dbo].[sys_user_role] ([id], [user_id], [role_id]) VALUES (N'226158724037', N'1', N'226157928197')
GO


-- ----------------------------
-- Primary Key structure for table gen_base_class
-- ----------------------------
ALTER TABLE [dbo].[gen_base_class] ADD CONSTRAINT [PK__gen_base__3213E83F68F81851] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table gen_field_type
-- ----------------------------
ALTER TABLE [dbo].[gen_field_type] ADD CONSTRAINT [PK__gen_fiel__3213E83F1C4DA74E] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table gen_table
-- ----------------------------
ALTER TABLE [dbo].[gen_table] ADD CONSTRAINT [PK__gen_tabl__3213E83F9F6FA57D] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table gen_table_field
-- ----------------------------
ALTER TABLE [dbo].[gen_table_field] ADD CONSTRAINT [PK__gen_tabl__3213E83F5698CBEF] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table gen_template
-- ----------------------------
ALTER TABLE [dbo].[gen_template] ADD CONSTRAINT [PK__gen_temp__3213E83FC35ED22E] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table gen_template_group
-- ----------------------------
ALTER TABLE [dbo].[gen_template_group] ADD CONSTRAINT [PK__gen_temp__3213E83FB972AB9E] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table program_info
-- ----------------------------
ALTER TABLE [dbo].[program_info] ADD CONSTRAINT [PK__program___DF33E8EB73A8AB9A] PRIMARY KEY CLUSTERED ([machine_name], [program_name])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_base_class
-- ----------------------------
ALTER TABLE [dbo].[sys_base_class] ADD CONSTRAINT [PK__sys_base__3213E83F90FEF2F7] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_button
-- ----------------------------
ALTER TABLE [dbo].[sys_button] ADD CONSTRAINT [PK__sys_butt__3213E83F2F5EAD82] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_button_permission
-- ----------------------------
ALTER TABLE [dbo].[sys_button_permission] ADD CONSTRAINT [PK__sys_butt__3213E83F6C898C8F] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_data_permission
-- ----------------------------
ALTER TABLE [dbo].[sys_data_permission] ADD CONSTRAINT [PK__sys_data__3213E83F0BBE93B4] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_data_source
-- ----------------------------
ALTER TABLE [dbo].[sys_data_source] ADD CONSTRAINT [PK__sys_data__3213E83F12F8DE3A] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_dept
-- ----------------------------
ALTER TABLE [dbo].[sys_dept] ADD CONSTRAINT [PK__sys_dept__DCA659743E89099A] PRIMARY KEY CLUSTERED ([dept_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_dict
-- ----------------------------
ALTER TABLE [dbo].[sys_dict] ADD CONSTRAINT [PK__sys_dict__3213E83F7BB08CAF] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_dict_item
-- ----------------------------
ALTER TABLE [dbo].[sys_dict_item] ADD CONSTRAINT [PK__sys_dict__3213E83F3455F961] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_field_type
-- ----------------------------
ALTER TABLE [dbo].[sys_field_type] ADD CONSTRAINT [PK__sys_fiel__3213E83F2FA69ED0] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_gen_field
-- ----------------------------
ALTER TABLE [dbo].[sys_gen_field] ADD CONSTRAINT [PK__sys_gen___3213E83FD4A7D365] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_gen_group
-- ----------------------------
ALTER TABLE [dbo].[sys_gen_group] ADD CONSTRAINT [PK__sys_gen___3213E83FB93730A5] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_gen_table
-- ----------------------------
ALTER TABLE [dbo].[sys_gen_table] ADD CONSTRAINT [PK__sys_gen___3213E83F0EB61561] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_gen_template
-- ----------------------------
ALTER TABLE [dbo].[sys_gen_template] ADD CONSTRAINT [PK__sys_gen___3213E83F5B6D039C] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_interface_permission
-- ----------------------------
ALTER TABLE [dbo].[sys_interface_permission] ADD CONSTRAINT [PK__sys_inte__3213E83F7E57EFD3] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_log
-- ----------------------------
ALTER TABLE [dbo].[sys_log] ADD CONSTRAINT [PK__sys_log__3213E83F06285F42] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE [dbo].[sys_menu] ADD CONSTRAINT [PK__sys_menu__3213E83FEB0CD8DA] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_quartz
-- ----------------------------
ALTER TABLE [dbo].[sys_quartz] ADD CONSTRAINT [PK__sys_quar__3213E83FAB608E49] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_quartz_job
-- ----------------------------
ALTER TABLE [dbo].[sys_quartz_job] ADD CONSTRAINT [PK__sys_quar__3213E83FCBB8DA0A] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE [dbo].[sys_role] ADD CONSTRAINT [PK__sys_role__3213E83F63D91B67] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_role_permission
-- ----------------------------
ALTER TABLE [dbo].[sys_role_permission] ADD CONSTRAINT [PK__sys_role__3213E83FBFA6A701] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE [dbo].[sys_user] ADD CONSTRAINT [PK__sys_user__3213E83F14937757] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_user_dept
-- ----------------------------
ALTER TABLE [dbo].[sys_user_dept] ADD CONSTRAINT [PK__sys_user__3213E83F06C8569F] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_user_role
-- ----------------------------
ALTER TABLE [dbo].[sys_user_role] ADD CONSTRAINT [PK__sys_user__3213E83F20A35B82] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

