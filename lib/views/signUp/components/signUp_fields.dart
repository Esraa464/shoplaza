import 'package:flutter/material.dart';
import 'package:shoplaza/widgets/custom_text_form_field.dart';

class SignUpFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20,left: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CustomTextFormField(prefix: Icons.person_outline,labelText: 'First Name',),
          ),
          CustomTextFormField(prefix: Icons.person_outline,labelText: 'Last Name',),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: CustomTextFormField(prefix: Icons.email_outlined,labelText: 'Email'),
          ),
          CustomTextFormField(prefix: Icons.remove_red_eye_outlined,labelText: 'Password',)
        ],
      ),
    );
  }
}
