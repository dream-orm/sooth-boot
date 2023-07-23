import { BasicColumn } from '/@/components/Table';
import { FormSchema } from '/@/components/Table';
import { render } from '/@/utils/common/renderUtils';
export const columns: BasicColumn[] = [
  {
    title: '基类全类名',
    dataIndex: 'className',
    width: 400,
  },
  {
    title: '基类字段',
    dataIndex: 'fields',
    customRender: (opt) => render.renderArray(opt),
  },
];

export const searchFormSchema: FormSchema[] = [
  {
    label: '基类全类名',
    field: 'className',
    component: 'Input',
    colProps: { span: 6 },
  },
];

export const formSchema: FormSchema[] = [
  {
    label: '',
    field: 'id',
    component: 'Input',
    show: false,
  },
  {
    label: '基类全类名',
    field: 'className',
    required: true,
    component: 'Input',
    dynamicDisabled: ({ values }) => {
      return !!values.id;
    },
  },
  {
    label: '基类字段',
    field: 'fields',
    component: 'Select',
    componentProps: {
      mode: 'tags',
    },
  },
];
