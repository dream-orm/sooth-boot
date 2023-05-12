import { defHttp } from '/@/utils/http/axios';
import { Modal } from 'ant-design-vue';

export class BaseApi {
  readonly requestUrl: string = '';
  constructor(requestUrl: string) {
    this.requestUrl = requestUrl;
  }
  /**
   * @param params
   */
  get = (params) => {
    return defHttp.get({ url: this.requestUrl + '/get', params });
  };
  /**
   * @param params
   */
  getOne = (params) => {
    return defHttp.get({ url: this.requestUrl + '/getOne', params });
  };
  /**
   * @param params
   */
  page = (params) => {
    return defHttp.get({ url: this.requestUrl + '/page', params });
  };
  /**
   *
   * @param params
   */
  list = (params) => {
    return defHttp.get({ url: this.requestUrl + '/list', params });
  };
  /**
   * @param params
   */
  save = (params) => {
    return defHttp.post({ url: this.requestUrl + '/save', params });
  };
  /**
   * @param params
   */
  postEdit = (params) => {
    return defHttp.post({ url: this.requestUrl + '/edit', params });
  };
  /**
   * @param params
   */
  putEdit = (params) => {
    return defHttp.put({ url: this.requestUrl + '/edit', params });
  };
  /**
   * @param params
   */
  saveOrEdit = (params, isUpdate) => {
    if (isUpdate) {
      return this.postEdit(params);
    } else {
      return this.save(params);
    }
  };
  /**
   * @param params
   */
  remove = (params) => {
    return defHttp.delete(
      { url: this.requestUrl + '/remove', data: params },
      { joinParamsToUrl: true },
    );
  };

  /**
   * @param params
   */
  removeBatch = (params, handleSuccess) => {
    Modal.confirm({
      title: '确认删除',
      content: '是否删除选中数据',
      okText: '确认',
      cancelText: '取消',
      onOk: () => {
        return defHttp
          .delete(
            { url: this.requestUrl + '/removeBatch', data: params },
            { joinParamsToUrl: true },
          )
          .then(() => {
            handleSuccess();
          });
      },
    });
  };
}
