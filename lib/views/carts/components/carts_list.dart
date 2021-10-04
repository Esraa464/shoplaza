import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/carts/cubits/get_cart_cubit.dart';
import 'package:shoplaza/views/carts/states/get_cart_states.dart';
import 'package:shoplaza/views/carts/widgets/cart_item.dart';

class CartsList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<CartViewController, CartViewStates>(
        // bloc: cubit,
        builder: (context, state) => state is CartViewLoading?Center(child: CircularProgressIndicator()):CartViewController.of(context)
                    .addCartModel ==
                null
            ? Text('No Result')
            : ListView.builder(

                itemBuilder: (context, index) {
                  final cart=CartViewController.of(context).addCartModel.data.cartItems[index].product;
                  return CartItemm(
                   image:cart.image ,
                    name: cart.name,
                    price: cart.price.toString(),
                    oldPrice: cart.oldPrice.toString(),
                  );
                },
                itemCount: CartViewController.of(context)
                    .addCartModel
                    .data
                    .cartItems
                    .length,
              ));
  }
}
