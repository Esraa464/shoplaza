import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/core/shared_helper.dart';
import 'package:shoplaza/views/editProfile/components/fields.dart';
import 'package:shoplaza/views/editProfile/components/profile_photo.dart';
import 'package:shoplaza/views/editProfile/controller.dart';
import 'package:shoplaza/views/editProfile/states.dart';
import 'package:shoplaza/widgets/appBar.dart';
import 'package:shoplaza/widgets/main_button.dart';
import 'package:easy_localization/easy_localization.dart';

class EditProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditProfileController(),
      child: Scaffold(
          appBar: appBar('EditProfile.EditProfile'.tr()),
          body: ListView(
            padding: EdgeInsets.symmetric(vertical: 30),
            physics: BouncingScrollPhysics(),
            children: [
              ProfilePhoto(),
              Fields(),
              BlocBuilder<EditProfileController, EditProfileStates>(
                  builder: (context, state) => state is EditProfileLoading
                      ? CircularProgressIndicator()
                      : MainButton(
                          text: 'EditProfile.saveChanges'.tr(),
                          press: EditProfileController.of(context).update,
                        ),
              ),
            ],
          )),
    );
  }
}
