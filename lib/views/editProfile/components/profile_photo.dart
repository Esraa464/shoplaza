import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/core/shared_helper.dart';
import 'package:shoplaza/views/editProfile/controller.dart';

class ProfilePhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = EditProfileController.of(context);
    return BlocBuilder(
      bloc: cubit,
      builder: (context, state) => Column(
        children: [
          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: cubit.file == null
                      ? NetworkImage(SharedHelper.getImage)
                      : FileImage(cubit.file),
                ),
                border: Border.all(color: Colors.grey)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: TextButton(
              child: Text('EditProfile.changePhoto'.tr(),
                  style: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.w500)),
              onPressed: cubit.pickPhoto,
            ),
          ),
        ],
      ),
    );
  }
}
