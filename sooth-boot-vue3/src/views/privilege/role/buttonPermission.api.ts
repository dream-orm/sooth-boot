import { BaseApi } from '/@/api/base/baseApi';
import { defHttp } from '/@/utils/http/axios';
class ButtonPermissionApi extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
}
export const buttonPermissionApi = new ButtonPermissionApi('/sys/buttonPermission');

enum Api {
  saveButtonPermission = '/sys/buttonPermission/saveButtonPermission',
}
/**
 * 保存按钮权限
 */
export const saveButtonPermission = (roleId, params) =>
  defHttp.post({ url: Api.saveButtonPermission + '/' + roleId, params });
