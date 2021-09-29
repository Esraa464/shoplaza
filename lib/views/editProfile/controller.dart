import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shoplaza/const/variables.dart';
import 'package:shoplaza/core/shared_helper.dart';
import 'package:shoplaza/views/editProfile/states.dart';

class EditProfileController extends Cubit<EditProfileStates> {
  EditProfileController() : super(EditProfileInit());

  static EditProfileController of(context) => BlocProvider.of(context);

  File file;

  TextEditingController nameController =
      TextEditingController(text: SharedHelper.getName);
  TextEditingController phoneController =
      TextEditingController(text: SharedHelper.getPhone);

  TextEditingController emailController =
      TextEditingController(text: SharedHelper.getEmail);

  Future<void> update() async {
    emit(EditProfileLoading());
    print(SharedHelper.getEmail);

    /// HTTP & DIO ?? Body is Raw
    final formData = {
      "name": nameController.text,
      "phone": phoneController.text,
      "email": emailController.text,
      "password": "123456",
      if (file != null) "image": base64Encode(file.readAsBytesSync())
    };

    /// DIO ?? Body is FormData

    // final formData = FormData.fromMap({
    //   "name": "esoooo",
    //   "phone": "1234567880",
    //   "email": "esraa3@gmail.com",
    //   "password": "123456",
    // });
    // if(file != null)
    //   formData.files.add(MapEntry('image', await MultipartFile.fromFile(file.path)));
    try {
      final response = await Dio().put(BASE_URL + 'update-profile',
          data: formData, options: dioOptions);
      //TODO: Caching data
      print(SharedHelper.getName);

      await SharedHelper.setToken(response.data['data']['token']);
      await SharedHelper.setName(response.data['data']['name']);
      await SharedHelper.setEmail(response.data['data']['email']);
      await SharedHelper.setPhone(response.data['data']['phone']);
      await SharedHelper.setImage(response.data['data']['image']);

      print(SharedHelper.getImage);
    } catch (e) {
      print(e);
    }
    emit(EditProfileInit());
  }

  void pickPhoto() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return;
    file = File(pickedFile.path);
    emit(EditProfileInit());
  }

  @override
  Future<void> close() {
    nameController.dispose();
    return super.close();
  }
}
