import 'package:flutter/material.dart';
import 'package:shoplaza/views/signUp/components/signuP_terms.dart';

import 'package:shoplaza/views/signUp/components/signUp_fields.dart';

import 'gender.dart';

class SignUpDetails extends StatefulWidget {
  @override
  _SignUpDetailsState createState() => _SignUpDetailsState();
}

class _SignUpDetailsState extends State<SignUpDetails> {
  // int selectedRadio;
  //
  // changeRadio(value) {
  //   setState(() {
  //     selectedRadio = value;
  //   });
  // }
  //
  // @override
  // void initState() {
  //   super.initState();
  //   selectedRadio = 0;
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 120, child: Image.asset('assets/images/logo.PNG')),
        SignUpFields(),

        // Gender(),

        SignUpButtons(),
      ],
    );
  }
}
