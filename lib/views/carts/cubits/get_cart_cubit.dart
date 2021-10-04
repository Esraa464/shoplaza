import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/variables.dart';
import 'package:shoplaza/views/carts/models/addCartModel.dart';
import 'package:shoplaza/views/carts/states/get_cart_states.dart';

class CartViewController extends Cubit<CartViewStates> {
  CartViewController() : super(CartViewInitial());

  static CartViewController of(context) => BlocProvider.of(context);
  AddCartModel addCartModel;

  Future<void> getCart() async {
    emit(CartViewLoading());
    try {
      final response = await Dio().get(
        BASE_URL + 'carts',
        // data: {'product_id': productId},
        options: dioOptions,
      );
      addCartModel = AddCartModel.fromJson(response.data);
      print(response.data);
      print('earaa');
    } catch (e) {
      print(e);
    }
    emit(CartViewInitial());
  }
}
