<template>
  <BasicModal
    v-bind="$attrs"
    @register="registerModal"
    :title="getTitle"
    @ok="handleSubmit"
    width="800px"
  >
    <BasicForm @register="registerForm" />
  </BasicModal>
</template>
<script lang="ts" setup>
  import { defineProps, ref, computed, unref } from 'vue';
  import { BasicModal, useModalInner } from '/@/components/Modal';
  import { BasicForm, useForm } from '/@/components/Form';
  import { itemFormSchema } from '../dict.data';
  import { dictItemApi } from '../dict-item.api';
  // 声明Emits
  const emit = defineEmits(['success', 'register']);
  const props = defineProps({ dict: Object });
  const isUpdate = ref(true);
  //表单配置
  const [registerForm, { resetFields, setFieldsValue, validate }] = useForm({
    labelWidth: 100,
    baseColProps: { span: 24 },
    schemas: itemFormSchema,
    showActionButtonGroup: false,
  });
  //表单赋值
  const [registerModal, { closeModal, openOKLoading }] = useModalInner(async (data) => {

    isUpdate.value = !!data?.isUpdate;
    if (unref(isUpdate)) {
      //表单赋值
      await setFieldsValue({
        ...data.record,
      });
    }
    await setFieldsValue({
      dictName: props.dict.name,
    });
  });

  //设置标题
  const getTitle = computed(() => (!unref(isUpdate) ? '新增' : '编辑'));

  //表单提交事件
  async function handleSubmit() {
    const values = await validate();
    values.dictId = props.dict?.id;
    openOKLoading(async () => {
      //提交表单
      await dictItemApi.saveOrEdit(values, isUpdate.value);
      //关闭弹窗
      closeModal();
      //刷新列表
      emit('success');
    });
  }
</script>
