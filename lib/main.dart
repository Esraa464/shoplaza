import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shoplaza/views/HomeLayout/view.dart';

import 'const/theme.dart';
import 'core/shared_helper.dart';

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

      // home: SharedHelper.isLogged?HomeLayout():LoginView(),
      home: HomeLayout(),
    );
  }
}
// 74Uo8f8KrQbByPCdcwxoG1j022yApdzJc3S0Z13ZTy4uB6nMlkhcFBUaEslw5mRJ8TXjnZ