import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/colors.dart';
import 'package:shoplaza/views/carts/cubits/get_cart_cubit.dart';
import 'package:shoplaza/views/carts/states/get_cart_states.dart';
import 'package:shoplaza/views/carts/widgets/cart_item.dart';

class CartsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartViewController, CartViewStates>(
        builder: (context, state) => state is CartViewLoading
            ? CartViewController.of(context).addCartModel == null
                ? Text('No Result')
                : Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        final cart = CartViewController.of(context)
                            .addCartModel
                            .data
                            .cartItems[index]
                            .product;
                        return CartItemm(
                          index: index,
                          controller: CartViewController.of(context),
                          cartId: CartViewController.of(context).addCartModel.data.cartItems[index].id,
                          quantity: CartViewController.of(context).addCartModel.data.cartItems[index].quantity,
                          productId: cart.id,
                          image: cart.image,
                          name: cart.name,
                          price: cart.price.toString(),
                          oldPrice: cart.oldPrice.toString(),
                          isFavourite: cart.inFavorites,
                          isDiscount: cart.discount == 0,
                        );
                      },
                      itemCount: CartViewController.of(context)
                          .addCartModel
                          .data
                          .cartItems
                          .length,
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Total: ',
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          CartViewController.of(context)
                              .addCartModel
                              .data
                              .total
                              .toString(),
                          style: TextStyle(fontSize: 25, color: redColor),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'EGP',
                          style: TextStyle(fontSize: 25, color: redColor),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(color: Colors.grey),
                    ),
                    height: 70,
                  )
                ],
              ));
  }
}
