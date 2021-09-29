import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoplaza/const/colors.dart';
import 'package:shoplaza/views/homeView/cubit/home_controller.dart';
import 'package:shoplaza/views/homeView/states/home_states.dart';
import 'package:shoplaza/views/productDetails/components/add_to_card.dart';
import 'package:shoplaza/views/productDetails/components/product_details.dart';
import 'package:shoplaza/views/productDetails/components/rating.dart';

class ProductView extends StatelessWidget {
  static String image;
  static String name;
  static int discount;
  static double oldPrice;
  static double price;
  static String description;
  // static List<String> images;
  static bool inCart;
  static bool inFavorites;

  ProductView(
      String image,
      String name,
      int discount,
      double oldPrice,
      double price,
      String description,
      // List<String> images,
      bool inCart,
      bool inFavorites);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeController()..getData(),
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ProductDetails(),
                ],
              ),
            ),
            Divider(),
            AddToCard(),
          ],
        ),
      ),
    );
  }
}
