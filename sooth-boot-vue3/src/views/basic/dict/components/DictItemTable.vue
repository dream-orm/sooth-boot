<template>
  <PageWrapper dense contentFullHeight fixedHeight>
    <BasicTable @register="registerTable">
      <template #toolbar>
        <a-button v-if="props.dict" v-auth="PermEnum.ADD" type="primary" @click="handleAdd">
          新增</a-button
        >
      </template>
      <template #action="{ record }">
        <TableAction :actions="getTableAction(record)" />
      </template>
    </BasicTable>
    <DictItemModal @register="registerModal" @success="reload" :dict="props.dict" />
  </PageWrapper>
</template>
<script lang="ts" setup>
  import { watch } from 'vue';
  import { BasicTable, useTable, TableAction, ActionItem } from '/@/components/Table';
  import { PageWrapper } from '/@/components/Page';
  import { useModal } from '/@/components/Modal';
  import { PermEnum } from '/@/enums/permEnum';
  import DictItemModal from './DictItemModal.vue';
  import { dictItemColumns } from '../dict.data';
  import { dictItemApi } from '../dict-item.api';

  const props = defineProps({
    dict: { type: Object },
  });

  //字典配置model
  const [registerModal, { openModal }] = useModal();
  const [registerTable, { reload, setProps }] = useTable({
    title: '字典项列表',
    api: dictItemApi.list,
    columns: dictItemColumns,
    striped: true,
    useSearchForm: false,
    showTableSetting: true,
    bordered: true,
    actionColumn: {
      width: 120,
      title: '操作',
      fixed: undefined,
    },
  });

  watch(
    () => props.dict,
    (dict) => {
      let dictId = null;
      if (dict) {
        dictId = dict.id;
      }
      setProps({
        searchInfo: {
          dictId: dictId,
        },
      });
      reload();
    },
    { deep: true },
  );

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
  function handleEdit(record) {
    openModal(true, {
      record,
      isUpdate: true,
    });
  }

  /**
   * 删除
   */
  async function handleDelete(record) {
    await dictItemApi.remove({ id: record.id });
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
<style scoped lang="less">
  @prefix-cls: ~'@{namespace}-row-invalid';

  :deep(.@{prefix-cls}) {
    background: #f4f4f4;
    color: #bababa;
  }
</style>
