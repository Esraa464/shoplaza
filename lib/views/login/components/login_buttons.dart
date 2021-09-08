import 'package:flutter/material.dart';
import 'package:shoplaza/views/forgotrenPassword/view.dart';
import 'package:shoplaza/views/signUp/view.dart';
import 'package:shoplaza/widgets/main_button.dart';

class LoginButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainButton(text: 'Login', press: () {}),
        TextButton(
          child: Text(
            'Forget Password?',
            style: TextStyle(color: Colors.grey[600], fontSize: 16),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ForgottenPassword()));
          },
        ),
        TextButton(
          child: Text(
            'Sign Up',
            style: TextStyle(color: Colors.grey[600], fontSize: 16),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SignUp()));
          },
        ),
      ],
    );
  }
}
