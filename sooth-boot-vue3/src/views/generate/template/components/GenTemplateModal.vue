<template>
  <BasicModal
    v-bind="$attrs"
    @register="registerModal"
    :title="getTitle"
    defaultFullscreen
    width="100%"
    @ok="handleSubmit"
  >
    <div class="h-full flex">
      <BasicForm class="w-1/5 xl:w-1/5" @register="registerForm" />
      <CodeEditor class="h-full w-4/5 xl:w-4/5" v-model:value="content" />
    </div>
    <div class="absolute top-5 right-5 z-1">
      <Button type="text" @click="handleHelp">
        <template #icon>
          <QuestionCircleOutlined />
        </template>
        帮助
      </Button>
    </div>
  </BasicModal>
  <GenTemplateHelpDrawer @register="registerHelpDrawer" />
</template>
<script lang="ts" setup>
  import { CodeEditor } from '/@/components/CodeEditor';
  import { ref, computed, unref } from 'vue';
  import { Button } from 'ant-design-vue';
  import { QuestionCircleOutlined } from '@ant-design/icons-vue';
  import { BasicModal, useModalInner } from '/@/components/Modal';
  import { useDrawer } from '/@/components/Drawer';
  import { BasicForm, useForm } from '/@/components/Form';
  import GenTemplateHelpDrawer from './GenTemplateHelpDrawer.vue';
  import { formSchema } from '../gen.template.data';
  import { templateApi } from '../gen.template.api';
  // 声明Emits
  const emit = defineEmits(['register', 'success']);
  const isUpdate = ref(true);
  const rowId = ref('');
  const content = ref('');
  const [registerHelpDrawer, { openDrawer: openHelpDrawer }] = useDrawer();
  //表单配置
  const [registerForm, { setFieldsValue, validate }] = useForm({
    labelWidth: 100,
    baseColProps: { span: 24 },
    schemas: formSchema,
    showActionButtonGroup: false,
  });
  //表单赋值
  const [registerModal, { openOKLoading, closeModal }] = useModalInner(async (data) => {
    isUpdate.value = !!data?.isUpdate;
    if (unref(isUpdate)) {
      rowId.value = data.record.id;
      await setFieldsValue(data.record);
    }
    content.value = data.record?.content;
  });
  //设置标题
  const getTitle = computed(() => (!unref(isUpdate) ? '新增模板' : '编辑模板'));
  //表单提交事件
  async function handleSubmit() {
    let values = await validate();
    values.content = unref(content);
    openOKLoading(async () => {
      //提交表单
      await templateApi.saveOrEdit(values, isUpdate.value);
      //关闭弹窗
      closeModal();
      //刷新列表
      emit('success', { isUpdate: unref(isUpdate), values: { ...values, id: rowId.value } });
    });
  }
  function handleHelp() {
    openHelpDrawer(true, { record: {} });
  }
</script>
