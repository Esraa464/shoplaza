// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:shoplaza/views/HomeLayout/view.dart';
// import 'package:shoplaza/views/login/view.dart';
// import 'package:shoplaza/views/splash/states.dart';
//
// class SplashController extends Cubit <SplashStates> {
//   SplashController() : super(SplashInitial());
//
//   Future<void> getData(context) async {
//     final prefs = await SharedPreferences.getInstance();
//     final idToken = prefs.getString('idToken');
//     if (idToken == null)
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (ctx) => LoginView()));
//     else
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (ctx) => HomeLayout()));
//   }}