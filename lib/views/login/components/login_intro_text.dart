import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class LoginHeaders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/images/logo.PNG'),
        Text(
          'Login.proceed'.tr(),
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 45),
          child: Text(
            'Login.login'.tr(),
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
      ],
    );
  }
}
