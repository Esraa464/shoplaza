import 'package:flutter/material.dart';
import 'package:shoplaza/views/forgotrenPassword/components/forgetButtons.dart';
import 'package:shoplaza/views/forgotrenPassword/widgets/alert_dialog_content.dart';
import 'package:shoplaza/views/forgotrenPassword/widgets/show_dialog_password.dart';
import 'package:shoplaza/widgets/appBar.dart';
import 'package:shoplaza/widgets/custom_text_form_field.dart';
import 'package:shoplaza/widgets/logo.dart';
import 'package:shoplaza/widgets/main_button.dart';

class ForgottenPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Forgotten Password'),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Logo(),
            CustomTextFormField(
              prefix:Icons.email_outlined,
              labelText: 'Email',
            ),
            ForgotButton(),
          ],
        ),
      ),
    );
  }
}
