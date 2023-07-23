<template>
  <BasicModal v-bind="$attrs" @register="registerModal" defaultFullscreen title="数据字段列表">
    <template #footer></template>
    <BasicTable @register="registerTable">
      <!--操作栏-->
      <template #action="{ record }">
        <TableAction :actions="getTableAction(record)" />
      </template>
    </BasicTable>
  </BasicModal>
</template>
<script lang="ts" setup>
  import { BasicModal } from '/@/components/Modal';
  import { genTableColumns } from '../genCode.data';
  import {
    ActionItem,
    BasicTable,
    EditRecordRow,
    useTable,
    TableAction,
  } from '/@/components/Table/index';
  import { useModalInner } from '/@/components/Modal';
  import { genFieldApi } from '../genField.api';
  import { PermEnum } from '/@/enums/permEnum';

  //表单赋值
  const [registerModal, { closeModal }] = useModalInner(async (data) => {
    reload({ searchInfo: { tableId: data.record.id } });
  });
  const [registerTable, { reload }] = useTable({
    api: genFieldApi.list,
    columns: genTableColumns,
    afterFetch: (result) => {
      if (result) {
        result.forEach((data) => (data.editable = true));
      }
    },
    actionColumn: {
      width: 100,
      title: '操作',
      dataIndex: 'action',
    },
    striped: true,
    bordered: true,
    immediate: false,
    pagination: false,
  });

  async function handleSubmit(record) {
    await genFieldApi.postEdit(record);
  }
  function handleEdit(record: EditRecordRow) {
    record.onEdit?.(true);
  }
  function handleCancel(record: EditRecordRow) {
    record.onEdit?.(false, false);
  }
  /**
   * 操作栏
   */
  function getTableAction(record: EditRecordRow): ActionItem[] {
    if (!record.editable) {
      return [
        {
          label: '编辑',
          onClick: handleEdit.bind(null, record),
        },
      ];
    }
    return [
      {
        label: '保存',
        onClick: handleSubmit.bind(null, record),
      },
    ];
  }
</script>
<style scoped lang="less">
  @prefix-cls: ~'@{namespace}-row-invalid';

  ::v-deep(.@{prefix-cls}) {
    background: #f4f4f4;
    color: #bababa;
  }
</style>
