import { BasicColumn } from '/@/components/Table';
import { FormSchema } from '/@/components/Table';
import { roleApi } from '/@/views/privilege/role/role.api';
export const columns: BasicColumn[] = [
  {
    title: '账号',
    dataIndex: 'username',
  },
  {
    title: '昵称',
    dataIndex: 'realname',
  },
  {
    title: '性别',
    dataIndex: ['dict', 'sex'],
  },
  {
    title: '手机号',
    dataIndex: 'phone',
  },
];

export const searchFormSchema: FormSchema[] = [
  {
    field: 'username',
    label: '账号',
    component: 'Input',
    colProps: { span: 6 },
  },
  {
    field: 'realname',
    label: '昵称',
    component: 'Input',
    colProps: { span: 6 },
  },
  {
    field: 'phone',
    label: '手机号',
    component: 'Input',
    colProps: { span: 6 },
  },
];

export const formSchema: FormSchema[] = [
  {
    field: 'id',
    label: '',
    component: 'Input',
    show: false,
  },
  {
    field: 'username',
    label: '账号',
    component: 'Input',
    dynamicDisabled: ({ values }) => {
      return !!values.id;
    },
    rules: [
      {
        required: true,
      },
    ],
  },
  {
    field: 'realname',
    label: '昵称',
    component: 'Input',
    required: true,
  },
  {
    label: '角色',
    field: 'roleIdList',
    component: 'ApiSelect',
    componentProps: {
      api: roleApi.list,
      mode: 'multiple',
      labelField: 'roleName',
      valueField: 'id',
    },
    required: true,
  },
  {
    field: 'deptIdList',
    label: '部门',
    component: 'Input',
    required: true,
    slot: 'dept',
  },
  {
    label: '性别',
    field: 'sex',
    component: 'DictSelect',
    componentProps: {
      code: 'sex',
      stringToNumber: true,
    },
  },
  {
    label: '手机号码',
    field: 'phone',
    component: 'Input',
    dynamicRules: () => {
      return [{ pattern: /^1[3|4|5|7|8|9][0-9]\d{8}$/, message: '手机号码格式有误' }];
    },
  },
];
