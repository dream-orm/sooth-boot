<template>
  <BasicModal v-bind="$attrs" @register="registerModal" :title="getTitle" @ok="handleSubmit">
    <BasicForm @register="registerForm" />
  </BasicModal>
</template>
<script lang="ts">
  import { defineComponent, ref, computed, unref } from 'vue';
  import { BasicModal, useModalInner } from '/@/components/Modal';
  import { BasicForm, useForm } from '/@/components/Form/index';
  import { formSchema } from './dept.data';

  import { listTree, deptApi } from './dept.api';

  export default defineComponent({
    name: 'DeptModal',
    components: { BasicModal, BasicForm },
    emits: ['success', 'register'],
    setup(_, { emit }) {
      const isUpdate = ref(true);

      const [registerForm, { setFieldsValue, updateSchema, validate }] = useForm({
        labelWidth: 80,
        baseColProps: { span: 24 },
        schemas: formSchema,
        showActionButtonGroup: false,
      });

      const [registerModal, { openOKLoading, closeModal }] = useModalInner(async (data) => {
        isUpdate.value = !!data?.isUpdate;
        let treeData = await listTree({});
        if (unref(isUpdate)) {
          setFieldsValue({
            ...data.record,
          });
          const deptId = data.record.id;
          filterDept(treeData, deptId);
        }
        updateSchema({
          field: 'parentId',
          componentProps: { treeData },
        });
      });

      const getTitle = computed(() => (!unref(isUpdate) ? '新增部门' : '编辑部门'));

      function filterDept(treeData, deptId) {
        for (let i = 0; i < treeData.length; i++) {
          if (treeData[i].id === deptId) {
            treeData.splice(i, 1);
            return;
          }
        }
        if (treeData.children && treeData.children.length > 0) {
          filterDept(treeData.children, deptId);
        }
      }

      async function handleSubmit() {
        const values = await validate();
        openOKLoading(async () => {
          await deptApi.saveOrEdit(values, unref(isUpdate));
          closeModal();
          emit('success');
        });
      }
      return { registerModal, registerForm, getTitle, handleSubmit };
    },
  });
</script>
