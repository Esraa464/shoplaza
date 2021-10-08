import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/variables.dart';
import 'package:shoplaza/views/favourit/models/model.dart';
import 'package:shoplaza/views/favourit/states/states.dart';

class FavoriteController extends Cubit<FavoriteStates> {
  FavoriteController() : super(FavoriteInitial());

  static FavoriteController of(context) => BlocProvider.of(context);
  FavoriteModel favoriteModel;

  Future<void> changeFavorite(int productId) async {
    // emit(FavoriteInitial());
    try {
      final response = await Dio().post(
        BASE_URL + 'favorites',
        data: {'product_id': productId},
        options: dioOptions,
      );
      favoriteModel = FavoriteModel.fromJson(response.data);
      print(response.data);
      print('earaa');
    } catch (e) {
      print(e);
    }
    emit(FavoriteInitial());
  }
}
