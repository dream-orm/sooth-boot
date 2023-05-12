import { isObject, isString } from '/@/utils/is';
import { TipEnum } from '/@/enums/tipEnum';
import { h, unref } from 'vue';
import { useMessage } from '/@/hooks/web/useMessage';
import { useTipSetting } from '/@/hooks/setting/useTipSetting';
const DATE_TIME_FORMAT = 'YYYY-MM-DD HH:mm:ss';
const { createMessage, createConfirm, createErrorModal, createSuccessModal, notification } =
  useMessage();
export function joinTimestamp<T extends boolean>(
  join: boolean,
  restful: T,
): T extends true ? string : object;

export function joinTimestamp(join: boolean, restful = false): string | object {
  if (!join) {
    return restful ? '' : {};
  }
  const now = new Date().getTime();
  if (restful) {
    return `?_t=${now}`;
  }
  return { _t: now };
}

/**
 * @description: Format request parameter time
 */
export function formatRequestDate(params: Recordable) {
  if (Object.prototype.toString.call(params) !== '[object Object]') {
    return;
  }

  for (const key in params) {
    const format = params[key]?.format ?? null;
    if (format && typeof format === 'function') {
      params[key] = params[key].format(DATE_TIME_FORMAT);
    }
    if (isString(key)) {
      const value = params[key];
      if (value) {
        try {
          params[key] = isString(value) ? value.trim() : value;
        } catch (error: any) {
          throw new Error(error);
        }
      }
    }
    if (isObject(params[key])) {
      formatRequestDate(params[key]);
    }
  }
}

export function success(message: string, successTip: TipEnum | null | undefined) {
  if (!successTip) {
    const tipSetting = useTipSetting();
    successTip = unref(tipSetting.getSuccessTip);
  }
  switch (successTip) {
    case TipEnum.MESSAGE:
      createMessage.success(message);
      break;
    case TipEnum.CONFIRM:
      createConfirm({
        iconType: 'success',
        title: () => h('span', '成功提示'),
        content: () => h('span', message),
      });
      break;
    case TipEnum.MODAL:
      createSuccessModal({ title: '成功提示', content: message });
      break;
    case TipEnum.NOTIFICATION:
      notification.success({ message });
      break;
  }
}

export function error(message: string, errorTip?: TipEnum | null | undefined) {
  if (!errorTip) {
    const tipSetting = useTipSetting();
    errorTip = unref(tipSetting.getErrorTip);
  }
  if (errorTip) {
    switch (errorTip) {
      case TipEnum.MESSAGE:
        createMessage.error(message);
        break;
      case TipEnum.CONFIRM:
        createConfirm({
          iconType: 'error',
          title: () => h('span', '错误提示'),
          content: () => h('span', message),
        });
        break;
      case TipEnum.MODAL:
        createErrorModal({ title: '错误提示', content: message });
        break;
      case TipEnum.NOTIFICATION:
        notification.error({ message });
        break;
    }
  }
}
