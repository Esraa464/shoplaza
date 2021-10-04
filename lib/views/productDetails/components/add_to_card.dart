import 'package:flutter/material.dart';
import 'package:shoplaza/const/colors.dart';
import 'package:shoplaza/views/carts/cubits/cart_cubit.dart';

class AddToCard extends StatelessWidget {
  final int id;

  const AddToCard({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
          width: 45,
          height: 50,
          child: Icon(
            Icons.phone,
            color: redColor,
          ),
          decoration: BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.circular(3)),
        ),
        Container(
          width: 260,
          height: 50,
          decoration: BoxDecoration(
              color: redColor, borderRadius: BorderRadius.circular(3)),
          child: GestureDetector(
            onTap: (){
              CartController().clickCart(id);
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 50, left: 20),
                  child: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'ADD TO CART',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
