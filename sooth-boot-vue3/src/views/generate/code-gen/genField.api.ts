import { BaseApi } from '/@/api/base/baseApi';

class GenFieldApi extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
}
export const genFieldApi = new GenFieldApi('/sys/gen/field');
