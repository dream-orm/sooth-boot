<template>
  <BasicModal
    v-bind="$attrs"
    @register="registerModal"
    :title="title"
    @ok="handleSubmit"
    width="700px"
  >
    <BasicForm @register="registerForm">
      <template #pwd="{ model, field }">
        <Row :gutter="8">
          <Col :sm="15" :md="16" :lg="17" :xl="19">
            <InputPassword v-model:value="model[field]" placeholder="请输入密码" />
          </Col>
          <Col :sm="9" :md="7" :lg="7" :xl="5">
            <Button type="primary" style="width: 100%" @click="handleTest">测试</Button>
          </Col>
        </Row>
      </template>
    </BasicForm>
  </BasicModal>
</template>
<script lang="ts" setup>
  import { ref, computed, unref } from 'vue';
  import { Row, Col, InputPassword, Button } from 'ant-design-vue';
  import { BasicModal, useModalInner } from '/@/components/Modal';
  import { BasicForm, useForm } from '/@/components/Form';
  import { formSchema } from './datasource.data';
  import { datasourceApi } from './datasource.api';

  // Emits声明
  const emit = defineEmits(['register', 'success']);
  const isUpdate = ref(true);
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
      //获取详情
      data.record = await datasourceApi.get({ id: data.record.id });
      //表单赋值
      await setFieldsValue({
        ...data.record,
      });
    }
  });
  //设置标题
  const title = computed(() => (!unref(isUpdate) ? '新增数据源' : '编辑数据源'));

  async function handleTest() {
    const params = await validate();
    await datasourceApi.testConnection(params);
  }

  //表单提交事件
  async function handleSubmit() {
    let values = await validate();
    openOKLoading(async () => {
      //提交表单
      await datasourceApi.saveOrEdit(values, isUpdate.value);
      //关闭弹窗
      closeModal();
      //刷新列表
      emit('success');
    });
  }
</script>
