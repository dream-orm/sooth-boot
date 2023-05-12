import { defHttp } from '/@/utils/http/axios';
import { BaseApi } from '/@/api/base/baseApi';

class UserDeptApi extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
  getDeptByUserId = (params) => {
    return defHttp.get({ url: this.requestUrl+'/getDeptByUserId', params });
  };
}

export const userDeptApi = new UserDeptApi('/sys/userDept');

