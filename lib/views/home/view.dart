import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shoplaza/const/colors.dart';
import 'package:shoplaza/const/fonts.dart';
import 'package:shoplaza/views/home/components/bottom_nav_bar.dart';
import 'package:shoplaza/views/home/components/products_gridView.dart';
import 'package:shoplaza/views/home/components/promotion%20slider.dart';

import 'components/categories_list.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // backgroundColor: redColor,

        body: ListView(
            physics: ScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 10),
            children: [
          PromotionSlider(),
          CategoriesList(),
          ProductsGridView()
        ]));
  }
}
