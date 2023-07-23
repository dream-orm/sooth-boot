<script lang="tsx">
  import { onMounted, ref, unref } from 'vue';
  import { BasicTree } from '/@/components/Tree';
  import { listTree } from './dept.api';
  import { computed, defineComponent } from 'vue';
  export default defineComponent({
    setup(props, { attrs, slots, emit, expose }) {
      const treeData = ref([]);
      async function fetch() {
        const result = await listTree({});
        treeData.value = result;
      }
      const fieldNames = { key: 'deptId', title: 'deptName' };
      onMounted(() => {
        fetch();
      });
      function getNodeIds(selectedNodes) {
        let nodeIds = [];
        if (selectedNodes && selectedNodes.length > 0) {
          for (let selectedNode of selectedNodes) {
            nodeIds.push(selectedNode.deptId);
            if (selectedNode.children && selectedNode.children.length > 0) {
              nodeIds.push(...getNodeIds(selectedNode.children));
            }
          }
        }
        return nodeIds;
      }

      function handleSelect(keys, { selectedNodes }) {
        emit('selectAll', getNodeIds(selectedNodes));
      }
      const getBindValues = computed(() => {
        return {
          title: '部门列表',
          search: true,
          toolbar: true,
          onSelect: handleSelect,
          ...attrs,
        };
      });

      return () => {
        return (
          <BasicTree
            {...unref(getBindValues)}
            fieldNames={fieldNames}
            treeData={unref(treeData)}
          ></BasicTree>
        );
      };
    },
  });
</script>
