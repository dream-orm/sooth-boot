<template>
  <BasicDrawer
    v-bind="$attrs"
    @register="registerDrawer"
    title="按钮权限配置"
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
      title="所拥有的按钮权限"
    >
      <template #action>
        <Select
          v-model:value="buttonType"
          :options="buttonData"
          :field-names="{ label: 'name', value: 'value' }"
          class="w-full"
          allowClear
          mode="multiple"
          placeholder="统一配置按钮权限"
          @change="handleChange"
        />
      </template>
    </BasicTree>
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
  import { Select } from 'ant-design-vue';
  import { BasicDrawer, useDrawerInner } from '/@/components/Drawer';
  import { BasicTree, TreeActionType, TreeItem } from '/@/components/Tree';
  import { PopConfirmButton } from '/@/components/Button';
  import { buttonApi } from '/@/views/privilege/menu/button.api';
  import { saveButtonPermission, buttonPermissionApi } from '../buttonPermission.api';
  import { dictItemApi } from '/@/views/basic/dict/dict-item.api';
  const treeRef = ref<Nullable<TreeActionType>>(null);
  //树的信息
  const treeData = ref<TreeItem[]>([]);
  const buttonType = ref([]);
  const buttonData = ref([]);
  const roleId = ref('');
  const loading = ref(false);
  const [registerDrawer, { setDrawerProps, closeDrawer }] = useDrawerInner(async (data) => {
    setDrawerProps({ confirmLoading: false, loading: true });
    roleId.value = data.roleId;
    //初始化数据
    const menuButtonResult = await buttonApi.listMenuButtonTree();
    treeData.value = menuButtonResult;
    const buttonResult = await dictItemApi.dictItemCode('button_type');
    if (buttonResult) {
      buttonData.value = buttonResult;
    }
    const permResult = await buttonPermissionApi.list({ roleId: data.roleId });
    const permIdList = permResult.map((perm) => perm.buttonId);
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
      if (checkedNode?.type) {
        checkedArray.push(checkedKey);
      }
    }
    loading.value = true;
    try {
      await saveButtonPermission(unref(roleId), checkedArray);
    } finally {
      loading.value = false;
    }
    closeDrawer();
  }
  function handleChange() {
    if (!buttonType.value || buttonType.value.length == 0) {
      getTree().checkAll(false);
    } else {
      const checkedKeys = eachTreeData(treeData.value, buttonType.value);
      getTree().setCheckedKeys(checkedKeys);
    }
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
