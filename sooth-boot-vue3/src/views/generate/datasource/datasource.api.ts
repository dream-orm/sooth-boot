import { defHttp } from '/@/utils/http/axios';
import { BaseApi } from '/@/api/base/baseApi';
class DataSourceApi extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
  testConnection = (params) => {
    return defHttp.post({ url: this.requestUrl + '/testConnection', params });
  };
  listLabel = () => {
    return defHttp.get({ url: this.requestUrl + '/listLabel' });
  };
}
export const datasourceApi = new DataSourceApi('/sys/dataSource');
