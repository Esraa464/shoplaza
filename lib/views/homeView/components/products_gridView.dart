import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoplaza/const/fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shoplaza/core/shared_helper.dart';
import 'package:shoplaza/views/favourit/cubit/cubit.dart';
import 'package:shoplaza/views/homeView/cubit/home_controller.dart';
import 'package:shoplaza/views/productDetails/view.dart';
import 'package:shoplaza/widgets/product_card.dart';

class ProductsGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = HomeController.of(context);
    // final favoriteCubit =FavoriteController.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BoldFont(
                text: 'Home.products'.tr().toString(),
              )
            ],
          ),
        ),
        Container(
          color: Colors.grey[300],
          child: GridView.builder(
              physics: ScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  // mainAxisExtent: 200,
                  childAspectRatio: 1 / 2),
              shrinkWrap: true,
              itemCount: cubit.homeModel.data.products.length,
              itemBuilder: (BuildContext ctx, index) {
                final product = cubit.homeModel.data.products[index];
                return ProductCard(
                  image: product.image,
                  name: product.name,
                  isDiscount: product.discount == 0,
                  oldPrice: product.oldPrice.toString(),
                  isFavourite: product.inFavorites ?? false,
                  price: product.price.toString(),
                  productId:  product.id,
                );
              }),
        ),
      ],
    );
  }
}
