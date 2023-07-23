<template>
  <BasicTable @register="registerTable">
    <template #expandedRowRender="{ record }">
      <Description
        title="日志详情"
        layout="horizontal"
        :column="1"
        :data="getData(record)"
        :schema="getSchema(record)"
      />
    </template>
    <template #selected>
      <a @click="handleRemoveBatch" v-auth="PermEnum.REMOVE_BATCH">删除</a>
    </template>
  </BasicTable>
</template>
<script lang="ts" name="basic-log" setup>
  import { h, ref, unref } from 'vue';
  import { BasicTable, useTable } from '/@/components/Table';
  import { PermEnum } from '/@/enums/permEnum';
  import { Description } from '/@/components/Description/index';
  import { logApi } from './log.api';
  import { columns, searchFormSchema, getSchema } from './log.data';
  const logData = ref({});

  // 列表页面公共参数、方法
  const [registerTable, { getSelectRowKeys, reload }] = useTable({
    title: '日志列表',
    api: logApi.page,
    columns,
    useSearchForm: true,
    showTableSetting: true,
    expandRowByClick: false,
    bordered: true,
    formConfig: {
      labelWidth: 80,
      schemas: searchFormSchema,
    },
    beforeFetch(param) {
      const keyWord = param.keyWord;
      if (keyWord) {
        delete param.keyWord;
        param['bizModule'] = param['description'] = param['realname'] = keyWord;
      }
    },
  });
  function getData(record) {
    let id = record.id;
    if (!unref(logData)[id]) {
      unref(logData)[id] = [];
      logApi.get({ id: record.id }).then((res) => {
        unref(logData)[id] = res;
      });
    }
    return unref(logData)[id];
  }
  async function handleRemoveBatch() {
    const selectRowKeys = getSelectRowKeys();
    await logApi.removeBatch(selectRowKeys, reload);
  }
</script>
