<template>
  <LoginFormTitle v-show="getShow" class="enter-x" />
  <Form
    class="p-4 enter-x"
    :model="formData"
    :rules="getFormRules"
    ref="formRef"
    v-show="getShow"
    @keypress.enter="handleLogin"
  >
    <FormItem name="account" class="enter-x">
      <Input
        size="large"
        v-model:value="formData.account"
        placeholder="账号"
        class="fix-auto-fill"
      />
    </FormItem>
    <FormItem name="password" class="enter-x">
      <InputPassword
        size="large"
        visibilityToggle
        v-model:value="formData.password"
        placeholder="密码"
      />
    </FormItem>
    <!--验证码-->
    <ARow class="enter-x">
      <ACol :span="12">
        <FormItem name="inputCode" class="enter-x">
          <Input
            size="large"
            v-model:value="formData.inputCode"
            placeholder="验证码"
            style="min-width: 100px"
          />
        </FormItem>
      </ACol>
      <ACol :span="8">
        <FormItem :style="{ 'text-align': 'right', 'margin-left': '20px' }" class="enter-x">
          <img
            v-if="randCodeData.requestCodeSuccess"
            style="margin-top: 2px; max-width: initial"
            :src="randCodeData.randCodeImage"
            @click="handleChangeCheckCode"
          />
          <img
            v-else
            style="margin-top: 2px; max-width: initial"
            src="../../../assets/images/checkcode.png"
            @click="handleChangeCheckCode"
          />
        </FormItem>
      </ACol>
    </ARow>
    <ARow class="enter-x">
      <ACol :span="12">
        <FormItem>
          <!-- No logic, you need to deal with it yourself -->
          <Checkbox v-model:checked="rememberMe" size="small"> 记住我 </Checkbox>
        </FormItem>
      </ACol>
      <ACol :span="12">
        <FormItem :style="{ 'text-align': 'right' }">
          <!-- No logic, you need to deal with it yourself -->
          <Button type="link" size="small" @click="setLoginState(LoginStateEnum.RESET_PASSWORD)">
            忘记密码？
          </Button>
        </FormItem>
      </ACol>
    </ARow>

    <FormItem class="enter-x">
      <Button type="primary" size="large" block @click="handleLogin" :loading="loading">
        登录
      </Button>
    </FormItem>
    <ARow class="enter-x">
      <ACol :md="8" :xs="24">
        <Button block @click="setLoginState(LoginStateEnum.MOBILE)"> 手机登录 </Button>
      </ACol>
      <ACol :md="8" :xs="24" class="!my-2 !md:my-0 xs:mx-0 md:mx-2">
        <Button block @click="setLoginState(LoginStateEnum.QR_CODE)"> 二维码登录 </Button>
      </ACol>
      <ACol :md="6" :xs="24">
        <Button block @click="setLoginState(LoginStateEnum.REGISTER)"> 注册 </Button>
      </ACol>
    </ARow>
  </Form>
</template>
<script lang="ts" setup>
  import { reactive, ref, unref, computed, onMounted } from 'vue';
  import Cookies from 'js-cookie';
  import { Checkbox, Form, Input, Row, Col, Button } from 'ant-design-vue';
  import LoginFormTitle from './LoginFormTitle.vue';
  import { getCodeInfo } from '/@/api/sys/user';
  import { useUserStore } from '/@/store/modules/user';
  import { LoginStateEnum, useLoginState, useFormRules, useFormValid } from './useLogin';

  const LOGIN_INFO = 'loginInfo';
  const ACol = Col;
  const ARow = Row;
  const FormItem = Form.Item;
  const InputPassword = Input.Password;
  const userStore = useUserStore();

  const { setLoginState, getLoginState } = useLoginState();
  const { getFormRules } = useFormRules();

  const formRef = ref();
  const loading = ref(false);
  const rememberMe = ref(false);

  const formData = reactive({
    account: 'admin',
    password: '123456',
    inputCode: '',
  });
  onMounted(() => {
    const loginInfo = Cookies.get(LOGIN_INFO);
    if (loginInfo) {
      try {
        const loginInfoObject = JSON.parse(loginInfo);
        formData.account = loginInfoObject.account;
        formData.password = loginInfoObject.password;
        rememberMe.value = !!loginInfoObject.rememberMe;
      } catch (e) {}
    }
  });
  const randCodeData = reactive({
    randCodeImage: '',
    requestCodeSuccess: false,
    checkKey: 0,
  });
  const { validForm } = useFormValid(formRef);

  //onKeyStroke('Enter', handleLogin);

  const getShow = computed(() => unref(getLoginState) === LoginStateEnum.LOGIN);

  async function handleLogin() {
    const data = await validForm();
    if (!data) return;
    try {
      loading.value = true;
      await userStore.login({
        password: data.password,
        username: data.account,
        captcha: data.inputCode,
        checkKey: randCodeData.checkKey,
      });
      if (rememberMe.value) {
        Cookies.set(
          LOGIN_INFO,
          JSON.stringify({ account: data.account, password: data.password, rememberMe: true }),
          { expires: 1 },
        );
      } else {
        Cookies.remove(LOGIN_INFO);
      }
    } catch (error) {
      handleChangeCheckCode();
    } finally {
      loading.value = false;
    }
  }

  function handleChangeCheckCode() {
    formData.inputCode = '';
    randCodeData.checkKey = new Date().getTime();
    getCodeInfo(randCodeData.checkKey).then((res) => {
      randCodeData.randCodeImage = res;
      randCodeData.requestCodeSuccess = true;
    });
  }

  onMounted(() => {
    handleChangeCheckCode();
  });
</script>
