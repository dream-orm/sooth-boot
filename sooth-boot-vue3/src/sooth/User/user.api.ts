import { defHttp } from '/@/utils/http/axios';
enum Api {
  pageUser = '/sys/dept/page',
}

export const pageUser = (params) => {
  return defHttp.get({ url: Api.pageUser, params });
};
