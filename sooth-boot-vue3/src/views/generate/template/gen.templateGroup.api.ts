import { BaseApi } from '/@/api/base/baseApi';
import { defHttp } from '/@/utils/http/axios';
class TemplateGroupApi extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
  groupList = (params) => defHttp.get({ url: this.requestUrl + '/groupList', params });
}
export const templateGroupApi = new TemplateGroupApi('/sys/gen/templateGroup');
