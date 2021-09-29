import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/core/shared_helper.dart';
import 'package:shoplaza/views/login/states/login_states.dart';

class LoginController extends Cubit<LoginStates> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginController() : super(LoginInitial());

  static LoginController of(context) => BlocProvider.of(context);

  Future<String> login() async {
    emit(LoginLoading());
    // print(emailController.text);
    try {
      final response = await Dio().post(
        'https://student.valuxapps.com/api/login',
        data: {
          'email': emailController.text,
          'password': passwordController.text,
        },
      );
      final data = response.data as Map;
      // if (data['status']) {
      if (data['data']['token'] != null) {
        print('hi password   ' * 90);
        await SharedHelper.setName(data['data']['name']);
        await SharedHelper.setPhone(data['data']['phone']);
        await SharedHelper.setEmail(data['data']['email']);

        print('hi here  ' * 90);

        return 'ok';
      } else {
        emit(LoginInitial());
        return '>>>>error>>>>';
      }
    } catch (e, s) {
      print(e);
      print(s);
    }
  }

// @override
// Future<void> close() {
//   return super.close();
// }

// void logout() async {
//   final prefs = await SharedPreferences.getInstance();
//   prefs.remove('token');
// }
}
