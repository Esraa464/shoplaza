import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/login/states/login_states.dart';

class LoginController extends Cubit<LoginStates> {
  // String idToken;
  final formKey = GlobalKey<FormState>();

  // final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginController() : super(LoginInitial());

  static LoginController of(context) => BlocProvider.of(context);

  Future<String> login() async {
    emit(LoginLoading());
    print(emailController.text);
    try {
      final response =
          await Dio().post('https://student.valuxapps.com/api/login', data: {
        'email': emailController.text,
        'password': passwordController.text,
        // 'returnSecureToken': true
      },
      //         options: Options(
      //   validateStatus: (status) {
      //     return status < 500;
      //   },
      // )
          );
      final data = response.data as Map;
      if (data['status']) {
        // idToken = data['token'];
        // final prefs = await SharedPreferences.getInstance();
        // prefs.setString('token', idToken);
        print('$data');
        print('hi esraa'*90);
        print( data['data']['token'] );

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
