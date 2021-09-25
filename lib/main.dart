import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shoplaza/end_points.dart';
import 'package:shoplaza/views/HomeLayout/view.dart';
import 'package:shoplaza/views/editProfile/view.dart';
import 'package:shoplaza/views/favourit/view.dart';

import 'package:shoplaza/views/login/view.dart';
import 'package:shoplaza/views/productDetails/view.dart';
import 'package:shoplaza/views/search/view.dart';
import 'package:shoplaza/views/signUp/view.dart';
import 'package:shoplaza/views/splash/view.dart';
import 'const/theme.dart';
import 'core/shared_helper.dart';
import 'views/category_item/view.dart';
import 'views/settings/view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await SharedHelper.init();
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
    // context.setLocale(Locale('en'));
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Shoplaza',
      theme: themeData,
      // home: SharedHelper.isLogged ? HomeLayout() : LoginView(),
      home:HomeLayout(),
    );
  }
}
