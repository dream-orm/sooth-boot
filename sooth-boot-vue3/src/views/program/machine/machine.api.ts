import { BaseApi } from '/@/api/base/baseApi';
class DictApi extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
}
export const dictApi = new DictApi('/program/info');
