import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/favourit/cubit/get_fav_cubit.dart';
import 'package:shoplaza/views/favourit/states/add_fav_states.dart';

import 'components/fovourit_item.dart';

class FavoriteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final cubit = HomeController.of(context);
    return BlocProvider(
      create: (context) => GetFavoriteController()..getFavorite(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<GetFavoriteController, AddFavoriteStates>(
            builder: (context, state) =>
                GetFavoriteController.of(context).addFavModel == null
                    ? Text('No Result')
                    : ListView.separated(
                        physics: BouncingScrollPhysics(),
                        itemCount: GetFavoriteController.of(context)
                            .addFavModel
                            .data
                            .data
                            .length,
                        separatorBuilder: (context, index) => Divider(
                          thickness: 2,
                        ),
                        padding: EdgeInsets.all(15),
                        itemBuilder: (context, index) {
                          final addFav = GetFavoriteController.of(context)
                              .addFavModel
                              .data
                              .data[index]
                              .product;

                          // final product = cubit.homeModel.data.products[index];

                          return FavourItem(
                            // isFavourite:
                            isDiscount: addFav.discount == 0,
                            name: addFav.name,
                            image: addFav.image,
                            oldPrice: addFav.oldPrice.toString(),
                            price: addFav.price.toString(),
                            productId: addFav.id,
                            index: index,
                            // isFavourite: ProductDetailsController.of(context).productDetailsModel.data.inFavorites,
                          );
                        },
                      ),
          ),
        ),
      ),
    );
  }
}
