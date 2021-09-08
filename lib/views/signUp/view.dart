import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/editProfile/view.dart';
import 'package:shoplaza/views/signUp/components/signUP_end.dart';
import 'package:shoplaza/views/signUp/components/signUp_details.dart';
import 'package:shoplaza/views/signUp/components/signUp_fields.dart';
import 'package:shoplaza/views/signUp/cubits/signUp_controller.dart';
import 'package:shoplaza/widgets/appBar.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SignUpController(),
      child: Scaffold(
        appBar: appBar('Sign Up'),
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
