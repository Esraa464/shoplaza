import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/categoryProducts/cubit.dart';
import 'package:shoplaza/views/categoryProducts/states.dart';

class CategoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = CategoryProductController.of(context);
    return BlocBuilder(
      bloc: cubit,
      builder: (context, state) => state is CategoryProductLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : cubit.categoryProductModel == null ||
                  cubit.categoryProductModel.data.data.isEmpty
              ? Text('Empty!')
              : GridView.builder(
                  physics: ScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      // mainAxisExtent: 200,
                      childAspectRatio: 1 / 2),
                  shrinkWrap: true,
                  itemCount: cubit.categoryProductModel.data.data.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                              alignment: AlignmentDirectional.bottomStart,
                              children: [
                                if (cubit.categoryProductModel.data.data[index]
                                        .discount !=
                                    0)
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
                                  cubit.categoryProductModel.data.data[index]
                                      .image,
                                  height: 200,
                                  // fit: BoxFit.cover,
                                ),
                              ]),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 6, horizontal: 2),
                            child: Text(
                              cubit.categoryProductModel.data.data[index].name,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(height: 1.1),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                cubit
                                    .categoryProductModel.data.data[index].price
                                    .toString(),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              if (cubit.categoryProductModel.data.data[index]
                                      .discount !=
                                  0)
                                Text(
                                  cubit.categoryProductModel.data.data[index]
                                      .oldPrice
                                      .toString(),
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: Colors.grey),
                                ),
                              Spacer(),
                              // IconButton(
                              //   icon: CircleAvatar(
                              //     child: Icon(
                              //       Icons.favorite_border,
                              //       size: 20,
                              //       color: Colors.white,
                              //     ),
                              //     backgroundColor: cubit.favorites[
                              //     cubit.homeModel.data.products[index].id]
                              //         ? Colors.red
                              //         : Colors.grey[500],
                              //     // Colors.grey[500],
                              //     maxRadius: 14,
                              //   ),
                              //   onPressed: () {
                              //     // favoriteCubit.changeFavorite(cubit.homeModel.data.products[index].id);
                              //     print(cubit.homeModel.data.products[index].id);
                              //     // print(SharedHelper.getToken);
                              //   },
                              // )
                            ],
                          )
                        ],
                      ),
                    );
                  }),
    );
  }
}
