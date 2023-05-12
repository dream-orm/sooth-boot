import { h, ref, unref } from 'vue';
import { Avatar, Tag } from 'ant-design-vue';
import { useDictStoreWithOut } from '/@/store/modules/dict';
import { getFileAccessHttpUrl } from '/@/utils/common/compUtils';
import { dictItemApi } from '/@/views/basic/dict/dict-item.api';
import Icon from '/@/components/Icon';
const render = {
  /**
   * 渲染列表头像
   */
  renderAvatar: ({ record }) => {
    if (record.avatar) {
      const avatarList = record.avatar.split(',');
      return h(
        'span',
        avatarList.map((item) => {
          return h(Avatar, {
            src: getFileAccessHttpUrl(item),
            shape: 'square',
            size: 'default',
            style: { marginRight: '5px' },
          });
        }),
      );
    } else {
      return h(
        Avatar,
        { shape: 'square', size: 'default' },
        {
          icon: () => h(Icon, { icon: 'ant-design:file-image-outlined', size: 30 }),
        },
      );
    }
  },
  renderArray: ({ value }) => {
    if (!value) {
      return '';
    }
    return h(
      'span',
      value.map((v) => h('span', { class: 'mr-4 leading-8' }, h(Tag, { color: 'blue' }, v))),
    );
  },
  renderDict: (code, value) => {
    if (value === null || value === '') {
      return '';
    }
    const dictStore = useDictStoreWithOut();
    const dictItem = dictStore.getDictItem;
    const resultItem = ref({});
    let dictItemArray = dictItem[code];
    if (!dictItemArray) {
      dictItemApi.dictItemCode(code).then((res) => {
        dictItemArray = res;
        dictStore.setDictItem(code, dictItemArray);
        chooseTag();
      });
    } else {
      chooseTag();
    }
    function chooseTag() {
      for (const item of dictItemArray) {
        if (item.value == value) {
          resultItem.value = item;
          break;
        }
      }
    }
    return h(
      'span',
      h('span', {}, h(Tag, { color: unref(resultItem).tag }, unref(resultItem).name)),
    );
  },

  renderTag(value, tag) {
    return h('span', h('span', {}, h(Tag, { color: tag }, value)));
  },
};
export { render };
