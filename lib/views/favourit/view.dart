import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/favourit/cubit.dart';
import 'package:shoplaza/views/homeView/cubit/home_controller.dart';

import 'components/fovourit_item.dart';

class FavoriteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final cubit = HomeController.of(context);

    final cubit = FavoriteController();
    return BlocProvider(
      create: (context) => FavoriteController(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder(
            bloc: cubit,
            builder: (context, state) =>FavoriteController.of(context).favoriteModel == null ? Text('No Result') : ListView.separated(
              physics: BouncingScrollPhysics(),
              itemCount: 10,
              separatorBuilder: (context, index) => Divider(
                thickness: 2,
              ),
              padding: EdgeInsets.all(15),
              itemBuilder: (context, index) {
                final favCubit =
                    FavoriteController.of(context).favoriteModel.data.product;
                return FavourItem(
                  productId: favCubit.id,
                  price: favCubit.price.toString(),
                  oldPrice: favCubit.oldPrice.toString(),
                  image: favCubit.image,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
