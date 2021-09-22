import 'package:flutter/material.dart';
import 'package:shoplaza/views/editProfile/components/fields.dart';
import 'package:shoplaza/views/editProfile/components/profile_photo.dart';
import 'package:shoplaza/widgets/appBar.dart';
import 'package:shoplaza/widgets/main_button.dart';
import 'package:easy_localization/easy_localization.dart';
class EditProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar('EditProfile.EditProfile'.tr()),
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 30),
          physics: BouncingScrollPhysics(),
          children: [
            ProfilePhoto(),
            Fields(),
            MainButton(text: 'EditProfile.saveChanges'.tr(),press: (){},)

          ],
        ));
  }
}
