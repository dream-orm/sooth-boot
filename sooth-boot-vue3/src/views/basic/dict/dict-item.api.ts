import { BaseApi } from '/@/api/base/baseApi';
import { defHttp } from '/@/utils/http/axios';

class DictItemApi extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
  dictItemCode = (code) => defHttp.get({ url: Api.dictItemCode + '/' + code });
}

enum Api {
  dictItemCode = '/sys/dictItem',
}

export const dictItemApi = new DictItemApi('/sys/dictItem');
