import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoplaza/views/login/view.dart';
import 'package:shoplaza/views/splash/components/logo_and_slogan.dart';

class Splash extends StatefulWidget {


  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4),()=>Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>LoginView())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashLogo()
    );
  }
}
