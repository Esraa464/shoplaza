import 'package:flutter/material.dart';
import 'package:shoplaza/views/forgotrenPassword/components/forgetButtons.dart';

import 'package:shoplaza/widgets/appBar.dart';
import 'package:shoplaza/widgets/custom_text_form_field.dart';
import 'package:shoplaza/widgets/logo.dart';

import 'package:easy_localization/easy_localization.dart';

class ForgottenPasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('ForgottenPass.forgottenPass'.tr()),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Logo(),
            CustomTextFormField(
              prefix: Icons.email_outlined,
              labelText: 'ForgottenPass.email'.tr(),
            ),
            ForgotButton(),
          ],
        ),
      ),
    );
  }
}
