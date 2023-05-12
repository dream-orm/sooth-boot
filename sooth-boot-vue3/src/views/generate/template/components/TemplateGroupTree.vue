<template>
  <BasicTree
    title="模板组"
    search
    toolbar
    :treeData="treeData"
    :actionList="actionList"
    @select="onSelect"
  >
    <template #action>
      <Tooltip>
        <template #title>新增</template>
        <PlusOutlined @click="handlePlus" />
      </Tooltip>
    </template>
  </BasicTree>
  <TemplateGroupModal @register="registerModal" @success="initTemplateGroupTree" />
</template>
<script setup lang="ts">
  import { h, ref } from 'vue';
  import { BasicTree, TreeActionItem } from '/@/components/Tree/index';
  import { PlusOutlined, EditOutlined, DeleteOutlined } from '@ant-design/icons-vue';
  import { Popconfirm, Tooltip } from 'ant-design-vue';
  import { useModal } from '/@/components/Modal';
  import { templateGroupApi } from '../gen.templateGroup.api';

  const [registerModal, { openModal }] = useModal();
  import TemplateGroupModal from './TemplateGroupModal.vue';

  const treeData = ref([]);

  const emit = defineEmits(['select']);

  function onSelect(selKeys, event) {
    emit('select', event.selectedNodes[0]);
  }

  function initTemplateGroupTree() {
    templateGroupApi.list({}).then((data) => {
      treeData.value = data.map((group) => {
        return { key: group.id + '', title: group.name, record: group };
      });
    });
  }

  initTemplateGroupTree();

  function handlePlus() {
    openModal(true, {
      isUpdate: false,
    });
  }

  function handleEdit(node: any) {
    openModal(true, {
      record: node.record,
      isUpdate: true,
    });
  }

  async function handleRemove(node: any) {
    await templateGroupApi.remove({ id: node.record.id });
    initTemplateGroupTree();
  }

  const actionList: TreeActionItem[] = [
    {
      render: (node) => {
        return h(EditOutlined, {
          onClick: () => {
            handleEdit(node);
          },
        });
      },
    },
    {
      render: (node) => {
        return h(
          Popconfirm,
          {
            title: '是否确认删除?',
            onConfirm() {
              handleRemove(node);
            },
          },
          [h(DeleteOutlined)],
        );
      },
    },
  ];
</script>
