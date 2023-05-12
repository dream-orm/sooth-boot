import { BaseApi } from '/@/api/base/baseApi';
import { defHttp } from '/@/utils/http/axios';
class TemplateApi extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
  help = () => defHttp.get({ url: this.requestUrl + '/help' });
}
export const templateApi = new TemplateApi('/sys/gen/template');
