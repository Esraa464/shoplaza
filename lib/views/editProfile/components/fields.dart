import 'package:flutter/material.dart';
import 'package:shoplaza/views/editProfile/controller.dart';
import 'package:shoplaza/widgets/custom_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';

class Fields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = EditProfileController.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, right: 30, left: 30),
      child: Column(
        children: [
          CustomTextFormField(
            labelText: 'EditProfile.name'.tr(),
            prefix: Icons.person_outline,
            controller: controller.nameController,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: CustomTextFormField(
              labelText: 'EditProfile.phone'.tr(),
              prefix: Icons.phone,
              controller: controller.phoneController,
            ),
          ),
          CustomTextFormField(
            prefix: Icons.email_outlined,
            labelText: 'EditProfile.email'.tr(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: CustomTextFormField(
              controller: controller.passwordController,
              prefix: Icons.lock_outlined,
              labelText: 'EditProfile.password'.tr(),
            ),
          ),
        ],
      ),
    );
  }
}
