import 'package:flutter/material.dart';
import 'package:shoplaza/views/login/components/login_buttons.dart';
import 'package:shoplaza/views/login/components/login_fields.dart';
import 'package:shoplaza/views/login/components/login_intro_text.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(

            children: [
              LoginHeaders(),
              LoginFields(),
              LoginButtons()
            ],
          ),
        ),
      ),
    );
  }
}
