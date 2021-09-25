import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/HomeLayout/view.dart';
import 'package:shoplaza/views/forgotrenPassword/view.dart';
import 'package:shoplaza/views/login/cubits/login_controller.dart';
import 'package:shoplaza/views/login/states/login_states.dart';
import 'package:shoplaza/views/signUp/view.dart';
import 'package:shoplaza/widgets/main_button.dart';
import 'package:easy_localization/easy_localization.dart';

class LoginButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final LoginController loginController = LoginController.of(context);
    return BlocBuilder(
        bloc: loginController,
        builder: (context, state) => state is LoginLoading
            ? CircularProgressIndicator()
            : Column(
                children: [
                  MainButton(
                    text: 'Login.login'.tr(),
                    press: () async {
                      // if (!loginController.formKey.currentState.validate())
                      //   return;

                      final message = await loginController.login();
                      // print(message * 90);
                      if (message != 'ok') {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text(message)));
                      } else {
                        print(loginController.emailController.text * 9);
                        print(loginController.passwordController.text * 29);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeLayout(),
                            ));
                      }
                    },
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeLayout(),));
                  ),
                  TextButton(
                    child: Text(
                      'Login.forgotPass'.tr(),
                      style: TextStyle(color: Colors.grey[600], fontSize: 16),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgottenPasswordView()));
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Login.Sign up'.tr(),
                      style: TextStyle(color: Colors.grey[600], fontSize: 16),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpView()));
                    },
                  ),
                ],
              ));
  }
}
