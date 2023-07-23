<template>
  <BasicDrawer @register="registerBaseDrawer" title="角色用户" width="800" destroyOnClose>
    <BasicTable @register="registerTable">
      <template #toolbar>
        <a-button type="primary" @click="handleSelect"> 添加用户</a-button>
      </template>
      <template #action="{ record }">
        <TableAction :actions="getTableAction(record)" />
      </template>
    </BasicTable>
    <!--用户选择弹窗-->
    <UseSelectModal @register="registerModal" @select="selectOk" />
  </BasicDrawer>
</template>
<script lang="ts" setup>
  import { ref } from 'vue';
  import { BasicTable, useTable, TableAction } from '/@/components/Table';
  import { BasicDrawer, useDrawerInner } from '/@/components/Drawer';
  import { useModal } from '/@/components/Modal';
  import UseSelectModal from './UseSelectModal.vue';
  import { userRoleApi, saveUserRole, getUserByRoleId } from '../userRole.api';
  import { userColumns } from '../role.data';

  const roleId = ref('');
  const [registerBaseDrawer] = useDrawerInner(async (data) => {
    roleId.value = data.id;
    setProps({ searchInfo: { roleId: data.id } });
    reload();
  });
  //注册drawer
  const [registerModal, { openModal }] = useModal();
  const [registerTable, { reload, setProps }] = useTable({
    title: '用户列表',
    api: getUserByRoleId,
    columns: userColumns,
    striped: true,
    useSearchForm: false,
    showTableSetting: true,
    clickToRowSelect: false,
    bordered: true,
    canResize: false,
    rowKey: 'id',
    actionColumn: {
      width: 120,
      title: '操作',
      fixed: undefined,
    },
  });

  /**
   * 删除事件
   */
  async function handleDelete(record) {
    await userRoleApi.remove({ id: record.id });
    reload();
  }
  /**
   * 选择已有用户
   */
  function handleSelect() {
    openModal(true);
  }
  /**
   * 添加已有用户
   */
  async function selectOk(val) {
    await saveUserRole({ roleId: roleId.value, userIdList: val });
    reload();
  }
  /**
   * 操作栏
   */
function getTableAction(record): ActionItem[] {
  return [
    {
      tooltip: "删除",
      icon: "ant-design:delete-outlined",
      color: "error",
      popConfirm: {
        title: "是否确认删除",
        confirm: handleDelete.bind(null, record)
      }
    }
  ];
}
</script>
