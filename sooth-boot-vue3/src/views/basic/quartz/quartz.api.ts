import { BaseApi } from '/@/api/base/baseApi';
import { defHttp } from '/@/utils/http/axios';
class QuartzApi extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
  nowExecute = (params) => {
    return defHttp.get({ url: this.requestUrl + '/nowExecute', params });
  };
  scheduleExecute = (params) => {
    return defHttp.get({ url: this.requestUrl + '/scheduleExecute', params });
  };
  stopExecute = (params) => {
    return defHttp.get({ url: this.requestUrl + '/stopExecute', params });
  };
}
export const quartzApi = new QuartzApi('/sys/quartz');
