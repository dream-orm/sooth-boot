import { BaseApi } from '/@/api/base/baseApi';
import { defHttp } from '/@/utils/http/axios';
class ButtonApi extends BaseApi {
  constructor(requestUrl) {
    super(requestUrl);
  }
  /**
   * 保存按钮
   */
  saveButton = (menuId, params) =>
    defHttp.post({ url: this.requestUrl + '/saveButton/' + menuId, params });
  /**
   * 查询菜单按钮
   */
  listMenuButtonTree = () => defHttp.get({ url: this.requestUrl + '/listMenuButtonTree' });
}
export const buttonApi = new ButtonApi('/sys/button');
