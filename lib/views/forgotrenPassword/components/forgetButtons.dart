import 'package:flutter/material.dart';
import 'package:shoplaza/views/forgotrenPassword/widgets/show_dialog_password.dart';
import 'package:shoplaza/views/resetpassword/view.dart';
import 'package:shoplaza/widgets/main_button.dart';
import 'package:easy_localization/easy_localization.dart';

class ForgotButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: MainButton(
            text: 'ForgottenPass.forgotPass'.tr(),
            press: () {
              // if (formKey.currentState.validate()) {
              // print(emailController.text);
              showDialog(context: context, builder: (context) => alertDialog());
            },
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResetPasswordView()));
            },
            child: Text(
              'ForgottenPass.resetPass'.tr(),
              style: TextStyle(color: Colors.grey[600], fontSize: 15),
            ))
      ],
    );
  }
}
