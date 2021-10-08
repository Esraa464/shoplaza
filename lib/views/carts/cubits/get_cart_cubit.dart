import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
    } catch (e) {
      print(e);
    }
    emit(CartViewInitial());
  }


  Future<void> updateCart(int quantity, int cartId) async {
    try {
      final response = await Dio().put(
        BASE_URL + 'carts/$cartId',
        data: {'quantity': quantity},
        options: dioOptions,
      );
      addCartModel.data.total = response.data['data']['total'];

      // addCartModel = AddCartModel.fromJson(response.data);

    //   print(response.data);
    //   print('earaa');
    } catch (e, s) {
      print(e);
      print(s);
    }
    emit(CartViewInitial());
  }

  Future<void> removeFromCart(int cartId) async {
    addCartModel.data.cartItems.removeWhere((element) => element.id == cartId);
    emit(CartViewInitial());
    final response = await Dio().delete(
      BASE_URL + 'carts/$cartId',
      options: dioOptions,
    );
    addCartModel.data.total = response.data['data']['total'];
    emit(CartViewInitial());
    Fluttertoast.showToast(
        msg: 'Deleted Successfully',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 20.0);
  }

}
