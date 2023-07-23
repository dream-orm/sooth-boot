<template>
  <BasicModal v-bind="$attrs" @register="registerModal" :title="getTitle" @ok="handleSubmit">
    <BasicForm @register="registerForm">
      <template #dept="{ model, field }">
        <DeptTreeSelect v-model:value="model[field]" />
      </template>
    </BasicForm>
  </BasicModal>
</template>
<script lang="ts">
  import { defineComponent, ref, computed, unref } from 'vue';
  import { BasicModal, useModalInner } from '/@/components/Modal';
  import { BasicForm, useForm } from '/@/components/Form';
  import { DeptTreeSelect } from '/@/sooth/Dept';
  import { formSchema } from '../role.data';
  import { roleApi } from '../role.api';

  export default defineComponent({
    name: 'RoleModal',
    components: { BasicModal, BasicForm, DeptTreeSelect },
    emits: ['success', 'register'],
    setup(_, { emit }) {
      const isUpdate = ref(true);
      const rowId = ref('');
      const [registerForm, { resetFields, setFieldsValue, validate }] = useForm({
        labelWidth: 100,
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

      const getTitle = computed(() => (!unref(isUpdate) ? '新增角色' : '编辑角色'));

      async function handleSubmit() {
        const values = await validate();
        openOKLoading(async () => {
          await roleApi.saveOrEdit(values, unref(isUpdate));
          emit('success', { isUpdate: unref(isUpdate), values: { ...values, id: rowId.value } });
          closeModal();
        });
      }

      return { registerModal, registerForm, getTitle, handleSubmit };
    },
  });
</script>
