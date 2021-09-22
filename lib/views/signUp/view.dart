import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shoplaza/views/signUp/components/signUp_details.dart';
import 'package:shoplaza/views/signUp/cubits/terms_controller.dart';
import 'package:shoplaza/views/signUp/cubits/signUp_controller.dart';
import 'package:shoplaza/widgets/appBar.dart';
import 'package:easy_localization/easy_localization.dart';

class SignUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>SignUpController(),
      child: Scaffold(
        appBar: appBar('SignUp.SignUp'.tr()),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SignUpDetails(),
          ],
        ),
      ),
    );
  }
}
