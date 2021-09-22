import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/login/view.dart';
import 'package:shoplaza/views/signUp/cubits/terms_controller.dart';
import 'package:shoplaza/views/signUp/cubits/signUp_controller.dart';
import 'package:shoplaza/views/signUp/states/signUp_states.dart';
import 'package:shoplaza/views/signUp/states/terms_status.dart';
import 'package:shoplaza/views/termsView/view.dart';
import 'package:shoplaza/widgets/main_button.dart';
import 'package:easy_localization/easy_localization.dart';

class SignUpButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final termsController = TermsController.of(context);
    final signUpController = SignUpController.of(context);
    return Column(children: [
      // BlocBuilder(
      //   bloc: termsController,
      //   builder: (context, state) => CheckboxListTile(
      //     controlAffinity: ListTileControlAffinity.leading,
      //     title: GestureDetector(
      //       onTap: () => Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) => TermsView(),
      //           )),
      //       child: RichText(
      //         text: TextSpan(children: [
      //           TextSpan(
      //               text: 'SignUp.agree'.tr(),
      //               style: TextStyle(color: Colors.black)),
      //           TextSpan(
      //               text: 'SignUp.Terms'.tr(),
      //               style: TextStyle(color: Colors.red)),
      //           TextSpan(
      //               text: 'SignUp.and'.tr(),
      //               style: TextStyle(color: Colors.black)),
      //           TextSpan(
      //               text: 'SignUp.Privacy'.tr(),
      //               style: TextStyle(color: Colors.red)),
      //         ]),
      //       ),
      //     ),
      //     value: termsController.isAgreed,
      //     onChanged: termsController.agree,
      //     activeColor: Colors.red,
      //   ),
      // ),
      BlocBuilder(
        bloc: signUpController,
        builder: (context, state) => state is SignUpLoading
            ? CircularProgressIndicator()
            : MainButton(
                text: 'SignUp.Signup'.tr(),
                press: () async {
                  // if (!SignUpController.of(context)
                  //     .formKey
                  //     .currentState
                  //     .validate()) return;

                  final message = await signUpController.signUp();
                  // print(message * 90);
                  if (message != 'ok') {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(message)));
                  } else {
                    // print(signUpController.emailController.text * 9);
                    // print(signUpController.passwordController.text * 29);
                    // print(signUpController.phoneController.text * 9);
                    // print(signUpController.nameController.text * 29);
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginView(),
                        ));
                  }
                },
              ),
      ),
    ]);
//   },
// );
  }
}
