import 'package:flutter/material.dart';
import 'package:shoplaza/widgets/custom_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';

class LoginFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          labelText: 'Login.userName'.tr(),
          // isPassword: false,
          prefix: Icons.person_outline,
        ),
        SizedBox(
          height: 20,
        ),
        CustomTextFormField(
          labelText: 'Login.password'.tr(),
          prefix: Icons.remove_red_eye_outlined,
        ),
      ],
    );
  }
}
