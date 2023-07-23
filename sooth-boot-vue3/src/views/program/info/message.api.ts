import { BaseApi } from '/@/api/base/baseApi';
import { defHttp } from '/@/utils/http/axios';
class DictItemApi extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
}
export const listMachineName = (params) =>
  defHttp.get({ url: "/program/messages/listMachineName", params });
export const listProgramName = (params) =>
  defHttp.get({ url: "/program/messages/listProgramName", params });

export const dictItemApi = new DictItemApi('/program/messages');
