import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/variables.dart';
import 'package:shoplaza/views/homeView/models/category_model.dart';
import 'package:shoplaza/views/homeView/states/category_states.dart';


class CategoryController extends Cubit<CategoryStates> {
  CategoryController() : super(CategoryInitial());

  static CategoryController of(context) => BlocProvider.of(context);

  CategoryModel categoryModel;

  Future<void> getCategoryData() async {
    emit(CategoryLoading());
    try {
      final response = await Dio().get(BASE_URL + 'categories',  options: dioOptions);
      categoryModel = CategoryModel.fromJson(response.data);
    } catch (e) {
      print(e);
    }
    emit(CategoryInitial());
  }
}
