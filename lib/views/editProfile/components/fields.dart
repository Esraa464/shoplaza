import 'package:flutter/material.dart';
import 'package:shoplaza/widgets/custom_text_form_field.dart';

class Fields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, right: 30, left: 30),
      child: Column(
        children: [
          CustomTextFormField(
            prefix: Icons.person_outline,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: CustomTextFormField(
              prefix: Icons.calendar_today_outlined,
            ),
          ),
          CustomTextFormField(prefix: Icons.email_outlined),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: CustomTextFormField(prefix: Icons.info_outline),
          ),
        ],
      ),
    );
  }
}
