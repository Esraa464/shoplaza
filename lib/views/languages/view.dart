import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shoplaza/const/colors.dart';

class LanguagesView extends StatefulWidget {
  @override
  _LanguagesViewState createState() => _LanguagesViewState();
}

class _LanguagesViewState extends State<LanguagesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(50),
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
            title: Text('English'),
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
            title: Text('Arabic'),
          )
        ],
      ),
    );
  }
}
