/**
 * @description: Login interface parameters
 */
import { UserInfo } from '/#/store';

export interface LoginParams {
  username: string;
  password: string;
  captcha?: string;
  checkKey?: string | number;
}

export interface RoleInfo {
  roleName: string;
  value: string;
}

/**
 * @description: Login interface return value
 */
export interface LoginResultModel {
  token: string;
  userInfo: UserInfo;
}
