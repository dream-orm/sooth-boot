import { BasicColumn } from '/@/components/Table';
import { FormSchema } from '/@/components/Table';

export const columns: BasicColumn[] = [
  {
    title: '部门名称',
    dataIndex: 'deptName',
  },
  {
    title: '部门编码',
    dataIndex: 'deptCode',
  },
  {
    title: '备注',
    dataIndex: 'description',
  },
];

export const searchFormSchema: FormSchema[] = [
  {
    field: 'deptName',
    label: '部门名称',
    component: 'Input',
    colProps: { span: 6 },
  },
  {
    field: 'deptCode',
    label: '部门编码',
    component: 'Input',
    colProps: { span: 6 },
  },
];

export const formSchema: FormSchema[] = [
  {
    field: 'deptId',
    label: 'deptId',
    component: 'Input',
    show: false,
  },
  {
    field: 'deptName',
    label: '部门名称',
    component: 'Input',
    required: true,
  },
  {
    field: 'deptCode',
    label: '部门编码',
    component: 'Input',
    required: true,
    dynamicDisabled: ({ values }) => {
      return !!values.deptId;
    },
  },
  {
    field: 'parentId',
    label: '上级部门',
    component: 'TreeSelect',
    componentProps: {
      fieldNames: {
        label: 'deptName',
        key: 'deptId',
        value: 'deptId',
      },
    },
  },
  {
    field: 'orderNo',
    label: '排序',
    defaultValue: 1,
    component: 'InputNumber',
    required: true,
  },
  {
    label: '备注',
    field: 'description',
    component: 'InputTextArea',
  },
];
