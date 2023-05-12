import { defHttp } from '/@/utils/http/axios';
import { BaseApi } from '/@/api/base/baseApi';

class UserApi extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
  saveUser = (params) => defHttp.post({ url: this.requestUrl + '/saveUser', params });

  editUser = (params) => defHttp.post({ url: this.requestUrl + '/editUser', params });

  updatePassword = (params) => defHttp.put({ url: this.requestUrl + '/updatePassword', params });

  updateBasicInfo = (params) => defHttp.put({ url: this.requestUrl + '/updateBasicInfo', params });
}
export const userApi = new UserApi('/sys/user');
