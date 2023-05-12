import { defHttp } from '/@/utils/http/axios';
import { BaseApi } from '/@/api/base/baseApi';

class GenCodeApi extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
  getTableList = (params) => defHttp.get({ url: this.requestUrl + '/getTableList', params });

  tableImport = (datasourceId: Number, tableNameList: Array<String>) =>
    defHttp.post({
      url: this.requestUrl + '/' + datasourceId + '/tableImport',
      params: tableNameList,
    });

  getTableFieldList = (params) =>
    defHttp.get({ url: this.requestUrl + '/getTableFieldList', params });

  preview = (params) => defHttp.get({ url: this.requestUrl + '/preview', params });

  generate = (params) =>
    defHttp.post(
      { url: this.requestUrl + '/generate', params, responseType: 'blob' },
      { isTransformResponse: false },
    );
}
export const genCodeApi = new GenCodeApi('/sys/gen/code');
