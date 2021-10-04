import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/variables.dart';
import 'package:shoplaza/views/productDetails/model.dart';
import 'package:shoplaza/views/productDetails/states.dart';

class ProductDetailsController extends Cubit<ProductDetailsStates> {
  ProductDetailsController() : super(ProductDetailsInitial());

  static ProductDetailsController of(context) => BlocProvider.of(context);

  ProductDetailsModel productDetailsModel;

  Future<void> getProductData(int id) async {
    emit(ProductDetailsLoading());
    try {
      final response =
          await Dio().get(BASE_URL + 'products/$id', options: dioOptions);
      productDetailsModel = ProductDetailsModel.fromJson(response.data);
      print(productDetailsModel.data.image);
    } catch (e, s) {
      print(e);
      print(s);
    }
    emit(ProductDetailsInitial());
  }
}
