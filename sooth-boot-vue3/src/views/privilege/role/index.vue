<template>
  <PageWrapper dense contentFullHeight fixedHeight contentClass="flex">
    <DeptTree class="w-1/4 xl:w-1/5" @selectAll="handleSelect" />
    <RoleTable ref="roleTableRef" class="w-3/4 xl:w-4/5" />
  </PageWrapper>
</template>
<script lang="ts" name="privilege-role" setup>
  import { ref, unref } from 'vue';
  import { PageWrapper } from '/@/components/Page';
  import RoleTable from './components/RoleTable.vue';
  import { DeptTree } from '/@/sooth/Dept';
  const roleTableRef = ref(null);
  function handleSelect(deptIds = []) {
    unref(roleTableRef).handleSelect(deptIds);
  }
</script>
