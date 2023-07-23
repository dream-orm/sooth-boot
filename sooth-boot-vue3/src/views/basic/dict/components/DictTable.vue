<template>
  <PageWrapper dense contentFullHeight fixedHeight>
    <!--引用表格-->
    <BasicTable @register="registerTable">
      <!--插槽:table标题-->
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
      <!--操作栏-->
      <template #action="{ record }">
        <TableAction
          :actions="getTableAction(record)"
          :dropDownActions="getDropDownAction(record)"
        />
      </template>
    </BasicTable>
    <!--字典弹窗-->
    <DictModal @register="registerModal" @success="handleSuccess" />
  </PageWrapper>
</template>

<script lang="ts" setup>
  import { BasicTable, useTable, TableAction, ActionItem } from '/@/components/Table';
  import { PageWrapper } from '/@/components/Page';
  import { useModal } from '/@/components/Modal';
  import { PermEnum } from '/@/enums/permEnum';
  import DictModal from './DictModal.vue';
  import { columns, searchFormSchema } from '../dict.data';
  import { dictApi } from '../dict.api';

  //字典model
  const [registerModal, { openModal }] = useModal();
  const emit = defineEmits(['change']);
  // 列表页面公共参数、方法
  const [registerTable, { reload, updateTableDataRecord }] = useTable({
    title: '数据字典列表',
    api: dictApi.page,
    columns: columns,
    rowSelection: {
      type: 'radio',
      onChange(selectedRowKeys, selectedRows) {
        if (selectedRows && selectedRows.length > 0) {
          emit('change', selectedRows[0]);
        } else {
          emit('change');
        }
      },
    },
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
    await dictApi.remove({ id: record.id });
    reload();
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

<style scoped></style>
