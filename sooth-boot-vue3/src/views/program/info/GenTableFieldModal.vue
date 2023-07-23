<template>
  <BasicModal
    v-bind="$attrs"
    @register="registerModal"
    :title="getTitle"
    defaultFullscreen
    width="100%"
  >
  <template #footer></template>
    <div class="h-full flex">
      <BasicForm class="w-1/5 xl:w-1/5" @register="registerForm" />
      <CodeEditor class="h-full w-4/5 xl:w-4/5" v-model:value="content" :readonly="true"/>
    </div>
  </BasicModal>
</template>
<script lang="ts" setup>
  import { CodeEditor } from '/@/components/CodeEditor';
  import { ref, computed, unref } from 'vue';
  import { Button } from 'ant-design-vue';
  import { QuestionCircleOutlined } from '@ant-design/icons-vue';
  import { BasicModal, useModalInner } from '/@/components/Modal';
  import { useDrawer } from '/@/components/Drawer';
  import { BasicForm, useForm } from '/@/components/Form';
  import { formSchema } from './program.data';
  // 声明Emits
  const emit = defineEmits(['register', 'success']);
  const isUpdate = ref(true);
  const rowId = ref('');
  const content = ref('');
  //表单配置
  const [registerForm, { setFieldsValue, validate }] = useForm({
    labelWidth: 100,
    baseColProps: { span: 24 },
    schemas: formSchema,
    showActionButtonGroup: false,
  });
  //表单赋值
  const [registerModal, { openOKLoading, closeModal }] = useModalInner(async (data) => {
      await setFieldsValue(data.record);
    content.value=data.record.message
  });
  //设置标题
  const getTitle = computed(() =>'运维消息详情');
</script>
