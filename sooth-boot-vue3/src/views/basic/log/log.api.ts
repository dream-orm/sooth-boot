import { BaseApi } from '/@/api/base/baseApi';
class LogApi extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
}
export const logApi = new LogApi('/sys/log');
