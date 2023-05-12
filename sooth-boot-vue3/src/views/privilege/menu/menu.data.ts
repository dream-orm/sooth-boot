import { BasicColumn } from '/@/components/Table';
import { FormSchema } from '/@/components/Table';
import { h } from 'vue';
import { Icon } from '/@/components/Icon';
import { render } from '/@/utils/common/renderUtils';
const isDir = (type) => type === 0;
const isMenu = (type) => type === 1;

// 定义可选择的组件类型
export enum ComponentTypes {
  Default = 'layouts/default/index',
  IFrame = 'sys/iframe/FrameBlank',
}

export const columns: BasicColumn[] = [
  {
    title: '菜单名称',
    dataIndex: 'name',
    customRender: ({ record }) => {
      return h('div', {}, [h(Icon, { icon: record.icon }), record.name]);
    },
  },
  {
    title: '组件名称',
    dataIndex: 'componentName',
  },
  {
    title: '组件',
    dataIndex: 'component',
  },
  {
    title: '路径',
    dataIndex: 'url',
  },
  {
    title: '按钮',
    dataIndex: 'buttonTypeList',
    customRender: (opt) => render.renderArray(opt),
  },
  {
    title: '排序',
    dataIndex: 'sortNo',
    width: 50,
  },
];

export const searchFormSchema: FormSchema[] = [
  {
    field: 'name',
    label: '菜单名称',
    component: 'Input',
    colProps: { span: 6 },
  },
];

export const formSchema: FormSchema[] = [
  {
    label: 'id',
    field: 'id',
    component: 'Input',
    show: false,
  },
  {
    field: 'menuType',
    label: '菜单类型',
    component: 'RadioButtonGroup',
    defaultValue: 0,
    componentProps: ({ formActionType, formModel }) => {
      return {
        options: [
          { label: '一级菜单', value: 0 },
          { label: '子菜单', value: 1 },
        ],
        onChange: (e) => {
          if (isMenu(e) && !formModel.id && formModel.component == ComponentTypes.Default) {
            formModel.component = '';
          }
        },
      };
    },
  },
  {
    field: 'name',
    label: '菜单名称',
    component: 'Input',
    required: true,
  },
  {
    field: 'parentId',
    label: '上级菜单',
    component: 'TreeSelect',
    required: true,
    componentProps: {
      fieldNames: {
        label: 'name',
        key: 'id',
        value: 'id',
      },
      dropdownStyle: {
        maxHeight: '50vh',
      },
      getPopupContainer: (node) => node.parentNode,
    },
    ifShow: ({ values }) => !isDir(values.menuType),
  },
  {
    field: 'componentName',
    label: '组件名称',
    component: 'Input',
    componentProps: {
      placeholder: '请输入组件名称',
    },
    helpMessage: [
      '此处名称应和vue组件的name属性保持一致。',
      '组件名称不能重复，主要用于路由缓存功能。',
      '如果组件名称和vue组件的name属性不一致，则会导致路由缓存失效。',
    ],
    defaultValue: '',
    required: true,
  },
  {
    field: 'url',
    label: '访问路径',
    component: 'Input',
    required: true,
    ifShow: ({ values }) => values.menuType !== 2,
  },
  {
    field: 'component',
    label: '前端组件',
    component: 'Input',
    componentProps: {
      placeholder: '请输入前端组件',
    },
    defaultValue: 'layouts/default/index',
    required: true,
  },
  {
    field: 'frameSrc',
    label: 'Iframe地址',
    component: 'Input',
    rules: [
      { required: true, message: '请输入Iframe地址' },
      { type: 'url', message: '请输入正确的url地址' },
    ],
    ifShow: ({ values }) => values.component === ComponentTypes.IFrame,
  },
  {
    field: 'redirect',
    label: '默认跳转地址',
    component: 'Input',
    ifShow: ({ values }) => isDir(values.menuType),
  },
  {
    field: 'icon',
    label: '菜单图标',
    component: 'IconPicker',
  },
  {
    field: 'sortNo',
    label: '排序',
    component: 'InputNumber',
    defaultValue: 1,
  },
  {
    field: 'hidden',
    label: '隐藏路由',
    component: 'Switch',
    defaultValue: 0,
    componentProps: {
      checkedChildren: '是',
      unCheckedChildren: '否',
    },
  },
  {
    field: 'hideTab',
    label: '隐藏Tab',
    component: 'Switch',
    defaultValue: 0,
    componentProps: {
      checkedChildren: '是',
      unCheckedChildren: '否',
    },
  },
  {
    field: 'keepAlive',
    label: '缓存路由',
    component: 'Switch',
    defaultValue: false,
    componentProps: {
      checkedChildren: '是',
      unCheckedChildren: '否',
    },
  },
  {
    field: 'fixedTab',
    label: '聚合路由',
    component: 'Switch',
    defaultValue: false,
    componentProps: {
      checkedChildren: '是',
      unCheckedChildren: '否',
    },
  },
];
