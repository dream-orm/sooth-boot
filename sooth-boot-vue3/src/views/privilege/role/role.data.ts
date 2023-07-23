import { FormSchema } from '/@/components/Table';
export const columns = [
  {
    title: '名称',
    dataIndex: 'roleName',
  },
  {
    title: '编码',
    dataIndex: 'roleCode',
  },
  {
    title: '部门',
    dataIndex: ['dict', 'deptId'],
  },
  {
    title: '备注',
    dataIndex: 'description',
  },
];
/**
 * 角色用户Columns
 */
export const userColumns = [
  {
    title: '账号',
    dataIndex: 'username',
  },
  {
    title: '姓名',
    dataIndex: 'realname',
  },
];
export const searchFormSchema: FormSchema[] = [
  {
    field: 'roleName',
    label: '名称',
    component: 'Input',
    colProps: { span: 8 },
  },
  {
    field: 'roleCode',
    label: '编码',
    component: 'Input',
    colProps: { span: 8 },
  },
];
/**
 * 角色用户搜索form
 */
export const searchUserFormSchema: FormSchema[] = [
  {
    field: 'username',
    label: '账号',
    component: 'Input',
    colProps: { span: 8 },
  },
  {
    field: 'realname',
    label: '姓名',
    component: 'Input',
    colProps: { span: 8 },
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
    field: 'roleName',
    label: '名称',
    required: true,
    component: 'Input',
  },
  {
    field: 'roleCode',
    label: '编码',
    required: true,
    component: 'Input',
    dynamicDisabled: ({ values }) => {
      return !!values.id;
    },
  },
  {
    label: '部门',
    field: 'deptId',
    required: true,
    component: 'Input',
    slot: 'dept',
  },
  {
    label: '备注',
    field: 'description',
    component: 'InputTextArea',
  },
];

export const dataFormSchema: FormSchema[] = [
  {
    field: 'id',
    label: '',
    component: 'Input',
    show: false,
  },
  {
    field: 'roleId',
    label: '',
    component: 'Input',
    show: false,
  },
  {
    field: 'roleName',
    label: '名称',
    required: true,
    component: 'Input',
    dynamicDisabled: () => {
      return true;
    },
  },
  {
    field: 'roleCode',
    label: '编码',
    required: true,
    component: 'Input',
    dynamicDisabled: () => {
      return true;
    },
  },
  {
    label: '数据范围',
    field: 'permissionCode',
    required: true,
    component: 'DictSelect',
    componentProps: {
      code: 'data_permission',
      type: 'select',
      stringToNumber: true,
    },
  },
  {
    label: '',
    field: 'deptIds',
    component: 'Input',
    slot: 'dept',
  },
];
