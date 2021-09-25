import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoplaza/const/fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shoplaza/views/homeView/cubit/home_controller.dart';

import 'package:shoplaza/views/productDetails/view.dart';

class ProductsGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final products = HomeController.of(context).homeModel.data.products;

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
              itemCount: 10,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                          alignment:AlignmentDirectional.bottomStart ,
                          children: [
                      if(products[index].discount!=0)  Container(
                          child: Text(
                            'Discount',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          color: Colors.red,
                          padding: EdgeInsets.all(.8),
                        ),
                        Image.network(
                          products[index].image,
                          height: 200,
                          // fit: BoxFit.cover,
                        ),
                      ]),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 2),
                        child: Text(
                          products[index].name,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(height: 1.1),
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            products[index].price.toString(),
                          ),
                          if (products[index].discount != 0)
                            Text(
                              products[index].oldPrice.toString(),
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
                              backgroundColor: Colors.grey[500],
                              maxRadius: 14,
                            ),
                            onPressed: () {
                              print('hi' * 90);
                            },
                          )
                        ],
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
