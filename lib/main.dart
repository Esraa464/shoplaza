import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoplaza/views/category/view.dart';
import 'package:shoplaza/views/favourit/view.dart';
import 'package:shoplaza/views/home/view.dart';

import 'package:shoplaza/views/login/view.dart';
import 'package:shoplaza/views/search/view.dart';

import 'const/colors.dart';
import 'views/HomeLayout/view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/langs',
      // fallbackLocale: Locale('en', 'US'),
      saveLocale: true,
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.setLocale(Locale('en'));
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Shoplaza',
      theme: ThemeData(
          primaryColor: Colors.grey[600],
          accentColor: Colors.red,
          iconTheme: IconThemeData(color: Colors.black),
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            backwardsCompatibility: false,
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: redColor,
                statusBarIconBrightness: Brightness.light),
          )),
      home: HomeLayout(),
    );
  }
}
