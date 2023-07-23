<template>
  <BasicDrawer
    v-bind="$attrs"
    @register="registerDrawer"
    showFooter
    width="600px"
    :title="getTitle"
    @ok="handleSubmit"
  >
    <BasicForm @register="registerForm" class="menuForm" />
  </BasicDrawer>
</template>
<script lang="ts" setup>
  import { ref, computed, unref, useAttrs } from 'vue';
  import { BasicForm, useForm } from '/@/components/Form';
  import { formSchema, ComponentTypes } from './menu.data';
  import { BasicDrawer, useDrawerInner } from '/@/components/Drawer';
  import { menuApi } from './menu.api';
  // 声明Emits
  const emit = defineEmits(['success', 'register']);
  const attrs = useAttrs();
  const isUpdate = ref(true);
  const menuType = ref(0);
  const [registerForm, { setProps, setFieldsValue, updateSchema, validate }] = useForm({
    baseColProps: { span: 24 },
    labelWidth: 100,
    schemas: formSchema,
    showActionButtonGroup: false,
  });

  const [registerDrawer, { setDrawerProps, closeDrawer }] = useDrawerInner(async (data) => {
    setDrawerProps({ confirmLoading: false });
    isUpdate.value = !!data?.isUpdate;
    menuType.value = data?.record?.menuType;
    // 无论新增还是编辑，都可以设置表单值
    if (typeof data.record === 'object') {
      let values = { ...data.record };
      setFieldsValue(values);
      onUrlChange(values.url);
    }
    //禁用表单
    setProps({ disabled: !attrs.showFooter });
    const treeData = await menuApi.listMenuTree({});
    if (unref(isUpdate)) {
      filterMenu(treeData, data.record.id);
    }
    updateSchema({
      field: 'parentId',
      componentProps: { treeData },
    });
  });
  //获取弹窗标题
  const getTitle = computed(() => (!unref(isUpdate) ? '新增菜单' : '编辑菜单'));

  function filterMenu(treeData, menuId) {
    for (let i = 0; i < treeData.length; i++) {
      if (treeData[i].id === menuId) {
        treeData.splice(i, 1);
        return;
      }
    }
    if (treeData.children && treeData.children.length > 0) {
      filterMenu(treeData.children, menuId);
    }
  }

  //提交事件
  async function handleSubmit() {
    try {
      const values = await validate();
      // iframe兼容
      if (ComponentTypes.IFrame === values.component) {
        values.component = values.frameSrc;
      }
      setDrawerProps({ confirmLoading: true });
      //提交表单
      await menuApi.saveOrEdit(values, unref(isUpdate));
      closeDrawer();
      emit('success');
    } finally {
      setDrawerProps({ confirmLoading: false });
    }
  }

  /** url 变化时，动态设置组件名称placeholder */
  function onUrlChange(url) {
    let placeholder = '';
    if (url != null && url != '') {
      if (url.startsWith('/')) {
        url = url.substring(1);
      }
      url = url.replaceAll('/', '-');
      // 特殊标记
      url = url.replaceAll(':', '@');
      placeholder = `${url}`;
    } else {
      placeholder = '请输入组件名称';
    }
    updateSchema([{ field: 'componentName', componentProps: { placeholder } }]);
  }
</script>
