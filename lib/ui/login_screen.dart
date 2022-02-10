import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:liste_mobx/stores/login_store.dart';
import 'package:liste_mobx/widgets/custom_icon_button.dart';
import 'package:liste_mobx/widgets/custom_text_field.dart';
import 'package:mobx/mobx.dart';

import 'list_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginStore loaginStore = LoginStore();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(32),
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 16,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Observer(builder: (_) {
                      return CustomTextField(
                        hint: 'E-mail',
                        prefix: const Icon(Icons.account_circle),
                        textInputType: TextInputType.emailAddress,
                        onChanged: loaginStore.setEmail,
                        enabled: !loaginStore.loading,
                      );
                    }),
                    const SizedBox(
                      height: 16,
                    ),
                    Observer(builder: (_) {
                      return CustomTextField(
                        hint: 'Senha',
                        prefix: const Icon(Icons.lock),
                        obscure: !loaginStore.passwordVisible,
                        onChanged: loaginStore.sePassword,
                        enabled: !loaginStore.loading,
                        suffix: CustomIconButton(
                          radius: 32,
                          iconData: loaginStore.passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                          onTap: loaginStore.togglePasswordVisibility,
                        ),
                      );
                    }),
                    const SizedBox(
                      height: 16,
                    ),
                    Observer(builder: (_) {
                      return SizedBox(
                        height: 44,
                        child: ElevatedButton(
                          child: loaginStore.loading
                              ? const CircularProgressIndicator(
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.white),
                                )
                              : const Text('Login'),
                          onPressed: loaginStore.isFormValid
                              ? () {
                                  loaginStore.login();
                                  if (loaginStore.loggedIn) {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ListScreen()));
                                  }
                                }
                              : null,
                        ),
                      );
                    })
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
