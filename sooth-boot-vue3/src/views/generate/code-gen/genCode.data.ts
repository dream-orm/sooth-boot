import { BasicColumn } from '/@/components/Table';
import { FormSchema } from '/@/components/Table';
import { fieldTypeApi } from '/@/views/generate/field-type/fieldType.api';
import { dictApi } from '/@/views/basic/dict/dict.api';
import { templateGroupApi } from '/@/views/generate/template/gen.templateGroup.api';
import { baseClassApi } from '/@/views/generate/base-class/baseClass.api';
import { dictItemApi } from '/@/views/basic/dict/dict-item.api';
import { ref,unref } from 'vue';

const showTypes = ref([]);
const searchTypes = ref([]);
const controlTypes = ref([]);
const validTypes = ref([]);
const fieldTypes = ref([]);
const dictTypes = ref([]);
dictItemApi.dictItemCode('show_type').then(res => showTypes.value=res);
dictItemApi.dictItemCode('search_type').then(res => searchTypes.value=res);
dictItemApi.dictItemCode('control_type').then(res => controlTypes.value=res);
dictItemApi.dictItemCode('valid_type').then(res => validTypes.value=res);
fieldTypeApi.listAttrType({}).then(res => fieldTypes.value=res);
dictApi.list({}).then(res => dictTypes.value=res);

export const columns: BasicColumn[] = [
  {
    title: '表名',
    dataIndex: 'tableName',
  },
  {
    title: '类名',
    dataIndex: 'className',
  },
  {
    title: '表说明',
    dataIndex: 'tableComment',
  },
  ];

export const searchFormSchema: FormSchema[] = [
  {
    label: '表名称',
    field: 'tableName',
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
    label: '表名',
    field: 'tableName',
    required: true,
    component: 'Input',
    dynamicDisabled: true,
  },
  {
    label: '表描述',
    field: 'tableComment',
    required: true,
    component: 'Input',
  },
  ];

export const formConfirmSchema: FormSchema[] = [
  {
    label: '',
    field: 'id',
    component: 'Input',
    show: false,
  },
  {
    label: '表名',
    field: 'tableName',
    required: true,
    component: 'Input',
    dynamicDisabled: true,
  },
  {
    label: '表备注',
    field: 'tableComment',
    required: true,
    component: 'Input',
  },

  {
    label: '类名',
    field: 'className',
    required: true,
    component: 'Input',
  },
  {
    label: '模块名',
    field: 'moduleName',
    required: true,
    component: 'Input',
  },
  {
    label: '业务名',
    field: 'entityName',
    required: true,
    component: 'Input',
  },
  {
    label: '包名',
    field: 'packageName',
    required: true,
    component: 'Input',
  },
  {
    label: '模板',
    field: 'templateIds',
    required: true,
    component: 'ApiSelect',
    componentProps: {
      api: templateGroupApi.groupList,
      mode: 'multiple',
    },
  },
  {
    label: '基类',
    field: 'baseId',
    component: 'ApiSelect',
    componentProps: {
      api: baseClassApi.list,
      labelField: 'className',
      valueField: 'id',
    },
  },
  ];

export const genTableImportColumns: BasicColumn[] = [
  {
    title: '表名称',
    dataIndex: 'tableName',
  },
  {
    title: '表备注',
    dataIndex: 'tableComment',
  },
  ];

export const genTableColumns: BasicColumn[] = [
  {
    title: '字段名称',
    dataIndex: 'columnName',
  },
  {
    title: '字段类型',
    dataIndex: 'columnType',
  },
  {
    title: '字段备注',
    dataIndex: 'columnComment',
    editRow: true,
  },
  {
    title: '属性名',
    dataIndex: 'attrName',
    editRow: true,
  },
  {
    title: '属性类型',
    dataIndex: 'attrType',
    editRow: true,
    editComponent: 'Select',
    editComponentProps: {
      class: 'w-full',
      options: unref(fieldTypes),
      fieldNames:{label:'attrType',value:'attrType'}
    },
  },
  {
    title: '控件类型',
    dataIndex: 'controlType',
    editRow: true,
    editComponent: 'Select',
    editComponentProps: {
      class: 'w-full',
      placeholder: '无',
      options: unref(controlTypes),
      fieldNames:{label:'name'}
    },
  },
  {
    title: '查询方式',
    dataIndex: 'searchType',
    editRow: true,
    editComponent: 'Select',
    editComponentProps: {
      class: 'w-full',
      placeholder: '无',
      allowClear: true,
      options: unref(searchTypes),
      fieldNames:{label:'name'}
    },
  },
  {
    title: '列表页',
    dataIndex: 'showListType',
    editRow: true,
    editComponent: 'Select',
    editComponentProps: {
      class: 'w-full',
      placeholder: '无',
      allowClear: true,
      options: unref(showTypes),
      fieldNames:{label:'name'}
    },
  },
  {
    title: '编辑页',
    dataIndex: 'showEditType',
    editRow: true,
    editComponent: 'Select',
    editComponentProps: {
      class: 'w-full',
      placeholder: '无',
      allowClear: true,
      options: unref(showTypes),
      fieldNames:{label:'name'}
    },
  },
  {
    title: '校验',
    dataIndex: 'validType',
    editRow: true,
    editComponent: 'Select',
    editComponentProps: {
      class: 'w-full',
      placeholder: '无',
      showSearch: true,
      allowClear: true,
      options: unref(validTypes),
      fieldNames:{label:'name'}
    },
  },
  {
    title: '字典',
    dataIndex: 'dictCode',
    editRow: true,
    editComponent: 'Select',
    editComponentProps: {
      class: 'w-full',
      placeholder: '无',
      showSearch: true,
      allowClear: true,
      options: unref(dictTypes),
      fieldNames:{label:'name',value:'code'}
    },
  },
  {
    title: '主键',
    dataIndex: 'primaryPk',
    width: 100,
    editRow: true,
    editComponent: 'Checkbox',
  },
  ];