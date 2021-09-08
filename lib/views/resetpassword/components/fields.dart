import 'package:flutter/material.dart';
import 'package:shoplaza/widgets/custom_text_form_field.dart';

class ResetFields extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomTextFormField(labelText: 'Current Password',),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: CustomTextFormField(labelText: 'New Password',),
      ),
      CustomTextFormField(labelText: 'Confirm New Password',),

    ],);
  }
}
