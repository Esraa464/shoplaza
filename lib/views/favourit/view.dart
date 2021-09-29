import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/favourit/cubit/cubit.dart';
import 'package:shoplaza/views/favourit/cubit/get_fav_cubit.dart';

import 'components/fovourit_item.dart';

class FavoriteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final cubit = HomeController.of(context);

    final cubit = GetFavoriteController();
    return BlocProvider(
      create: (context) => GetFavoriteController()..addFavModel,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder(
            bloc: cubit,
            builder: (context, state) =>
            GetFavoriteController.of(context).addFavModel
                // FavoriteController.of(context).favoriteModel
                == null
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
                          return FavourItem(
                            name: addFav.name,
                            image: addFav.image,
                            oldPrice: addFav.oldPrice.toString(),
                            price: addFav.price.toString(),
                          );
                        },
                      ),
          ),
        ),
      ),
    );
  }
}
