<template>
  <!--引用表格-->
  <BasicTable @register="registerTable">
    <!--插槽:table标题-->
    <template #toolbar>
      <Button type="primary" preIcon="ant-design:plus-outlined" @click="handleInitFieldType">
        初始化类型
      </Button>
    </template>
    <!--操作栏-->
    <template #action="{ record }">
      <TableAction :actions="getTableAction(record)" />
    </template>
  </BasicTable>
  <FieldTypeModal @register="registerModal" @success="handleSuccess" />
</template>

<script lang="ts" name="generate-field-type" setup>
  //ts语法
  import { Button } from 'ant-design-vue';
  import { BasicTable, useTable, TableAction } from '/@/components/Table';
  import { useModal } from '/@/components/Modal';
  import { PermEnum } from '/@/enums/permEnum';
  import FieldTypeModal from './components/FieldTypeModal.vue';
  import { columns, searchFormSchema } from './fieldType.data';
  import { fieldTypeApi } from './fieldType.api';

  const [registerModal, { openModal }] = useModal();
  // 列表页面公共参数、方法
  const [registerTable, { reload, updateTableDataRecord }] = useTable({
    title: '类型映射',
    api: fieldTypeApi.page,
    columns: columns,
    formConfig: {
      labelWidth: 80,
      schemas: searchFormSchema,
    },
    useSearchForm: true,
    showTableSetting: true,
    bordered: true,
    actionColumn: {
      width: 100,
      title: '操作',
    },
  });

  async function handleInitFieldType() {
    await fieldTypeApi.initTypeField();
    reload();
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
   * 成功回调
   */
  function handleSuccess({ isUpdate, values }) {
    if (isUpdate) {
      updateTableDataRecord(values.id, values);
    } else {
      reload();
    }
  }

  /**
   * 操作栏
   */
  function getTableAction(record) {
    return [
      {
        tooltip: '修改',
        icon: 'clarity:note-edit-line',
        auth: PermEnum.EDIT,
        onClick: handleEdit.bind(null, record),
      },
    ];
  }
</script>

<style scoped></style>
