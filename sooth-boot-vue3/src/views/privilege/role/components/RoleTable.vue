<template>
  <PageWrapper dense contentFullHeight fixedHeight contentClass="flex">
    <BasicTable @register="registerTable" :searchInfo="searchInfo">
      <template #toolbar>
        <a-button
          v-auth="PermEnum.ADD"
          type="primary"
          preIcon="ant-design:plus-outlined"
          @click="handleAdd"
        >
          新增
        </a-button>
      </template>
      <template #action="{ record }">
        <TableAction
          :actions="getTableAction(record)"
          :dropDownActions="getDropDownAction(record)"
        />
      </template>
      <template #selected>
        <a @click="handleRemoveBatch" v-auth="PermEnum.REMOVE_BATCH">删除</a>
      </template>
    </BasicTable>
    <!--角色用户表格-->
    <UserRoleDrawer @register="roleUserDrawer" />
    <RoleModal @register="registerModal" @success="handleSuccess" />
    <!--菜单授权抽屉-->
    <MenuPermissionDrawer @register="menuPermissionDrawer" />
    <!--按钮授权抽屉-->
    <ButtonPermissionDrawer @register="buttonPermissionDrawer" />
    <!--接口授权抽屉-->
    <InterfacePermissionDrawer @register="interfacePermissionDrawer" />
    <!--数据授权抽屉-->
    <DataPermissionDrawer @register="dataPermissionDrawer" />
  </PageWrapper>
</template>
<script lang="ts" setup>
  import { defineExpose, reactive } from 'vue';
  import { ActionItem, BasicTable, TableAction, useTable } from '/@/components/Table';
  import { useDrawer } from '/@/components/Drawer';
  import { PageWrapper } from '/@/components/Page';
  import { useModal } from '/@/components/Modal';
  import { PermEnum } from '/@/enums/permEnum';
  import RoleModal from './RoleModal.vue';
  import MenuPermissionDrawer from './MenuPermissionDrawer.vue';
  import ButtonPermissionDrawer from './ButtonPermissionDrawer.vue';
  import InterfacePermissionDrawer from './InterfacePermissionDrawer.vue';
  import DataPermissionDrawer from './DataPermissionDrawer.vue';
  import UserRoleDrawer from './UserRoleDrawer.vue';
  import { columns, searchFormSchema } from '../role.data';
  import { roleApi } from '../role.api';

  const [roleUserDrawer, { openDrawer: openRoleUserDrawer }] = useDrawer();
  const [menuPermissionDrawer, { openDrawer: openMenuPermissionDrawer }] = useDrawer();
  const [buttonPermissionDrawer, { openDrawer: openButtonPermissionDrawer }] = useDrawer();
  const [interfacePermissionDrawer, { openDrawer: openInterfacePermissionDrawer }] = useDrawer();
  const [dataPermissionDrawer, { openDrawer: openDataPermissionDrawer }] = useDrawer();
  const [registerModal, { openModal }] = useModal();
  const searchInfo = reactive<Recordable>({});
  // 列表页面公共参数、方法
  const [registerTable, { getSelectRowKeys, reload }] = useTable({
    title: '角色列表',
    api: roleApi.page,
    columns: columns,
    formConfig: {
      labelWidth: 80,
      schemas: searchFormSchema,
    },
    useSearchForm: true,
    showTableSetting: true,
    bordered: true,
    actionColumn: {
      width: 120,
      title: '操作',
      fixed: undefined,
    },
  });

  /**
   * 新增
   */
  function handleAdd() {
    openModal(true, {
      isUpdate: false,
    });
  }

  /**
   * 编辑
   */
  function handleEdit(record: Recordable) {
    openModal(true, {
      record,
      isUpdate: true,
    });
  }

  /**
   * 删除事件
   */
  async function handleDelete(record) {
    await roleApi.remove({ id: record.id });
    reload();
  }
  async function handleRemoveBatch() {
    const selectRowKeys = getSelectRowKeys();
    await roleApi.removeBatch(selectRowKeys, reload);
  }
  /**
   * 菜单授权弹窗
   */
  function handleMenuPermission(record) {
    openMenuPermissionDrawer(true, { roleId: record.id });
  }
  /**
   * 按钮授权弹窗
   */
  function handleButtonPermission(record) {
    openButtonPermissionDrawer(true, { roleId: record.id });
  }
  function handleInterfacePermission(record) {
    openInterfacePermissionDrawer(true, { roleId: record.id });
  }
  /**
   * 数据授权弹窗
   */
  function handleDataPermission(record) {
    openDataPermissionDrawer(true, {
      record: { roleId: record.id, roleCode: record.roleCode, roleName: record.roleName },
    });
  }
  /**
   * 角色用户
   */
  function handleUser(record) {
    openRoleUserDrawer(true, record);
  }
  function handleSelect(deptIds) {
    searchInfo.deptId = deptIds;
    reload();
  }
  function handleSuccess() {
    reload();
  }
  /**
   * 操作栏
   */
  function getTableAction(record): ActionItem[] {
    return [
      {
        tooltip: '修改',
        icon: 'clarity:note-edit-line',
        onClick: handleEdit.bind(null, record),
        auth: PermEnum.EDIT,
      },
      {
        tooltip: '删除',
        icon: 'ant-design:delete-outlined',
        color: 'error',
        auth: PermEnum.REMOVE,
        popConfirm: {
          title: '是否确认删除',
          confirm: handleDelete.bind(null, record),
        },
      },
    ];
  }

  /**
   * 下拉操作栏
   */
  function getDropDownAction(record): ActionItem[] | null {
    return [
      {
        icon: 'ant-design:menu-outlined',
        label: '菜单权限',
        auth: PermEnum.MENU_PERMISSION,
        onClick: handleMenuPermission.bind(null, record),
      },
      {
        icon: 'ant-design:menu-fold-outlined',
        label: '按钮权限',
        auth: PermEnum.BUTTON_PERMISSION,
        onClick: handleButtonPermission.bind(null, record),
      },
      {
        icon: 'ant-design:menu-fold-outlined',
        label: '接口权限',
        onClick: handleInterfacePermission.bind(null, record),
      },
      {
        icon: 'ant-design:menu-unfold-outlined',
        label: '数据权限',
        auth: PermEnum.DATA_PERMISSION,
        onClick: handleDataPermission.bind(null, record),
      },
      {
        icon: 'ant-design:user-add-outlined',
        label: '授权用户',
        auth: PermEnum.ROLE_USER,
        onClick: handleUser.bind(null, record),
      },
    ];
  }
  defineExpose({ handleSelect });
</script>
