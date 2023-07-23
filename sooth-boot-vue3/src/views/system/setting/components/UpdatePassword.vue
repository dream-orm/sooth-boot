<template>
  <BasicModal
    v-bind="$attrs"
    @register="registerModal"
    title="修改密码"
    @ok="handleSubmit"
    width="600px"
  >
    <BasicForm @register="registerForm" />
  </BasicModal>
</template>
<script lang="ts" setup>
  import { rules } from '/@/utils/helper/validator';
  import { BasicModal, useModalInner } from '/@/components/Modal';
  import { BasicForm, useForm } from '/@/components/Form/index';
  import { userApi } from '../../user/user.api';
  //表单配置
  const [registerForm, { resetFields, validate, clearValidate }] = useForm({
    labelWidth: 100,
    baseColProps: { span: 24 },
    schemas: [
      {
        label: '旧密码',
        field: 'oldPassword',
        component: 'InputPassword',
        required: true,
      },
      {
        label: '新密码',
        field: 'password',
        component: 'StrengthMeter',
        componentProps: {
          placeholder: '请输入新密码',
        },
        rules: [
          {
            required: true,
            message: '请输入新密码',
          },
        ],
      },
      {
        label: '确认密码',
        field: 'confirmPassword',
        component: 'InputPassword',
        dynamicRules: ({ values }) => rules.confirmPassword(values, true),
      },
    ],
    showActionButtonGroup: false,
  });
  //表单赋值
  const [registerModal, { openOKLoading, closeModal }] = useModalInner(() => {
    resetFields();
    clearValidate();
  });

  //表单提交事件
  async function handleSubmit() {
    const params = await validate();
    openOKLoading(async () => {
      //提交表单
      await userApi.updatePassword(params);
      closeModal();
    });
  }
</script>
