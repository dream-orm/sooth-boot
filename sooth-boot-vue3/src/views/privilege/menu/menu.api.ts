import { defHttp } from '/@/utils/http/axios';
import { BaseApi } from '/@/api/base/baseApi';

class MenuApi extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
  listMenuTree = (params) => {
    return defHttp.get({ url: this.requestUrl + '/listMenuTree', params });
  };
}

export const menuApi = new MenuApi('/sys/menu');


