import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/core/shared_helper.dart';
import 'package:shoplaza/views/signUp/states/signUp_states.dart';

class SignUpController extends Cubit<SignUpStates> {
  SignUpController() : super(SignUpInitial());
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  static SignUpController of(context) => BlocProvider.of(context);

  Future<String> signUp() async {
    emit(SignUpLoading());
    print(emailController.text);
    try {
      print(emailController.text*90);
      final response = await Dio().post(
        'https://student.valuxapps.com/api/register',
        data: {
          'email': emailController.text,
          'password': passwordController.text,
          'name': nameController.text,
          'phone': phoneController.text
        },
        //   options: Options(validateStatus: (status) {
        // return status < 500;
        // })
      );
      // print(phoneController.text*90);
      final data = response.data as Map;
      print(nameController.text*90);
      // print('$data');
      // print(data['data']['token'] * 90);
      if (data['status']) {
        print('$data');
        print(data['data']['token'] * 90);

        return 'ok';
      } else {
        emit(SignUpInitial());
        return '>>>>error,please try again>>>>';
      }
    } catch (e, s) {
      print(e);
      print(s);
    }
    // emit(SignUpInitial());
  }
}
//stacktrace,
