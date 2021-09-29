import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/variables.dart';
import 'package:shoplaza/views/favourit/model.dart';
import 'package:shoplaza/views/favourit/states.dart';
import 'package:shoplaza/views/homeView/models/banner_and_product_model.dart';
import 'package:shoplaza/views/homeView/states/home_states.dart';

class HomeController extends Cubit<HomeStates> {
  HomeController() : super(HomeInitial());

  static HomeController of(context) => BlocProvider.of(context);
  FavoriteModel favoriteModel;
  HomeModel homeModel;
  Map<int, bool> favorites = {};

  Future<void> getData() async {
    emit(HomeLoading());
    try {
      final response = await Dio().get(BASE_URL + 'home', options: dioOptions);
      homeModel = HomeModel.fromJson(response.data);
      homeModel.data.products.forEach((element) {
        favorites.addAll({element.id: element.inFavorites});
      });
      print(favorites.toString());
    } catch (e) {
      print(e);
    }
    emit(HomeInitial());
  }


}
