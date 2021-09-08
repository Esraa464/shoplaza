import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/signUp/cubits/signUp_controller.dart';
import 'package:shoplaza/views/signUp/states/signUp_states.dart';
import 'package:shoplaza/widgets/main_button.dart';

class SignUpEnd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = SignUpController.of(context);
    return BlocBuilder<SignUpController, SignUpStates>(
      builder: (context, state) {
        return Column(children: [

          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: 'I agree with the',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: 'Terms and Condition ',
                    style: TextStyle(color: Colors.red)),
                TextSpan(
                    text: 'and the', style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' Privacy Policy',
                    style: TextStyle(color: Colors.red)),
              ]),
            ),
            value: controller.isAgreed,
            onChanged: controller.agree,
            activeColor: Colors.red,
          ),
          MainButton(text: 'Sign Up', press: () {}),
          // Text('')
        ]);
      },
    );
  }
}
