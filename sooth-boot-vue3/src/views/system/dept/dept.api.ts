import { defHttp } from '/@/utils/http/axios';
import { BaseApi } from '/@/api/base/baseApi';

class DeptApi extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
}

export const deptApi = new DeptApi('/sys/dept');

enum Api {
  listTree = '/sys/dept/listTree',
}

export const listTree = (params) => {
  return defHttp.get({ url: Api.listTree, params });
};
