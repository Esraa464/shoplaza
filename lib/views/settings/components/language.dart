import 'package:flutter/material.dart';
import 'package:shoplaza/const/colors.dart';
import 'package:easy_localization/easy_localization.dart';
class Language extends StatefulWidget {

  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      // leading: Container(
      //   child: Icon(
      //     Icons.language,
      //     color: Colors.white,
      //   ),
      //   decoration:
      //       BoxDecoration(shape: BoxShape.circle, color: Colors.red),
      //   height: 30,
      //   width: 30,
      // ),
      title: Text('settings.settings'.tr(),
          style: TextStyle(color: Colors.grey[600])),
      children: [
        ListTile(
          onTap: () {
            setState(() {
              context.setLocale(Locale('en'));
            });
          },
          leading: Icon(
            Icons.language,
            color: redColor,
          ),
          title: Text('settings.english'.tr()),
        ),
        ListTile(
          onTap: () {
            setState(() {
              context.setLocale(Locale('ar'));
            });
          },
          leading: Icon(
            Icons.language,
            color: redColor,
          ),
          title: Text('settings.arabic'.tr()),
        )
      ],
    );
  }
}
