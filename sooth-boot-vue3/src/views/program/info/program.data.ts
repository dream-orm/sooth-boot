import { BasicColumn } from '/@/components/Table';
import { FormSchema } from '/@/components/Table';
import { render } from '/@/utils/common/renderUtils';
import { listMachineName,listProgramName } from './message.api';
export const columns: BasicColumn[] = [
  {
    title: '机器名称',
    dataIndex: 'machineName',
  },
  {
    title: '程序名称',
    dataIndex: 'programName',
  },
  {
    title: '截止日期',
    dataIndex: 'deadline',
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
    field: 'machineName',
    label: '机器名称',
    component: 'Input',
    componentProps: {
      readOnly: true,
      allowClear: false
    },
  },
  {
    field: 'programName',
    label: '程序名称',
    component: 'Input',
    componentProps: {
      readOnly: true,
      allowClear: false
    },
  },
  {
    field: 'status',
    label: '消息类别',
    component: 'Input',
    componentProps: {
      readOnly: true,
      allowClear: false
    },
  },
  {
    field: 'createTime',
    label: '创建时间',
    component: 'Input',
    componentProps: {
      readOnly: true,
      allowClear: false
    },
  },
  ];
export const searchFormSchema: FormSchema[] = [
  {
    field: 'machineName',
    component: 'ApiSelect',
    label: '机器名称',
    componentProps: {
      api: listMachineName,
      labelField: 'machineName',
      valueField: 'machineName',
      mode: 'multiple'
    },
    colProps: {
      span: 8,
    },
  },
  {
    field: 'programName',
    component: 'ApiSelect',
    label: '程序名称',
    componentProps: {
      api: listProgramName,
      labelField: 'programName',
      valueField: 'programName',
      mode: 'multiple'
    },
    colProps: {
      span: 8,
    },
  },
  {
    field: 'message',
    label: '消息内容',
    component: 'Input',
    componentProps: {
      placeholder: '请输入消息内容',
    },
    colProps: { span: 8 },
  },
  {
    field: 'status',
    component: 'DictSelect',
    label: '消息类别',
    componentProps: {
      code: 'message_type',
      compType: 'select',
      mode: 'multiple',
    },
    colProps: {
      span: 8,
    },
  },
  {
    field: 'createTime',
    component: 'RangePicker',
    label: '创建时间',
    componentProps: {
      valueType: 'Date',
    },
    colProps: {
      span: 8,
    },
  },
];

export const dictItemColumns: BasicColumn[] = [
  {
    title: '机器名称',
    dataIndex: 'machineName',
    width: 150,
  },
  {
    title: '程序名称',
    dataIndex: 'programName',
    width: 150,
  },
  {
    title: '消息类别',
    dataIndex: 'status',
    width: 150,
    customRender:({record,value})=>{
      return render.renderDict('message_type', record.status, value);
    }
  },
  {
    title: '创建时间',
    dataIndex: 'createTime',
    width: 200,
  },
  {
    title: '消息内容',
    dataIndex: 'message',
  }
];
