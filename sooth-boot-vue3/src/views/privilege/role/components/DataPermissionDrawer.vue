<template>
  <BasicDrawer
    v-bind="$attrs"
    @register="registerDrawer"
    title="数据权限配置"
    width="650px"
    destroyOnClose
    showFooter
  >
    <BasicForm @register="registerForm">
      <template #dept>
        <BasicTree
          ref="treeRef"
          checkable
          toolbar
          :treeData="treeData"
          :fieldNames="{ key: 'deptId', title: 'deptName' }"
          :checkStrictly="true"
          :clickRowToExpand="true"
          title="指定部门"
        />
      </template>
    </BasicForm>
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
  import { BasicForm, useForm } from '/@/components/Form';
  import { BasicTree, TreeItem } from '/@/components/Tree';
  import { PopConfirmButton } from '/@/components/Button';
  import { dataFormSchema } from '../role.data';
  import { listTree } from '/@/views/system/dept/dept.api';
  import { dataPermissionApi } from '../dataPermission.api';
  const treeRef = ref(null);
  //树的信息
  const treeData = ref<TreeItem[]>([]);
  const loading = ref(false);
  const isUpdate = ref(true);
  const [registerForm, { resetFields, setFieldsValue, validate }] = useForm({
    labelWidth: 100,
    baseColProps: { span: 24 },
    schemas: dataFormSchema,
    showActionButtonGroup: false,
  });
  const [registerDrawer, { setDrawerProps, closeDrawer }] = useDrawerInner(async (data) => {
    setDrawerProps({ confirmLoading: false, loading: true });
    treeData.value = await listTree({});
    setFieldsValue({
      ...data.record,
    });
    const result = await dataPermissionApi.getOne({ roleId: data.record.roleId });
    if (result == null) {
      isUpdate.value = false;
    } else {
      setFieldsValue({
        ...result,
      });
      const deptIds = result.deptIds;
      if (deptIds) {
        unref(treeRef).setCheckedKeys(deptIds);
      }
    }
    setDrawerProps({ loading: false });
  });
  /**
   * 提交
   */
  async function handleSubmit() {
    const values = await validate();
    let checkedKeys = unref(treeRef).getCheckedKeys();
    if (!(checkedKeys instanceof Array)) {
      checkedKeys = checkedKeys['checked'];
    }
    dataPermissionApi.saveOrEdit({ ...values, deptIds: checkedKeys }, unref(isUpdate));
    closeDrawer();
  }
</script>

<style lang="less" scoped></style>
