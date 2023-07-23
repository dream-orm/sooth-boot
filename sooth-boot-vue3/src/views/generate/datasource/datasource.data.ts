import { BasicColumn, FormSchema } from '/@/components/Table';

export const columns: BasicColumn[] = [
  {
    title: '数据源名称',
    dataIndex: 'name',
    width: 300,
  },
  {
    title: '用户名',
    dataIndex: 'username',
    width: 300,
  },
  {
    title: '数据源地址',
    dataIndex: 'url',
  },
];

export const searchFormSchema: FormSchema[] = [
  {
    field: 'name',
    label: '数据源名称',
    component: 'Input',
    colProps: { span: 6 },
  },
];

export const formSchema: FormSchema[] = [
  {
    field: 'id',
    label: 'id',
    component: 'Input',
    show: false,
  },
  {
    field: 'name',
    label: '名称',
    component: 'Input',
    required: true,
  },
  {
    field: 'url',
    label: 'URL',
    required: true,
    component: 'InputTextArea',
  },
  {
    field: 'username',
    label: '用户名',
    required: true,
    component: 'Input',
  },
  {
    field: 'password',
    label: '密码',
    required: true,
    component: 'InputPassword',
    slot: 'pwd',
  },
  {
    field: 'remark',
    label: '备注',
    component: 'InputTextArea',
  },
];
