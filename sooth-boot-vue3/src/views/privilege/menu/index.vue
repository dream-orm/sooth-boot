<template>
  <div class="p-4">
    <BasicTable @register="registerTable">
      <template #toolbar>
        <Button
          v-auth="PermEnum.ADD"
          type="primary"
          preIcon="ant-design:plus-outlined"
          @click="handleAdd"
        >
          新增菜单
        </Button>
        <Button type="primary" preIcon="ic:round-expand" @click="expandAll">展开全部</Button>
        <Button type="primary" preIcon="ic:round-compress" @click="collapseAll">折叠全部 </Button>
      </template>
      <template #action="{ record }">
        <TableAction
          :actions="getTableAction(record)"
          :dropDownActions="getDropDownAction(record)"
        />
      </template>
      <template #selected>
        <a @click="handleRemoveBatch" v-auth="PermEnum.REMOVE_BATCH">删除</a>
      </template>
    </BasicTable>
    <MenuDrawer @register="registerMenuDrawer" @success="handleSuccess" :showFooter="showFooter" />
    <ButtonDrawer
      @register="registerButtonDrawer"
      @success="handleSuccess"
      :showFooter="showFooter"
    />
  </div>
</template>
<script lang="ts" name="privilege-menu" setup>
  import { ref } from 'vue';
  import { Button } from 'ant-design-vue';
  import { BasicTable, useTable, TableAction, ActionItem } from '/@/components/Table';
  import { useDrawer } from '/@/components/Drawer';
  import { PermEnum } from '/@/enums/permEnum';
  import MenuDrawer from './MenuDrawer.vue';
  import ButtonDrawer from './ButtonDrawer.vue';
  import { columns, searchFormSchema } from './menu.data';
  import { menuApi } from './menu.api';
  const showFooter = ref(true);
  const [registerMenuDrawer, { openDrawer: openMenuDrawer }] = useDrawer();
  const [registerButtonDrawer, { openDrawer: openButtonDrawer }] = useDrawer();
  // 列表页面公共参数、方法
  const [registerTable, { getSelectRowKeys, reload, expandAll, collapseAll }] = useTable({
    title: '菜单列表',
    api: menuApi.listMenuTree,
    columns: columns,
    formConfig: {
      schemas: searchFormSchema,
    },
    expandRowByClick: false,
    isTreeTable: true,
    pagination: false,
    striped: false,
    useSearchForm: true,
    showTableSetting: true,
    bordered: true,
    canResize: false,
    actionColumn: {
      width: 120,
      title: '操作',
      fixed: undefined,
    },
  });

  /**
   * 新增
   */
  function handleAdd() {
    showFooter.value = true;
    openMenuDrawer(true, {
      isUpdate: false,
    });
  }

  /**
   * 编辑
   */
  function handleEdit(record) {
    showFooter.value = true;
    openMenuDrawer(true, {
      record,
      isUpdate: true,
    });
  }

  /**
   * 添加下级
   */
  function handleAddSub(record) {
    openMenuDrawer(true, {
      record: { parentId: record.id, menuType: 1 },
      isUpdate: false,
    });
  }
  /**
   * 按钮设置
   */
  function handleButton(record) {
    openButtonDrawer(true, { menuId: record.id });
  }
  /**
   * 删除
   */
  async function handleDelete(record) {
    await menuApi.remove({ id: record.id });
    reload();
  }
  async function handleRemoveBatch() {
    const selectRowKeys = getSelectRowKeys();
    await menuApi.removeBatch(selectRowKeys, reload);
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
    return [
      {
        icon: 'ant-design:vertical-align-bottom-outlined',
        label: '添加下级',
        auth: PermEnum.ADD_SUB,
        onClick: handleAddSub.bind(null, record),
      },
      {
        icon: 'ant-design:setting-outlined',
        label: '按钮配置',
        auth: PermEnum.BUTTON_SETTING,
        onClick: handleButton.bind(null, record),
      },
    ];
  }
</script>
