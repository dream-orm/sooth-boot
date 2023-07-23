<template>
  <BasicDrawer
    v-bind="$attrs"
    @register="registerDrawer"
    title="接口权限配置"
    width="650px"
    destroyOnClose
    showFooter
  >
    <BasicTree
      ref="treeRef"
      checkable
      toolbar
      :treeData="treeData"
      :fieldNames="{ key: 'requestUrl', title: 'permission' }"
      :checkStrictly="true"
      title="所拥有的接口权限"
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
  import { BasicTree, TreeActionType, TreeItem } from '/@/components/Tree';
  import { PopConfirmButton } from '/@/components/Button';
  import {
    saveInterfacePermission,
    listInterfacePermissionTree,
    getPermissions,
  } from '../interfacePermission.api';
  const treeRef = ref<Nullable<TreeActionType>>(null);
  //树的信息
  const treeData = ref<TreeItem[]>([]);
  const roleId = ref('');
  const loading = ref(false);
  const [registerDrawer, { setDrawerProps, closeDrawer }] = useDrawerInner(async (data) => {
    setDrawerProps({ confirmLoading: false, loading: true });
    roleId.value = data.roleId;
    //初始化数据
    const permissionResult = await listInterfacePermissionTree();
    treeData.value = permissionResult;
    const permResult = await getPermissions({ roleId: data.roleId });
    const permIdList = permResult.map((perm) => perm.url);
    getTree().setCheckedKeys(permIdList);
    setDrawerProps({ loading: false });
  });

  function getTree() {
    const tree = unref(treeRef);
    if (!tree) {
      throw new Error('tree is null!');
    }
    return tree;
  }
  /**
   * 提交
   */
  async function handleSubmit() {
    let checkedKeys = getTree().getCheckedKeys();
    if (!(checkedKeys instanceof Array)) {
      checkedKeys = checkedKeys['checked'];
    }
    const checkedArray: Array<any> = [];
    for (let checkedKey of checkedKeys) {
      const checkedNode = getTree().getSelectedNode(checkedKey);
      if (checkedNode?.bizModule) {
        checkedArray.push(checkedKey);
      }
    }
    loading.value = true;
    try {
      await saveInterfacePermission(unref(roleId), checkedArray);
    } finally {
      loading.value = false;
    }
    closeDrawer();
  }
  function eachTreeData(treeDataList, buttonTypeList) {
    const treeArray: Array<any> = [];
    for (let treeData of treeDataList) {
      if (treeData.type && buttonTypeList.includes(treeData.type)) {
        treeArray.push(treeData.id);
      } else if (treeData.children && treeData.children.length > 0) {
        treeArray.push(...eachTreeData(treeData.children, buttonTypeList));
      }
    }
    return treeArray;
  }
</script>

<style lang="less" scoped></style>
