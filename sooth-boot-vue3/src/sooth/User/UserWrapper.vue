<template>
  <PageWrapper dense contentFullHeight fixedHeight contentClass="flex">
    <DeptTree v-bind="getAttrs" class="w-1/4 xl:w-1/5" @select="handleSelect" />
    <BasicTable @register="registerTable" class="w-3/4 xl:w-4/5" :searchInfo="searchInfo" />
  </PageWrapper>
</template>
<script lang="ts">
  import { computed, defineComponent, reactive } from 'vue';
  import { BasicColumn, BasicTable, FormSchema, useTable } from '/@/components/Table';
  import { PageWrapper } from '/@/components/Page';
  import { DeptTree } from '/@/sooth/Dept';
  import { pageUser } from './user.api';
  export default defineComponent({
    name: 'UserWrapper',
    components: { PageWrapper, DeptTree, BasicTable },
    setup(props, { attrs, emit }) {
      const getAttrs = computed(() => {
        return attrs;
      });
      const searchInfo = reactive<Recordable>({});
      const searchFormSchema: FormSchema[] = [
        {
          field: 'username',
          label: '账号',
          component: 'Input',
          colProps: { span: 6 },
        },
        {
          field: 'realname',
          label: '昵称',
          component: 'Input',
          colProps: { span: 6 },
        },
        {
          field: 'phone',
          label: '手机号',
          component: 'Input',
          colProps: { span: 6 },
        },
      ];
      const columns: BasicColumn[] = [
        {
          title: '账号',
          dataIndex: 'username',
        },
        {
          title: '昵称',
          dataIndex: 'realname',
        },
        {
          title: '性别',
          dataIndex: ['dict', 'sex'],
          width: 80,
        },
        {
          title: '手机号',
          dataIndex: 'phone',
        },
        {
          title: '状态',
          dataIndex: ['dict', 'status'],
        },
      ];
      const [registerTable, { reload }] = useTable({
        title: '用户列表',
        api: pageUser,
        rowKey: 'id',
        columns,
        formConfig: {
          labelWidth: 80,
          schemas: searchFormSchema,
        },
        showIndexColumn: false,
        useSearchForm: true,
        showTableSetting: true,
        bordered: true,
      });

      function handleSelect(deptIds = []) {
        searchInfo.deptIds = deptIds;
        reload();
      }
      return { registerTable, handleSelect, getAttrs, searchInfo };
    },
  });
</script>
