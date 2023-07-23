<template>
  <BasicModal
    v-bind="$attrs"
    @register="registerModal"
    title="用户选择列表"
    width="800px"
    @ok="handleSubmit"
  >
    <BasicTable @register="registerTable" :rowSelection="rowSelection" />
  </BasicModal>
</template>
<script lang="ts" setup>
  import { BasicModal, useModalInner } from '/@/components/Modal';
  import { BasicTable, useTable } from '/@/components/Table';
  import { userColumns, searchUserFormSchema } from '../role.data';
  import { userApi } from '../../../system/user/user.api';
  // 声明Emits
  const emit = defineEmits(['select', 'register']);
  const [registerModal, { openOKLoading, closeModal }] = useModalInner();
  //注册table数据
  const [registerTable, { getSelectRowKeys }] = useTable({
    api: userApi.page,
    rowKey: 'id',
    columns: userColumns,
    formConfig: {
      labelWidth: 80,
      schemas: searchUserFormSchema,
    },
    striped: true,
    useSearchForm: true,
    showTableSetting: false,
    bordered: true,
    canResize: false,
  });
  /**
   * 选择列配置
   */
  const rowSelection = {
    type: 'checkbox',
    columnWidth: 50,
  };

  //提交事件
  function handleSubmit() {
    openOKLoading(() => {
      //刷新列表
      emit('select', getSelectRowKeys());
      //关闭弹窗
      closeModal();
    });
  }
</script>
