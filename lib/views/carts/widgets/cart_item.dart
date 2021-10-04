import 'package:flutter/material.dart';
import 'package:shoplaza/const/colors.dart';

class CartItemm extends StatelessWidget {
  final String image;
  final String price;
  final bool isFavourite;
  final String name;
  final bool isDiscount;
  final String oldPrice;
  final int productId;

  const CartItemm(
      {Key key,
      this.image,
      this.price,
      this.isFavourite,
      this.name,
      this.isDiscount,
      this.oldPrice,
      this.productId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.network(
                  image,
                  width: 60,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Column(
                      children: [
                        Text(
                          name,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        Row(
                          children: [
                            Text(price.toString()),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              oldPrice.toString(),
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.favorite_outline,
                  color: redColor,
                ),
                IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: redColor,
                  ),
                  onPressed: () {
                    // CartViewController.of(context)
                    //     .addCartModel
                    //     .data
                    //     .cartItems
                    //     .removeAt(index);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
