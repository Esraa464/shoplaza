import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/variables.dart';
import 'package:shoplaza/core/shared_helper.dart';
import 'package:shoplaza/views/favourit/model.dart';
import 'package:shoplaza/views/favourit/states.dart';

class FavoriteController extends Cubit<FavoriteStates> {
  FavoriteController() : super(FavoriteInitial());

  static FavoriteController of(context) => BlocProvider.of(context);
  FavoriteModel favoriteModel;

  Future<void> changeFavorite(int productId) async {
    emit(FavoriteInitial());
    try {
      final response = await Dio().post(BASE_URL + 'favorites',
          options: dioOptions, data: {'product_id': productId});
      favoriteModel = FavoriteModel.fromJson(response.data);
      // if(response.)
      print(response.data);


    } catch (e) {
      print(e);
    }
    emit(FavoriteInitial());
  }
}
