import 'package:flutter/material.dart';
import 'package:shoplaza/views/editProfile/components/fields.dart';
import 'package:shoplaza/views/editProfile/components/profile_photo.dart';
import 'package:shoplaza/widgets/appBar.dart';
import 'package:shoplaza/widgets/main_button.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar('Edit Profile'),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            ProfilePhoto(),
            Fields(),
            MainButton(text: 'Save Changes')
          ],
        ));
  }
}
