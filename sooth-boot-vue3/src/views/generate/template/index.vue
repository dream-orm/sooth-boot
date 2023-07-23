<template>
  <PageWrapper dense contentFullHeight fixedHeight contentClass="flex">
    <TemplateGroupTree class="w-1/4 xl:w-1/5" @select="onTreeSelect" />
    <GenTemplate class="w-3/4 xl:w-4/5" :data="departData" />
  </PageWrapper>
</template>

<script lang="ts" name="generate-template" setup>
  import { ref } from 'vue';
  import { PageWrapper } from '/@/components/Page';
  import TemplateGroupTree from './components/TemplateGroupTree.vue';
  import GenTemplate from './components/GenTemplate.vue';
  let departData = ref({});
  // 左侧树选择后触发
  function onTreeSelect(data) {
    departData.value = data;
  }
</script>

<style></style>
