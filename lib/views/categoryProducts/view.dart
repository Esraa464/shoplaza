import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/colors.dart';
import 'package:shoplaza/views/categoryProducts/cubit.dart';
import 'package:shoplaza/views/homeView/cubit/category_controller.dart';
import 'package:shoplaza/views/homeView/cubit/home_controller.dart';
import 'package:shoplaza/views/homeView/states/category_states.dart';

class CategoryProducts extends StatelessWidget {
final int id;
CategoryProducts(this.id);
  @override
  Widget build(BuildContext context) {
    final cubit = HomeController.of(context);
    // final favoriteCubit =FavoriteController.of(context);
    return BlocProvider(
      create: (context) => CategoryProductController(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: redColor,
        ),
        body: BlocBuilder<CategoryController,CategoryStates>(
          builder: (context, state) => GridView.builder(
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
                return Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(alignment: AlignmentDirectional.bottomStart, children: [
                        if (cubit.homeModel.data.products[index].discount != 0)
                          Container(
                            child: Text(
                              'Discount',
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            ),
                            color: Colors.red,
                            padding: EdgeInsets.all(.8),
                          ),
                        Image.network(
                          cubit.homeModel.data.products[index].image,
                          height: 200,
                          // fit: BoxFit.cover,
                        ),
                      ]),
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: 6, horizontal: 2),
                        child: Text(
                          cubit.homeModel.data.products[index].name,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(height: 1.1),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            cubit.homeModel.data.products[index].price.toString(),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          if (cubit.homeModel.data.products[index].discount != 0)
                            Text(
                              cubit.homeModel.data.products[index].oldPrice
                                  .toString(),
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
                              backgroundColor: cubit.favorites[
                                      cubit.homeModel.data.products[index].id]
                                  ? Colors.red
                                  : Colors.grey[500],
                              // Colors.grey[500],
                              maxRadius: 14,
                            ),
                            onPressed: () {
                              // favoriteCubit.changeFavorite(cubit.homeModel.data.products[index].id);
                              print(cubit.homeModel.data.products[index].id);
                              // print(SharedHelper.getToken);
                            },
                          )
                        ],
                      )
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
