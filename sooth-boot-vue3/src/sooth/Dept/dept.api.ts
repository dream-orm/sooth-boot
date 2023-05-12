import { defHttp } from '/@/utils/http/axios';

enum Api {
  listTree = '/sys/dept/listTree',
}

export const listTree = (params) => {
  return defHttp.get({ url: Api.listTree, params });
};
