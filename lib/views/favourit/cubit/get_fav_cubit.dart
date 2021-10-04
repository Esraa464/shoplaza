import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shoplaza/const/variables.dart';
import 'package:shoplaza/views/favourit/models/get_fav_model.dart';
import 'package:shoplaza/views/favourit/states/add_fav_states.dart';

class GetFavoriteController extends Cubit<AddFavoriteStates> {
  GetFavoriteController() : super(AddFavoriteInitial());


  static GetFavoriteController of(context) => BlocProvider.of(context);
  AddFavModel addFavModel;
  Future<void> getFavorite() async {
    emit(AddFavoriteLoading());
    try {
      final response = await Dio().get(
        BASE_URL + 'favorites',
        options: dioOptions,
      );
      addFavModel = AddFavModel.fromJson(response.data);
      print(response.data);
      print('esooooo'*90);
    } catch (e) {
      print(e);
    }
    emit(AddFavoriteInitial());
  }

  Future<void> removeFromFavourite(int index) async {
    addFavModel
        .data
        .data
        .removeAt(index);
    emit(AddFavoriteInitial());
    Fluttertoast.showToast(
        msg: 'Deleted Successfully',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 20.0);
  }
}
