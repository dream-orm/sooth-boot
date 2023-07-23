import { BasicColumn, FormSchema } from '/@/components/Table';
import { render } from '/@/utils/common/renderUtils';
import {DescItem} from "/@/components/Description";
import {h} from "vue";
import {CodeEditor} from "/@/components/CodeEditor";
export const columns: BasicColumn[] = [
  {
    title: '业务模块',
    dataIndex: 'bizModule',
  },
  {
    title: '操作描述',
    dataIndex: 'description',
  },
  {
    title: '操作人名称',
    dataIndex: 'realname',
  },
  {
    title: 'IP',
    dataIndex: 'ip',
  },
  {
    title: '耗时(毫秒)',
    dataIndex: 'costTime',
  },
  {
    title: '操作时间',
    dataIndex: 'createTime',
  },
  {
    title: '日志类型',
    dataIndex: ['dict', 'logType'],
  },
  {
    title: '状态',
    dataIndex: 'status',
    customRender: ({ value }) => render.renderDict('success_status', value),
  },
];

export const searchFormSchema: FormSchema[] = [
  {
    field: 'keyWord',
    label: '搜索日志',
    component: 'Input',
    componentProps: {
      placeholder: '请输入业务模块/操作描述/操作人名称',
    },
    colProps: { span: 5 },
  },
  {
    field: 'logType',
    component: 'DictSelect',
    label: '日志类型',
    componentProps: {
      code: 'log_type',
      compType: 'select',
      mode: 'multiple',
    },
    colProps: {
      span: 4,
    },
  },
  {
    field: 'status',
    component: 'DictSelect',
    label: '状态',
    componentProps: {
      code: 'success_status',
      compType: 'select',
      mode: 'multiple',
    },
    colProps: {
      span: 4,
    },
  },
  {
    field: 'createTime',
    component: 'RangePicker',
    label: '操作时间',
    componentProps: {
      valueType: 'Date',
    },
    colProps: {
      span: 4,
    },
  },
];

export const getSchema=(record)=>{
  const schema: DescItem[] = [
    {
      field: 'bizModule',
      label: '业务模块',
    },
    {
      field: 'description',
      label: '操作描述',
    },
    {
      field: 'username',
      label: '操作人账号',
    },
    {
      field: 'realname',
      label: '操作人名称',
    },
    {
      field: 'ip',
      label: 'IP',
    },
    {
      field: 'costTime',
      label: '耗时(毫秒)',
    },
    {
      field: 'logType',
      label: '日志类型',
      render: (val, data) => {
        if (data && data.dict) {
          return data.dict.logType;
        } else {
          return val;
        }
      },
    },
    {
      field: 'status',
      label: '状态',
      render: (val, data) => {
        if (data && data.dict) {
          return data.dict.status;
        } else {
          return val;
        }
      },
    },
    {
      field: 'requestType',
      label: '请求类型',
    },
    {
      field: 'method',
      label: '请求方法',
    },
    {
      field: 'requestUrl',
      label: '请求地址',
    },
    {
      field: 'userAgent',
      label: '操作设备',
    },
    {
      field: 'requestParam',
      label: '请求参数',
    },
    {
      field: 'createTime',
      label: '操作时间',
    },
  ];
  if (record.status > 0) {
    const errorSchema: DescItem[] = [
      {
        field: 'message',
        label: '异常信息',
      },
      {
        field: 'exceptionClass',
        label: '异常类名',
      },
      {
        field: 'stackTrace',
        label: '异常详情',
        render: (val) => {
          if (!val) {
            val = '';
          }
          return h(CodeEditor, { value: val, readonly: true });
        },
      },
    ];
    schema.push(...errorSchema);
  }
  return schema;
};
