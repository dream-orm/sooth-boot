<template>
  <BasicDrawer
    v-bind="$attrs"
    @register="registerDrawer"
    title="菜单权限配置"
    width="650px"
    destroyOnClose
    showFooter
  >
    <BasicTree
      ref="treeRef"
      checkable
      toolbar
      :treeData="treeData"
      :fieldNames="{ key: 'id', title: 'name' }"
      :checkStrictly="true"
      :clickRowToExpand="true"
      title="所拥有的权限"
    />
    <!--右下角按钮-->
    <template #footer>
      <PopConfirmButton
        title="确定放弃编辑？"
        @confirm="closeDrawer"
        okText="确定"
        cancelText="取消"
        >取消</PopConfirmButton
      >
      <a-button @click="handleSubmit" type="primary" :loading="loading">保存</a-button>
    </template>
  </BasicDrawer>
</template>
<script lang="ts" setup>
  import { ref, unref } from 'vue';
  import { BasicDrawer, useDrawerInner } from '/@/components/Drawer';
  import { BasicTree, TreeItem } from '/@/components/Tree';
  import { PopConfirmButton } from '/@/components/Button';
  import { queryRolePermission, saveRolePermission } from '../role.api';
  import { menuApi } from '/@/views/privilege/menu/menu.api';
  const treeRef = ref(null);
  //树的信息
  const treeData = ref<TreeItem[]>([]);
  const roleId = ref('');
  const loading = ref(false);
  const [registerDrawer, { setDrawerProps, closeDrawer }] = useDrawerInner(async (data) => {
    await reset();
    setDrawerProps({ confirmLoading: false, loading: true });
    roleId.value = data.roleId;
    //初始化数据
    const roleResult = await menuApi.listMenuTree({});
    treeData.value = roleResult;
    //初始化角色菜单数据
    const permResult = await queryRolePermission({ roleId: unref(roleId) });
    unref(treeRef).setCheckedKeys(permResult);
    setDrawerProps({ loading: false });
  });
  /**
   * 数据重置
   */
  function reset() {
    treeData.value = [];
    roleId.value = '';
  }
  /**
   * 提交
   */
  async function handleSubmit() {
    let checkedKeys = unref(treeRef).getCheckedKeys();
    if (!(checkedKeys instanceof Array)) {
      checkedKeys = checkedKeys['checked'];
    }
    let params = {
      roleId: unref(roleId),
      permissionIds: checkedKeys,
    };
    loading.value = true;
    await saveRolePermission(params);
    loading.value = false;
    closeDrawer();
  }
</script>

<style lang="less" scoped></style>
