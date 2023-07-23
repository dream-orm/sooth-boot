import { defHttp } from '/@/utils/http/axios';
import { LoginParams, LoginResultModel } from './model/userModel';
import { UserInfo } from '/#/store';

enum Api {
  Login = '/sys/login',
  Logout = '/sys/logout',
  GetUserInfo = '/sys/user/getUserInfo',
  getInputCode = '/sys/randomImage',
}

/**
 * @description: user login api
 */
export function loginApi(params: LoginParams) {
  return defHttp.post<LoginResultModel>({
    url: Api.Login,
    params,
  });
}

/**
 * @description: getUserInfo
 */
export function getUserInfo(): Promise<UserInfo> {
  return defHttp.get<UserInfo>({ url: Api.GetUserInfo });
}

export function doLogout() {
  return defHttp.get({ url: Api.Logout });
}

export function getCodeInfo(currdatetime) {
  const url = Api.getInputCode + `/${currdatetime}`;
  return defHttp.get({ url: url });
}
