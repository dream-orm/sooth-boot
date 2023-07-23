<template>
  <BasicDrawer
    v-bind="$attrs"
    @register="registerDrawer"
    title="模板开发帮助"
    width="650px"
    :mask="false"
  >
    <PageWrapper dense contentClass="flex" v-for="item in helpData" :key="item.field">
      <div class="w-1/2 mb-1 text-base">{{ item.field }}</div>
      <div class="w-1/2 text-base">{{ item.label }}</div>
    </PageWrapper>
  </BasicDrawer>
</template>
<script lang="ts" setup>
  import { ref } from 'vue';
  import { BasicDrawer, useDrawerInner } from '/@/components/Drawer';
  import { templateApi } from '../gen.template.api';
  import { PageWrapper } from '/@/components/Page';
  const helpData = ref([]);
  //树的信息
  const [registerDrawer] = useDrawerInner(async () => {
    helpData.value = await templateApi.help();
  });
</script>

<style lang="less" scoped></style>
