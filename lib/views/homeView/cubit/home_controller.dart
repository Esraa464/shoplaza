import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/variables.dart';
import 'package:shoplaza/views/homeView/models/banner_and_product_model.dart';
import 'package:shoplaza/views/homeView/states/home_states.dart';

class HomeController extends Cubit<HomeStates> {
  HomeController() : super(HomeInitial());

  static HomeController of(context) => BlocProvider.of(context);

  HomeModel homeModel;

  Future<void> getData() async {
    emit(HomeLoading());
    try{
      final response = await Dio().get(
          BASE_URL + 'home',
          options: dioOptions
      );
      homeModel = HomeModel.fromJson(response.data);
    }catch(e){
      print(e);
    }
    emit(HomeInitial());
  }

}
