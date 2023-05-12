import { defHttp } from '/@/utils/http/axios';
import { BaseApi } from '/@/api/base/baseApi';

class UserRoleApi extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
}

export const userRoleApi = new UserRoleApi('/sys/userRole');

enum Api {
  saveUserRole = '/sys/userRole/saveUserRole',
  getUserByRoleId = '/sys/userRole/getUserByRoleId',
  getRoleByUserId = '/sys/userRole/getRoleByUserId',
}

export const saveUserRole = (params) => {
  return defHttp.post({ url: Api.saveUserRole, params });
};

export const getUserByRoleId = (params) => {
  if (!params.roleId) {
    return [];
  }
  return defHttp.get({ url: Api.getUserByRoleId, params });
};

export const getRoleByUserId = (params) => {
  return defHttp.get({ url: Api.getRoleByUserId, params });
};
