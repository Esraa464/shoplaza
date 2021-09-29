import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/variables.dart';
import 'package:shoplaza/views/favourit/components/states/add_fav_states.dart';
import 'package:shoplaza/views/favourit/model.dart';
import 'package:shoplaza/views/favourit/components/states/states.dart';

import '../models/get_fav_model.dart';

class GetFavoriteController extends Cubit<AddFavoriteStates> {
  GetFavoriteController() : super(AddFavoriteInitial());
  AddFavModel addFavModel;

  static GetFavoriteController of(context) => BlocProvider.of(context);
  Future<void>getFavorite() async {
    emit(AddFavoriteLoading());
    try {
      final response = await Dio().get(BASE_URL + 'favorites',
        options: dioOptions,);
      addFavModel = AddFavModel.fromJson(response.data);
      print(response.data);
      print('esooooo');
    } catch (e) {
      print(e);
    }
    emit(AddFavoriteInitial());
  }
}
