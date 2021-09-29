import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/variables.dart';
import 'package:shoplaza/views/categoryProducts/model.dart';
import 'package:shoplaza/views/categoryProducts/states.dart';
import 'package:shoplaza/views/favourit/model.dart';
import 'package:shoplaza/views/favourit/components/states/states.dart';

class CategoryProductController extends Cubit<CategoryProductStates> {
  CategoryProductController() : super(CategoryProductInitial());

  static CategoryProductController of(context) => BlocProvider.of(context);
  CategoryProductModel categoryProductModel;

  Future<void> getProduct(int categoryId) async {
    emit(CategoryProductLoading());
    try {
      final response = await Dio().post(
        BASE_URL + 'products',
        queryParameters: {'category_id': categoryId},
        options: dioOptions,
      );
      categoryProductModel = CategoryProductModel.fromJson(response.data);
      print(response.data);
    } catch (e) {
      print(e);
    }
    emit(CategoryProductInitial());
  }
}
