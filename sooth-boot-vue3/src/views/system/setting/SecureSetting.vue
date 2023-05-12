<template>
  <CollapseContainer title="安全设置" :canExpan="false">
    <List>
      <template v-for="item in list" :key="item.key">
        <ListItem>
          <ListItemMeta>
            <template #title>
              {{ item.title }}
              <div class="extra" v-if="item.extra" @click="onItemClick(item.key)">
                {{ item.extra }}
              </div>
            </template>
            <template #description>
              <div>{{ item.description }}</div>
            </template>
          </ListItemMeta>
        </ListItem>
      </template>
    </List>
  </CollapseContainer>
  <UpdatePassword @register="registerModal" />
</template>
<script lang="ts">
  import { List } from 'ant-design-vue';
  import { defineComponent } from 'vue';
  import { CollapseContainer } from '/@/components/Container';
  import UpdatePassword from './components/UpdatePassword.vue';

  import { secureSettingList } from './data';
  import { useModal } from '/@/components/Modal';
  const [registerModal, { openModal }] = useModal();
  export default defineComponent({
    components: {
      CollapseContainer,
      List,
      ListItem: List.Item,
      ListItemMeta: List.Item.Meta,
      UpdatePassword,
    },
    setup() {
      function onItemClick(key) {
        switch (key) {
          case 'pwd':
            openModal(true,{});
            break;
        }
      }
      return {
        registerModal,
        list: secureSettingList,
        onItemClick,
      };
    },
  });
</script>
<style lang="less" scoped>
  .extra {
    float: right;
    margin-top: 10px;
    margin-right: 30px;
    font-weight: normal;
    color: #1890ff;
    cursor: pointer;
  }
</style>
