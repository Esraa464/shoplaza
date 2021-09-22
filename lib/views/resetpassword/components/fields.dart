import 'package:flutter/material.dart';
import 'package:shoplaza/widgets/custom_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
class ResetFields extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomTextFormField(labelText: 'ResetPass.resetPass'.tr(),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: CustomTextFormField(labelText: 'ResetPass.newPass'.tr(),),
      ),
      CustomTextFormField(labelText: 'ResetPass.confirmPass'.tr(),),

    ],);
  }
}
