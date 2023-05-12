import { BasicColumn, FormSchema } from '/@/components/Table';
import { templateGroupApi } from './gen.templateGroup.api';
export const searchFormSchema: FormSchema[] = [
  {
    field: 'name',
    label: '模板名称',
    component: 'Input',
    colProps: { span: 8 },
  },
];

export const columns: BasicColumn[] = [
  {
    title: '模板名称',
    dataIndex: 'name',
  },
  {
    title: '模板组名称',
    dataIndex: ['dict', 'groupId'],
  },
  {
    title: '文件名称',
    dataIndex: 'fileName',
  },
  {
    title: '备注',
    dataIndex: 'description',
  },
];
export const formGroupSchema: FormSchema[] = [
  {
    field: 'id',
    label: 'id',
    component: 'Input',
    show: false,
  },
  {
    field: 'name',
    label: '模板组名称',
    component: 'Input',
    required: true,
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
    label: '模板名称',
    component: 'Input',
    required: true,
  },
  {
    field: 'groupId',
    label: '模板分类',
    component: 'ApiSelect',
    componentProps: {
      api: templateGroupApi.list,
      labelField: 'name',
      valueField: 'id',
    },
    required: true,
  },
  {
    field: 'fileName',
    label: '文件名称',
    component: 'Input',
    required: true,
  },
];
