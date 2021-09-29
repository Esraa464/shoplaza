import 'package:flutter/material.dart';
import 'package:shoplaza/views/login/cubits/login_controller.dart';
import 'package:shoplaza/widgets/custom_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';

class LoginFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = LoginController.of(context);
    return Form(
      key: controller.formKey,
      child: Column(

        children: [
          CustomTextFormField(
              type: TextInputType.emailAddress,
              labelText: 'Login.email'.tr(),
              controller: controller.emailController,
              // isPassword: false,
              prefix: Icons.email_outlined),
          SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            controller: controller.passwordController,
            type: TextInputType.visiblePassword,
            labelText: 'Login.password'.tr(),
            prefix: Icons.lock_outlined,
            suffix: Icons.remove_red_eye_outlined,
          ),
        ],
      ),
    );
  }
}
