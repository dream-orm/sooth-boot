<template>
  <ApiTreeSelect v-bind="getAttrs" @change="handleChange" />
</template>

<script lang="ts">
  import { listTree as api } from './dept.api';
  import { computed, defineComponent, unref } from 'vue';
  import { ApiTreeSelect } from '/@/components/Form';
  export default defineComponent({
    name: 'DeptTreeSelect',
    components: { ApiTreeSelect },
    setup(props, { attrs, emit }) {
      function afterFetch(result) {
        return result;
      }
      function handleChange(...args) {
        emit('change', ...args);
      }
      const getAttrs = computed(() => {
        return {
          api,
          fieldNames: {
            label: 'deptName',
            key: 'deptId',
            value: 'deptId',
          },
          afterFetch,
          ...attrs,
        };
      });
      return { getAttrs, handleChange };
    },
  });
</script>

<style scoped></style>
