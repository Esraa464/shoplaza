// import 'package:dio/dio.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shoplaza/const/variables.dart';
// import 'package:shoplaza/views/carts/models/updateCartModel.dart';
// import 'package:shoplaza/views/carts/states/cart_states.dart';
//
// class UpdateCartController extends Cubit<CartStates> {
//   UpdateCartController() : super(CartInitial());
//
//   static UpdateCartController of(context) => BlocProvider.of(context);
//   UpdateCartModel updateCartModel;
//
//   Future<void> updateCart(int quantity) async {
//     emit(CartLoading());
//     try {
//       final response = await Dio().put(
//         BASE_URL + 'carts/$quantity',
//         data: {'quantity': quantity},
//         options: dioOptions,
//       );
//       updateCartModel = UpdateCartModel.fromJson(response.data);
//       print(response.data);
//       print('earaa');
//     } catch (e) {
//       print(e);
//     }
//     emit(CartInitial());
//   }
// }
