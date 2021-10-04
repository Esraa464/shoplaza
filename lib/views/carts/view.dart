import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/carts/components/carts_list.dart';
import 'package:shoplaza/views/carts/cubits/get_cart_cubit.dart';

class CartView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartViewController()..getCart(),
      child: Scaffold(
        appBar: AppBar(title: Text('Cart',style: TextStyle(color: Colors.white),),),
        body: CartsList(),
      ),
    );
  }
}
