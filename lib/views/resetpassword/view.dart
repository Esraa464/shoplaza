import 'package:flutter/material.dart';
import 'package:shoplaza/views/resetpassword/components/fields.dart';
import 'package:shoplaza/widgets/appBar.dart';
import 'package:shoplaza/widgets/logo.dart';
import 'package:shoplaza/widgets/main_button.dart';
import 'package:easy_localization/easy_localization.dart';
class ResetPasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('ResetPass.resetPass'.tr()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
          Logo(),
            ResetFields(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: MainButton(
                text: 'ResetPass.updatePass'.tr(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
