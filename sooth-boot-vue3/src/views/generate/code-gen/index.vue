<template>
  <!--引用表格-->
  <BasicTable @register="registerTable">
    <!--插槽:table标题-->
    <template #toolbar>
      <Button
        v-auth="PermEnum.IMPORT"
        type="primary"
        preIcon="ant-design:plus-outlined"
        @click="handleImport"
      >
        数据库表导入
      </Button>
    </template>
    <template #selected>
      <a @click="handleRemoveBatch" v-auth="PermEnum.REMOVE_BATCH">删除</a>
    </template>
    <!--操作栏-->
    <template #action="{ record }">
      <TableAction :actions="getTableAction(record)" :dropDownActions="getDropDownAction(record)" />
    </template>
  </BasicTable>
  <GenTableImportModal @register="registerImportModal" @success="reload" />
  <GenTableModal @register="registerModal" />
  <GenCodeConfirmModal @register="registerConfirmModal" />
  <GenCodePreviewModal @register="registerPreviewModal" />
</template>

<script lang="ts" name="generate-code-gen" setup>
  //ts语法
  import { Button } from 'ant-design-vue';
  import { BasicTable, useTable, TableAction } from '/@/components/Table';
  import { useModal } from '/@/components/Modal';
  import { PermEnum } from '/@/enums/permEnum';
  import GenTableModal from './components/GenTableFieldModal.vue';
  import GenTableImportModal from './components/GenTableImportModal.vue';
  import GenCodeConfirmModal from './components/GenCodeConfirmModal.vue';
  import GenCodePreviewModal from './components/GenCodePreviewModal.vue';
  import { columns, searchFormSchema } from './genCode.data';
  import { genCodeApi } from './genCode.api';

  //字典model
  const [registerImportModal, { openModal: openImportModal }] = useModal();
  const [registerModal, { openModal }] = useModal();
  const [registerConfirmModal, { openModal: openConfirmModal }] = useModal();
  const [registerPreviewModal, { openModal: openPreviewModal }] = useModal();
  //字典配置drawer
  import { ActionItem } from '/@/components/Table';
  // 列表页面公共参数、方法
  const [registerTable, { getSelectRowKeys, reload }] = useTable({
    title: '代码生成',
    api: genCodeApi.page,
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
   * 编辑事件
   */
  async function handleEdit(record: Recordable) {
    openModal(true, {
      record,
    });
  }

  /**
   * 详情
   */
  async function handleSync(record) {
    openPreviewModal(true, {
      record,
    });
  }

  function handleGenerate(record) {
    openConfirmModal(true, {
      record,
    });
  }
  async function handleRemoveBatch() {
    const selectRowKeys = getSelectRowKeys();
    await genCodeApi.removeBatch(selectRowKeys, reload);
  }
  /**
   * 删除事件
   */
  async function handleDelete(record) {
    await genCodeApi.remove({ id: record.id });
    reload();
  }

  /**
   * 字典配置
   */
  function handleImport() {
    openImportModal();
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

  /**
   * 下拉操作栏
   */
  function getDropDownAction(record): ActionItem[] | null {
    return [
      {
        label: '生成',
        icon: 'ant-design:build-outlined',
        auth: PermEnum.GENERATE,
        onClick: handleGenerate.bind(null, record),
      },
      // {
      //   label: '同步',
      //   icon: 'ant-design:cloud-sync-outlined',
      //   auth: PermEnum.SYNC,
      //   onClick: handleSync.bind(null, record),
      // },
    ];
  }
</script>

<style scoped></style>
