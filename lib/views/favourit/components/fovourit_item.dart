import 'package:flutter/material.dart';
import 'package:shoplaza/views/favourit/cubit.dart';
import 'package:shoplaza/views/homeView/cubit/home_controller.dart';

class FavourItem extends StatefulWidget {
  final String image;
  final String price;
  final bool isFavourite;
  final String name;
  final bool isDiscount;
  final String oldPrice;
  final int productId;
  final int id;

  const FavourItem(
      {Key key,
      this.image,
      this.price,
      this.isFavourite,
      this.name,
      this.isDiscount = false,
      this.oldPrice,
      this.productId,
      this.id})
      : super(key: key);

  @override
  _FavourItemState createState() => _FavourItemState();
}

class _FavourItemState extends State<FavourItem> {
  @override
  Widget build(BuildContext context) {
    // final controller = FavoriteController();
    return Row(
      children: [
        Image.network(widget.image),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //  widget.name,
                //   // overflow: TextOverflow.ellipsis,
                //   style: TextStyle(
                //     fontSize: 20,
                //   ),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                     widget.price,
                      style: TextStyle(color: Colors.red[900]),
                    ),
                    Text(
                     widget.oldPrice,
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey),
                    ),
                    IconButton(
                      icon: CircleAvatar(
                        child: Icon(
                          Icons.delete,
                          size: 20,
                          color: Colors.white,
                        ),
                        backgroundColor:
                        Colors.red,
                        maxRadius: 14,
                      ),
                      onPressed: () {

                        // FavoriteController().changeFavorite(widget.productId);
                        // print(widget.productId);
                        setState(() {

                        });
                        //TODO: Post request to favourites to API
                        // favoriteCubit.changeFavorite(cubit.homeModel.data.products[index].id);
                        // print(cubit.homeModel.data.products[index].id);
                        // print(SharedHelper.getToken);
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
