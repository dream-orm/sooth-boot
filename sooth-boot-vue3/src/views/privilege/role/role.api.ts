import { defHttp } from '/@/utils/http/axios';
import { BaseApi } from '/@/api/base/baseApi';
class RoleApi extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
}
export const roleApi = new RoleApi('/sys/role');
enum Api {
  queryRolePermission = '/sys/menu/queryRolePermission',
  saveRolePermission = '/sys/menu/saveRolePermission',
}
/**
 * 查询角色权限
 */
export const queryRolePermission = (params) =>
  defHttp.get({ url: Api.queryRolePermission, params });
/**
 * 保存角色权限
 */
export const saveRolePermission = (params) => defHttp.post({ url: Api.saveRolePermission, params });
