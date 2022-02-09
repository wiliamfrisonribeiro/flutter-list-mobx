import 'dart:ffi';

import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore extends _LoginStore with _$LoginStore {}

abstract class _LoginStore with Store {
  @observable
  String email = "";

  @action
  void setEmail(String value) => email = value;

  @observable
  String password = "";

  @action
  void sePassword(String value) => password = value;

  @observable
  bool passwordVisible = false;

  @action
  void togglePasswordVisibility() => passwordVisible = !passwordVisible;

  @observable
  bool loading = false;

  @observable
  bool loggedIn = false;

  @computed
  bool get isEmailFormValid => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);

  @computed
  bool get isPasswordFormValid => password.length > 6;

  @computed
  bool get isFormValid => isEmailFormValid && isPasswordFormValid;

  @action
  Future<void> login() async {
    loading = true;
    Future.delayed(const Duration(seconds: 4));
    loading = false;

    loggedIn = true;
  }
}
