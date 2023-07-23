<template>
  <PageWrapper dense contentFullHeight fixedHeight>
    <BasicTable @register="registerTable">
        <!--操作栏-->
    <template #action="{ record }">
      <TableAction :actions="getTableAction(record)" :dropDownActions="getDropDownAction(record)" />
    </template>
    </BasicTable>
    <GenTableFieldModal @register="registerPreviewModal"></GenTableFieldModal>
  </PageWrapper>
</template>
<script lang="ts" setup>
  import { watch ,onMounted,onBeforeUnmount} from 'vue';
  import { BasicTable, useTable, TableAction } from '/@/components/Table';
  import { PageWrapper } from '/@/components/Page';
  import { dictItemColumns, searchFormSchema } from './program.data';
  import { dictItemApi } from './message.api';
  import { useModal } from '/@/components/Modal';
  import GenTableFieldModal from './GenTableFieldModal.vue';
  const props = defineProps({
    program: { type: Object },
  });
  const [registerTable, { reload, setProps }] = useTable({
    title: '程序消息列表',
    api: dictItemApi.list,
    formConfig: {
      labelWidth: 80,
      schemas: searchFormSchema,
    },
    columns: dictItemColumns,
    striped: true,
    useSearchForm: true,
    showTableSetting: true,
    bordered: true,
    actionColumn: {
      width: 100,
      title: '操作',
    },
  });
  const [registerPreviewModal, { openModal: openPreviewModal }] = useModal();
  watch(
    () => props.program,
    (program) => {
      setProps({
        searchInfo: {
          machineName: program?.machineName,
          programName: program?.programName,
        },
      });
      reload();
    },
    { deep: true },
  );
let timer=null;
onMounted(()=>{
  timer=setInterval(()=>{reload({loading:false})},10000)
});
onBeforeUnmount(()=>{
  clearInterval(timer);
});
function handleDetail(record){
  openPreviewModal(true,{record})
}
 /**
   * 操作栏
   */
  function getTableAction(record): ActionItem[] {
   return [
     {
       tooltip: '消息内容详情',
       icon: 'ant-design:eye-outlined',
       onClick: handleDetail.bind(null, record),
     },
     ];
 }

  /**
   * 下拉操作栏
   */
  function getDropDownAction(record): ActionItem[] | null {
    return []
  }
</script>
<style scoped lang="less">
  @prefix-cls: ~'@{namespace}-row-invalid';

  :deep(.@{prefix-cls}) {
    background: #f4f4f4;
    color: #bababa;
  }
</style>
