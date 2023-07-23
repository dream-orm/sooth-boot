<template>
  <BasicDrawer
    v-bind="$attrs"
    @register="registerDrawer"
    title="按钮配置"
    width="650px"
    destroyOnClose
    showFooter
  >
    <BasicTree
      ref="treeRef"
      checkable
      toolbar
      :treeData="treeData"
      :fieldNames="{ key: 'value', title: 'name' }"
      :checkStrictly="true"
      :clickRowToExpand="true"
      title="所拥有的按钮"
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
  import { dictItemApi } from '/@/views/basic/dict/dict-item.api';

  import { buttonApi } from './button.api';
  import { DictEnum } from '/@/enums/dictEnum';
  const treeRef = ref<Nullable<TreeActionType>>(null);
  //树的信息
  const treeData = ref<TreeItem[]>([]);
  const menuId = ref('');
  const loading = ref(false);
  const emit = defineEmits(['success']);
  const [registerDrawer, { setDrawerProps, closeDrawer }] = useDrawerInner(async (data) => {
    setDrawerProps({ confirmLoading: false, loading: true });
    menuId.value = data.menuId;
    //初始化数据
    const buttonResult = await dictItemApi.dictItemCode(DictEnum.BUTTON_TYPE);
    treeData.value = buttonResult;
    const permResult = await buttonApi.list({ menuId: data.menuId });
    const permIdList = permResult.map((perm) => perm.type);
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
    loading.value = true;
    try {
      await buttonApi.saveButton(unref(menuId), checkedKeys);
    } finally {
      loading.value = false;
    }
    closeDrawer();
    emit('success');
  }
</script>

<style lang="less" scoped></style>
