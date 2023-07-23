import { defHttp } from '/@/utils/http/axios';
import { BaseApi } from '/@/api/base/baseApi';
class DictApi extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
}
export const listMachineName = (params) =>
  defHttp.get({ url: "/program/info/listMachineName", params });
export const listProgramName = (params) =>
  defHttp.get({ url: "/program/info/listProgramName", params });
export const dictApi = new DictApi('/program/info');
