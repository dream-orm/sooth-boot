<template>
  <!--引用表格-->
  <BasicTable @register="registerTable">
    <!--插槽:table标题-->
    <template #toolbar>
      <Button
        v-auth="PermEnum.ADD"
        type="primary"
        preIcon="ant-design:plus-outlined"
        @click="handleAdd"
      >
        新增
      </Button>
    </template>
    <!--操作栏-->
    <template #action="{ record }">
      <TableAction :actions="getTableAction(record)" />
    </template>
    <template #selected>
      <a @click="handleRemoveBatch" v-auth="PermEnum.REMOVE_BATCH">删除</a>
    </template>
  </BasicTable>
  <!--字典弹窗-->
  <FieldTypeModal @register="registerModal" @success="handleSuccess" />
</template>

<script lang="ts" name="generate-base-class" setup>
  import { Button } from 'ant-design-vue';
  import { ActionItem, BasicTable, TableAction, useTable } from '/@/components/Table';
  import { useModal } from '/@/components/Modal';
  import { PermEnum } from '/@/enums/permEnum';
  import FieldTypeModal from './components/BaseClassModal.vue';
  import { columns, searchFormSchema } from './baseClass.data';
  import { baseClassApi } from './baseClass.api';

  const [registerModal, { openModal }] = useModal();
  // 列表页面公共参数、方法
  const [registerTable, { getSelectRowKeys, reload }] = useTable({
    title: '基类管理',
    api: baseClassApi.page,
    columns: columns,
    formConfig: {
      schemas: searchFormSchema,
    },
    useSearchForm: true,
    showTableSetting: true,
    bordered: true,
    actionColumn: {
      width: 150,
      title: '操作',
    },
  });
  /**
   * 新增事件
   */
  function handleAdd() {
    openModal(true, {
      isUpdate: false,
    });
  }
  /**
   * 编辑事件
   */
  async function handleEdit(record: Recordable) {
    openModal(true, {
      record,
      isUpdate: true,
    });
  }
  /**
   * 删除事件
   */
  async function handleDelete(record) {
    await baseClassApi.remove({ id: record.id });
    reload();
  }
  async function handleRemoveBatch() {
    const selectRowKeys = getSelectRowKeys();
    await baseClassApi.removeBatch(selectRowKeys, reload);
  }
  /**
   * 成功回调
   */
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
        auth: PermEnum.EDIT,
        onClick: handleEdit.bind(null, record),
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
</script>

<style scoped></style>
