import 'package:flutter/material.dart';
import 'package:shoplaza/core/shared_helper.dart';
import 'package:shoplaza/views/favourit/cubit.dart';
import 'package:shoplaza/views/productDetails/view.dart';

class ProductCard extends StatefulWidget {
  final String image;
  final String price;
  final bool isFavourite;
  final String name;
  final bool isDiscount;
  final String oldPrice;
  final int productId;
  final int id;

  const ProductCard({Key key, this.image, this.price, this.isFavourite, this.name, this.isDiscount = false, this.oldPrice, this.productId, this.id}) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {

  bool isFavourite;

  @override
  void initState() {
    isFavourite = widget.isFavourite;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () => Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => ProductView(
      //         // cubit.homeModel.data.products[index].image.toString(),
      //         // cubit.homeModel.data.products[index].name.toString(),
      //         // cubit.homeModel.data.products[index].discount.toInt(),
      //         // cubit.homeModel.data.products[index].oldPrice
      //         //     .toDouble(),
      //         // cubit.homeModel.data.products[index].price.toDouble(),
      //         // cubit.homeModel.data.products[index].description
      //         //     .toString(),
      //         // // cubit.homeModel.data.products[index].images,
      //         // cubit.homeModel.data.products[index].inCart,
      //         // cubit.homeModel.data.products[index].inFavorites,
      //       ),
      //     )),
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  // if (cubit.homeModel.data.products[index]
                  //     .discount !=
                  //     0)
                    Container(
                      child: Text(
                        'Discount',
                        style: TextStyle(
                            fontSize: 15, color: Colors.white),
                      ),
                      color: Colors.red,
                      padding: EdgeInsets.all(.8),
                    ),
                  Image.network(
                    widget.image,
                    height: 200,
                    // fit: BoxFit.cover,
                  ),
                ]),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 6, horizontal: 2),
              child: Text(
                widget.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(height: 1.1),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                 widget.price,
                ),
                SizedBox(
                  width: 3,
                ),
                if (widget.isDiscount)
                  Text(
                   widget.oldPrice,
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey),
                  ),
                Spacer(),
                IconButton(
                  icon: CircleAvatar(
                    child: Icon(
                      Icons.favorite_border,
                      size: 20,
                      color: Colors.white,
                    ),
                    backgroundColor: isFavourite
                        ? Colors.red
                        : Colors.grey[500],
                    // Colors.grey[500],
                    maxRadius: 14,
                  ),
                  onPressed: () {

                    FavoriteController().changeFavorite(widget.productId);
                    print(widget.productId);
                    setState(() {
                      isFavourite = !isFavourite;
                      // if(widget.isFavourite){}
                    });
                    //TODO: Post request to favourites to API
                    // favoriteCubit.changeFavorite(cubit.homeModel.data.products[index].id);
                    // print(cubit.homeModel.data.products[index].id);
                    print(SharedHelper.getToken);
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
