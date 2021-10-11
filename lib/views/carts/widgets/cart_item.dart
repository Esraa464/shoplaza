import 'package:flutter/material.dart';
import 'package:shoplaza/const/colors.dart';
import 'package:shoplaza/views/carts/cubits/get_cart_cubit.dart';

class CartItemm extends StatefulWidget {
  final String image;
  final String price;
  final bool isFavourite;
  final String name;
  final bool isDiscount;
  final String oldPrice;
  final int productId;
  final int cartId;
  final int index;
  final int quantity;
  final CartViewController controller;

  const CartItemm(
      {Key key,
      this.image,
      this.price,
      this.isFavourite,
      this.name,
      this.isDiscount,
      this.oldPrice,
      this.productId,
      this.index,
      this.quantity = 1,
      @required this.controller,
      this.cartId})
      : super(key: key);

  @override
  _CartItemmState createState() => _CartItemmState();
}

class _CartItemmState extends State<CartItemm> {
  bool isFavourite;
  int counter = 1;

  @override
  void initState() {
    isFavourite = widget.isFavourite;
    counter = widget.quantity;
    super.initState();
  }

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
                  widget.image,
                  width: 60,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Column(
                      children: [
                        Text(
                          widget.name,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'Egp',
                                style: TextStyle(color: redColor, fontSize: 16),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                widget.price.toString(),
                                style: TextStyle(
                                  color: redColor,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              if (widget.isDiscount)
                                Text(
                                  widget.oldPrice.toString(),
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: Colors.grey,
                                      fontSize: 16),
                                )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                widget.isFavourite
                    ? IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: redColor,
                        ),
                        onPressed: () {
                          // FavoriteController.of(context)
                          //     .changeFavorite(widget.productId);
                          // print(widget.productId);
                          // setState(() {
                          //   isFavourite = !isFavourite;
                          // });
                        },
                      )
                    : Icon(Icons.favorite_outline),
                IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: redColor,
                  ),
                  onPressed: () async {
                    widget.controller.removeFromCart(widget.cartId);
                    // CartController().clickCart(widget.productId);
                    // await CartViewController.of(context)
                    //     .removeFromCart(widget.index);
                  },
                ),
                IconButton(
                  icon: CircleAvatar(
                    maxRadius: 13,
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: 15,
                    ),
                    backgroundColor: (counter > 1) ? redColor : Colors.grey,
                  ),
                  onPressed: (counter > 1) ? () {
                      setState(() {
                        counter--;
                      });
                      widget.controller.updateCart(counter, widget.cartId);
                  } : null,
                ),
                Text(
                  '$counter',
                  style: TextStyle(),
                ),
                IconButton(
                  icon: CircleAvatar(
                    maxRadius: 13,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 15,
                    ),
                    backgroundColor: redColor,
                  ),
                  onPressed: () {
                    //   UpdateCartController().updateCart(
                    //       CartController.of(context).cartModel.data.quantity);
                    // print( CartController.of(context).cartModel.data.quantity);
                    // CartController.of(context).cartModel.data.product.id;
                    setState(
                      () {
                        counter++;
                      },
                    );
                    widget.controller.updateCart(counter, widget.cartId);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
