import { BaseApi } from '/@/api/base/baseApi';
class DataPermissionApi extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
}
export const dataPermissionApi = new DataPermissionApi('/sys/dataPermission');
