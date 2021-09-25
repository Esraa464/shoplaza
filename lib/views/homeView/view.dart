import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/homeView/components/products_gridView.dart';
import 'package:shoplaza/views/homeView/states/home_states.dart';


import 'components/categories_list.dart';
import 'components/promotion slider.dart';
import 'cubit/category_controller.dart';
import 'cubit/home_controller.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => HomeController()..getData(),
        ),
        BlocProvider(
          create: (BuildContext context) => CategoryController()..getCategoryData(),
        )
      ],
      child: Scaffold(
        body: BlocBuilder<HomeController, HomeStates>(
          builder: (context, state) => state is HomeLoading
              ? CircularProgressIndicator()
              : ListView(
                  physics: ScrollPhysics(),
                  // padding: EdgeInsets.symmetric(horizontal: 10),
                  children: [
                    PromotionSlider(),
                    CategoriesList(),
                    ProductsGridView(),
                  ],
                ),
        ),
      ),
    );
    BlocProvider(
      create: (BuildContext context) => HomeController()..getData(),
    );
  }
}
