import { defineStore } from 'pinia';
import { store } from '/@/store';

interface DictState {
  dictItem: object;
}

export const useDictStore = defineStore({
  id: 'dict',
  state: (): DictState => ({
    dictItem: {},
  }),
  getters: {
    getDictItem(): object {
      return this.dictItem;
    },
  },
  actions: {
    setDictItem(code, value) {
      this.dictItem[code] = value;
    },
  },
});

export function useDictStoreWithOut() {
  return useDictStore(store);
}
