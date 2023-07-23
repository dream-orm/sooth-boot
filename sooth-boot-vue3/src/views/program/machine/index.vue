<template>
  <PageWrapper dense contentFullHeight fixedHeight>
    <!--引用表格-->
    <BasicTable @register="registerTable">
    </BasicTable>
  </PageWrapper>
</template>

<script lang="ts" setup>
  import { watch ,onMounted,onBeforeUnmount} from 'vue';
  import { BasicTable, useTable } from '/@/components/Table';
  import { PageWrapper } from '/@/components/Page';
  import { columns ,searchFormSchema} from './machine.data';
  import { dictApi } from './machine.api';

  const emit = defineEmits(['change']);
  // 列表页面公共参数、方法
  const [registerTable, { reload }] = useTable({
    title: '程序运维列表',
    api: dictApi.page,
    formConfig: {
      labelWidth: 80,
      schemas: searchFormSchema,
    },
    columns: columns,
    useSearchForm: true,
    showTableSetting: true,
    bordered: true,
  });
let timer=null;
onMounted(()=>{
  timer=setInterval(()=>{reload({loading:false})},10000)
});
onBeforeUnmount(()=>{
  clearInterval(timer);
});
</script>

<style scoped></style>
