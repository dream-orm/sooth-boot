<template>
  <BasicModal
    v-bind="$attrs"
    @register="registerModal"
    title="代码预览"
    defaultFullscreen
    okText="下载"
    @ok="handleSubmit"
  >
    <div class="absolute top-20 right-10 z-1">
      <Button type="text" @click="handleCopy">
        <template #icon>
          <CopyOutlined />
        </template>
        复制
      </Button>
    </div>
    <Tabs v-model:activeKey="activeKey">
      <TabPane v-for="(item, index) in codeList" :key="index" :tab="item.fileName">
        <CodeEditor v-model:value="item.content" :readonly="true" />
      </TabPane>
    </Tabs>
  </BasicModal>
</template>
<script lang="ts" setup>
  import { CodeEditor } from '/@/components/CodeEditor';
  import { ref, unref } from 'vue';
  import { Tabs, TabPane, Button } from 'ant-design-vue';
  import { CopyOutlined } from '@ant-design/icons-vue';
  import { useCopyToClipboard } from '/@/hooks/web/useCopyToClipboard';
  import { BasicModal, useModalInner } from '/@/components/Modal';
  import { useMessage } from '/@/hooks/web/useMessage';
  import { downloadByData } from '/@/utils/file/download';
  import { genCodeApi } from '../genCode.api';
  // 声明Emits
  const emit = defineEmits(['register', 'success']);
  const { clipboardRef, copiedRef } = useCopyToClipboard();
  const { createMessage } = useMessage();
  const codeList = ref([]);
  const activeKey = ref(0);
  const values = ref({});
  //表单赋值
  const [registerModal, { openOKLoading, closeModal }] = useModalInner(async (data) => {
    codeList.value = data.result;
    values.value = data.values;
  });
  //表单提交事件
  async function handleSubmit() {
    openOKLoading(async () => {
      //提交表单
      const data = await genCodeApi.generate(values.value);
      downloadByData(data, 'code.zip');
      //关闭弹窗
      closeModal();
      //刷新列表
      emit('success');
    });
  }
  function handleCopy() {
    const copyList = codeList.value;
    const index = parseInt(activeKey.value);
    if (copyList.length > index) {
      clipboardRef.value = codeList.value[index]['content'];
      if (unref(copiedRef)) {
        createMessage.success('复制成功');
      } else {
        createMessage.error('复制失败');
      }
    } else {
      createMessage.error('未选择赋值内容');
    }
  }
</script>
