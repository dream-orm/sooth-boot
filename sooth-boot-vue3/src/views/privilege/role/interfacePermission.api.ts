import { defHttp } from '/@/utils/http/axios';
enum Api {
  listInterfacePermissionTree = '/sys/interfacePermission/listInterfacePermissionTree',
  saveInterfacePermission = '/sys/interfacePermission/saveInterfacePermission',
  getPermissions = '/sys/interfacePermission/getPermissions',
}

export const listInterfacePermissionTree = () =>
  defHttp.get({ url: Api.listInterfacePermissionTree });

export const getPermissions = (params) => defHttp.get({ url: Api.getPermissions, params });

/**
 * 保存接口权限
 */
export const saveInterfacePermission = (roleId, params) =>
  defHttp.post({ url: Api.saveInterfacePermission + '/' + roleId, params });
