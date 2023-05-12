import { defHttp } from '/@/utils/http/axios';
import { BaseApi } from '/@/api/base/baseApi';
class FieldTypeApi extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
  listAttrType = (params) => defHttp.get({ url: this.requestUrl + '/listAttrType', params });

  initTypeField = (params?) => {
    return defHttp.post({ url: this.requestUrl + '/init', params });
  };
}
export const fieldTypeApi = new FieldTypeApi('/sys/gen/fieldType');
