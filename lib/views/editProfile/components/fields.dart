import 'package:flutter/material.dart';
import 'package:shoplaza/widgets/custom_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';

class Fields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, right: 30, left: 30),
      child: Column(
        children: [
          CustomTextFormField(
            labelText: 'EditProfile.name'.tr(),
            prefix: Icons.person_outline,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: CustomTextFormField(
              labelText: 'EditProfile.birthday'.tr(),
              prefix: Icons.calendar_today_outlined,
              controller: null,
            ),
          ),
          CustomTextFormField(
            prefix: Icons.email_outlined,
            labelText: 'EditProfile.email'.tr(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: CustomTextFormField(
              prefix: Icons.info_outline,
              labelText: 'EditProfile.bio'.tr(),
            ),
          ),
        ],
      ),
    );
  }
}
