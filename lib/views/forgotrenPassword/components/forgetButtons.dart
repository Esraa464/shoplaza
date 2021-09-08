import 'package:flutter/material.dart';
import 'package:shoplaza/views/forgotrenPassword/widgets/show_dialog_password.dart';
import 'package:shoplaza/views/resetpassword/view.dart';
import 'package:shoplaza/widgets/main_button.dart';

class ForgotButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: MainButton(
            text: 'Forgot your password',
            press: () {
              // if (formKey.currentState.validate()) {
              // print(emailController.text);
              showDialog(context: context, builder: (context) => alertDialog());
            },
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPassword()));
            },
            child: Text(
              'Reset your password',
              style: TextStyle(color: Colors.grey[600], fontSize: 15),
            ))
      ],
    );
  }
}
