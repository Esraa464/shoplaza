import 'package:flutter/material.dart';
import 'package:shoplaza/views/signUp/components/signUP_end.dart';

import 'package:shoplaza/views/signUp/components/signUp_fields.dart';

class SignUpDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 120, child: Image.asset('assets/images/logo.PNG')),
        Text(''),
        SignUpFields(),
        Text(''),
        SignUpEnd(),
      ],
    );
  }
}
