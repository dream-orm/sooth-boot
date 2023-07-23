<template>
  <BasicModal
    v-bind="$attrs"
    @register="registerModal"
    :title="title"
    width="700px"
    okText="下载"
    @ok="handleSubmit"
  >
    <template #centerFooter>
      <Button @click="handlePreview">预览</Button>
    </template>
    <BasicForm @register="registerForm" />
  </BasicModal>
  <GenCodePreviewModal @register="registerPreviewModal" />
</template>
<script lang="ts" setup>
  import { ref } from 'vue';
  import { Button } from 'ant-design-vue';
  import { BasicModal, useModal, useModalInner } from '/@/components/Modal';
  import { BasicForm, useForm } from '/@/components/Form';
  import { downloadByData } from '/@/utils/file/download';
  import GenCodePreviewModal from './GenCodePreviewModal.vue';
  import { formConfirmSchema } from '../genCode.data';
  import { genCodeApi } from '../genCode.api';
  import { camelCase } from 'lodash-es';
  import { error } from '/@/utils/http/axios/helper'
  const [registerPreviewModal, { openModal: openPreviewModal }] = useModal();
  //表单配置
  const [registerForm, { setFieldsValue, validate }] = useForm({
    labelWidth: 100,
    baseColProps: { span: 24 },
    schemas: formConfirmSchema,
    showActionButtonGroup: false,
  });
  const title = ref('');
  //表单赋值
  const [registerModal, { openOKLoading, closeModal }] = useModalInner(async (data) => {
    title.value = '代码生成【' + data.record.tableName + '】';
    let _Index = data.record.tableName.indexOf('_');
    let moduleName;
    let entityName;
    if (_Index > 0) {
      moduleName = data.record.tableName.substring(0, _Index);
    } else {
      moduleName = '';
    }
    entityName = data.record.tableName.substring(_Index + 1);
    data.record.moduleName = camelCase(moduleName);
    data.record.entityName = camelCase(entityName);
    //表单赋值
    await setFieldsValue({
      ...data.record,
    });
  });
  //表单提交事件
  async function handleSubmit() {
    let values = await validate();
    openOKLoading(async () => {
      //提交表单
      const data = await genCodeApi.generate(values);
      console.log(data);
      if (data.type === 'application/octet-stream') {
        downloadByData(data, 'code.zip');
        //关闭弹窗
        closeModal();
      } else {
        const reader = new FileReader();
        reader.readAsText(data, 'UTF-8');
        reader.onload = function () {
          const result = reader.result;
          error(result as string);
        };
      }
    });
  }
  async function handlePreview() {
    let values = await validate();
    openOKLoading(async () => {
      //提交表单
      const result = await genCodeApi.preview(values);
      openPreviewModal(true, { result: result, values: values });
      closeModal();
    });
  }
</script>
