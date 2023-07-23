<template>
  <Skeleton v-if="spinning" active />
  <div v-else>
    <Row>
      <template v-if="diskInfo && diskInfo.length > 0">
        <Col :span="6" v-for="(item, index) in diskInfo" :key="'diskInfo' + index">
          <gauge :data="item"></gauge>
        </Col>
      </template>
    </Row>
  </div>
</template>
<script lang="ts" setup>
  import { onMounted, ref } from 'vue';
  import { Skeleton,Row,Col } from 'ant-design-vue';
  import { queryDiskInfo } from './disk.api';
  import gauge from './gauge.vue';

  const diskInfo = ref([]);
  const spinning = ref(true);

  function loadRedisInfo() {
    queryDiskInfo()
      .then((res) => {
        for (let i = 0; i < res.length; i++) {
          // 当前算法算的是磁盘的已使用空间
          res[i].restPPT = 100 - parseInt(String((res[i].rest / res[i].max) * 100));
        }
        diskInfo.value = res;
      })
      .finally(() => (spinning.value = false));
  }

  onMounted(() => {
    loadRedisInfo();
  });
</script>
