import 'package:flutter/material.dart';
import 'package:shoplaza/views/signUp/cubits/terms_controller.dart';
import 'package:shoplaza/views/signUp/cubits/signUp_controller.dart';
import 'package:shoplaza/widgets/custom_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';

class SignUpFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final signUpController = SignUpController.of(context);
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Form(
        key: signUpController.formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: CustomTextFormField(
                type: TextInputType.text,
                controller:signUpController.nameController ,
                prefix: Icons.person_outline,
                labelText: 'SignUp.Name'.tr(),
              ),
            ),
            CustomTextFormField(
              type: TextInputType.phone,
              controller: signUpController.phoneController,
              prefix: Icons.phone,
              labelText: 'SignUp.phone'.tr(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: CustomTextFormField(
                controller: signUpController.emailController,
                  type: TextInputType.emailAddress,
                  prefix: Icons.email_outlined,
                  labelText: 'SignUp.email'.tr()),
            ),
            CustomTextFormField(
              controller: signUpController.passwordController,
              type: TextInputType.visiblePassword,
              prefix: Icons.remove_red_eye_outlined,
              labelText: 'SignUp.password'.tr(),
            ),

          ],
        ),
      ),
    );
  }
}
