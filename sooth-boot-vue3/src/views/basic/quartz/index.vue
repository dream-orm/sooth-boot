<template>
  <BasicTable @register="registerTable">
    <template #toolbar>
      <a-button
        v-auth="PermEnum.ADD"
        type="primary"
        preIcon="ant-design:plus-outlined"
        @click="handleAdd"
        style="margin-right: 5px"
        >新增</a-button
      >
    </template>
    <template #expandedRowRender="{ record }">
      <Description layout="horizontal" :column="1" :data="getData(record)" :schema="getSchema()" />
    </template>
    <template #action="{ record }">
      <TableAction :actions="getTableAction(record)" :dropDownActions="getDropDownAction(record)" />
    </template>
    <template #selected>
      <a @click="handleRemoveBatch" v-auth="PermEnum.REMOVE_BATCH">删除</a>
    </template>
  </BasicTable>
  <QuartzModal @register="registerModal" @success="reload" />
</template>
<script lang="ts" name="quartz" setup>
  import { BasicTable, useTable, TableAction, ActionItem } from '/@/components/Table';
  import { useModal } from '/@/components/Modal';
  import { PermEnum } from '/@/enums/permEnum';
  import { quartzApi } from './quartz.api';
  import { columns, searchFormSchema } from './quartz.data';
  import QuartzModal from './QuartzModal.vue';
  import { DescItem, Description } from '/@/components/Description/index';
  const [registerModal, { openModal }] = useModal();

  // 列表页面公共参数、方法
  const [registerTable, { getSelectRowKeys, reload }] = useTable({
    title: '定时任务列表',
    api: quartzApi.page,
    columns: columns,
    formConfig: {
      labelWidth: 100,
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
  /**
   * 下拉操作栏
   */
  function getDropDownAction(record): ActionItem[] | null {
    return [
      {
        label: '立即执行',
        icon: 'ant-design:rocket-outlined',
        onClick: nowExecute.bind(null, record),
      },
      {
        label: '启动调度',
        icon: 'ant-design:field-time-outlined',
        onClick: scheduleExecute.bind(null, record),
      },
      {
        label: '停止任务',
        icon: 'ant-design:field-time-outlined',
        onClick: stopExecute.bind(null, record),
      },
    ];
  }
  async function nowExecute(record) {
    await quartzApi.nowExecute({ id: record.id });
    await reload();
  }
  async function scheduleExecute(record) {
    await quartzApi.scheduleExecute({ id: record.id });
    await reload();
  }
  async function stopExecute(record) {
    await quartzApi.stopExecute({ id: record.id });
    await reload();
  }
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
  function handleEdit(record) {
    openModal(true, {
      record,
      isUpdate: true,
    });
  }

  /**
   * 删除事件
   */
  async function handleDelete(record) {
    await quartzApi.remove({ id: record.id });
    reload();
  }
  async function handleRemoveBatch() {
    const selectRowKeys = getSelectRowKeys();
    await quartzApi.removeBatch(selectRowKeys, reload);
  }
  function getData(record) {
    return record;
  }
  function getSchema() {
    const schema: DescItem[] = [
      {
        field: 'parameter',
        label: '参数',
      },
    ];
    return schema;
  }
</script>
