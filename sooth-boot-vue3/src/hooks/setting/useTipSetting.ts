import { computed } from 'vue';
import { useAppStore } from '/@/store/modules/app';

export function useTipSetting() {
  const appStore = useAppStore();

  const getSuccessTip = computed(() => appStore.getTipSetting?.successTip);

  const getErrorTip = computed(() => appStore.getTipSetting?.errorTip);

  return {
    getSuccessTip,
    getErrorTip,
  };
}
