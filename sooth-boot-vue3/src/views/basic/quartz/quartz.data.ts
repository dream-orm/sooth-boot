import { BasicColumn, FormSchema } from '/@/components/Table';
import { render } from '/@/utils/common/renderUtils';

export const columns: BasicColumn[] = [
  {
    title: '任务名',
    dataIndex: 'name',
  },
  {
    title: 'cron表达式',
    dataIndex: 'cron',
  },
  {
    title: '描述',
    dataIndex: 'description',
  },
  {
    title: '状态',
    dataIndex: 'status',
    customRender: ({ value }) => {
      return render.renderDict('run_status', value);
    },
  },
];

export const searchFormSchema: FormSchema[] = [
  {
    field: 'name',
    label: '任务名',
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
    label: '任务名',
    component: 'Input',
    required: true,
  },
  {
    field: 'cron',
    label: 'Cron表达式',
    required: true,
    component: 'Input',
    slot: 'cron',
  },
  {
    field: 'parameter',
    label: '参数',
    required: false,
    component: 'InputTextArea',
  },
  {
    field: 'description',
    label: '描述',
    required: false,
    component: 'InputTextArea',
  },
];
