import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore extends _LoginStore with _$LoginStore {}

abstract class _LoginStore with Store {
  _LoginStore() {
    autorun((_) {
      print(isEmailFormValid);
    });
  }

  @observable
  String email = "";

  @action
  void setEmail(String value) => email = value;

  @observable
  String password = "";

  @action
  void sePassword(String value) => password = value;

  @computed
  bool get isEmailFormValid => RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);

  @computed
  bool get isPasswordFormValid => password.length > 6;

  @computed
  bool get isFormValid => isEmailFormValid && isPasswordFormValid;
  
}
