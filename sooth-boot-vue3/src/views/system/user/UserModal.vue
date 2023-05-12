<template>
  <BasicModal v-bind="$attrs" @register="registerModal" :title="getTitle" @ok="handleSubmit">
    <BasicForm @register="registerForm">
      <template #dept="{ model, field }">
        <DeptTreeSelect v-model:value="model[field]" :multiple="true" />
      </template>
    </BasicForm>
  </BasicModal>
</template>
<script lang="ts">
  import { defineComponent, ref, computed, unref } from 'vue';
  import { BasicModal, useModalInner } from '/@/components/Modal';
  import { BasicForm, useForm } from '/@/components/Form/index';
  import { DeptTreeSelect } from '/@/sooth/Dept';
  import { formSchema } from './user.data';
  import { userApi } from './user.api';
  export default defineComponent({
    name: 'UserModal',
    components: { BasicModal, BasicForm, DeptTreeSelect },
    emits: ['success', 'register'],
    setup(_, { emit }) {
      const isUpdate = ref(true);
      const rowId = ref('');

      const [registerForm, { setFieldsValue, validate }] = useForm({
        labelWidth: 80,
        baseColProps: { span: 24 },
        schemas: formSchema,
        showActionButtonGroup: false,
      });

      const [registerModal, { openOKLoading, closeModal }] = useModalInner(async (data) => {
        isUpdate.value = !!data?.isUpdate;
        if (unref(isUpdate)) {
          rowId.value = data.record.id;
          setFieldsValue({
            ...data.record,
          });
        }
      });

      const getTitle = computed(() => (!unref(isUpdate) ? '新增用户' : '编辑用户'));

      async function handleSubmit() {
        const values = await validate();
        openOKLoading(async () => {
          if (unref(isUpdate)) {
            await userApi.editUser(values);
          } else {
            await userApi.saveUser(values);
          }
          closeModal();
          emit('success', { isUpdate: unref(isUpdate), values: { ...values, id: rowId.value } });
        });
      }
      return { registerModal, registerForm, getTitle, handleSubmit };
    },
  });
</script>
