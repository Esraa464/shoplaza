import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/variables.dart';
import 'package:shoplaza/views/carts/models/cart_model.dart';
import 'package:shoplaza/views/carts/states/cart_states.dart';

class CartController extends Cubit<CartStates> {
  CartController() : super(CartInitial());

  static CartController of(context) => BlocProvider.of(context);
  CartModel cartModel;

  Future<void> clickCart(int productId) async {
    emit(CartLoading());
    try {
      final response = await Dio().post(
        BASE_URL + 'carts',
        data: {'product_id': productId},
        options: dioOptions,
      );
      cartModel = CartModel.fromJson(response.data);
      print(response.data);
      print('earaa');
    } catch (e) {
      print(e);
    }
    emit(CartInitial());
  }
}
