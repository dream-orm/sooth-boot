<template>
  <PageWrapper dense contentFullHeight fixedHeight contentClass="flex">
    <DeptTree class="w-1/4 xl:w-1/5" @selectAll="handleSelect" />
    <BasicTable @register="registerTable" class="w-3/4 xl:w-4/5" :searchInfo="searchInfo">
      <template #toolbar>
        <a-button v-auth="PermEnum.ADD" type="primary" @click="handleAdd">新增</a-button>
      </template>
      <template #selected>
        <a @click="handleRemoveBatch" v-auth="PermEnum.REMOVE_BATCH">删除</a>
      </template>
      <template #action="{ record }">
        <TableAction
          :actions="getTableAction(record)"
          :dropDownActions="getDropDownAction(record)"
        />
      </template>
    </BasicTable>
    <UserModal @register="registerModal" @success="handleSuccess" />
  </PageWrapper>
</template>
<script lang="ts" name="system-user" setup>
  import { reactive, unref } from 'vue';
  import { ActionItem, BasicTable, TableAction, useTable } from '/@/components/Table';
  import { PageWrapper } from '/@/components/Page';
  import { DeptTree } from '/@/sooth/Dept';

  import { useModal } from '/@/components/Modal';
  import { PermEnum } from '/@/enums/permEnum';
  import UserModal from './UserModal.vue';

  import { columns, searchFormSchema } from './user.data';
  import { userApi } from './user.api';
  import { getRoleByUserId } from '/@/views/privilege/role/userRole.api';
  import { userDeptApi } from '/@/views/system/dept/userDept.api';

  const [registerModal, { openModal }] = useModal();
  const searchInfo = reactive<Recordable>({});
  const [registerTable, { reload, getSelectRowKeys }] = useTable({
    title: '用户列表',
    api: userApi.page,
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
      title: '操作',
    },
  });

  function handleAdd() {
    openModal(true, {
      isUpdate: false,
    });
  }

  async function handleEdit(record: Recordable) {
    const roleList = await getRoleByUserId({ userId: unref(record.id) });
    const deptList = await userDeptApi.getDeptByUserId({ userId: unref(record.id) });
    openModal(true, {
      record: {
        ...record,
        roleIdList: roleList.map((role) => role.roleId),
        deptIdList: deptList.map((dept) => dept.deptId),
      },
      isUpdate: true,
    });
  }

  async function handleDelete(record: Recordable) {
    await userApi.remove({ id: record.id });
    reload();
  }
  async function handleRemoveBatch() {
    const selectRowKeys = getSelectRowKeys();
    await userApi.removeBatch(selectRowKeys, reload);
  }
  function handleSuccess() {
    reload();
  }

  function handleSelect(deptIds = []) {
    searchInfo.deptIds = deptIds;
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
    return null;
  }
</script>
