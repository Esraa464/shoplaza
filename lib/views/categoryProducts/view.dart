import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/colors.dart';
import 'package:shoplaza/views/carts/cubits/cart_cubit.dart';
import 'package:shoplaza/views/categoryProducts/components/category_item.dart';
import 'package:shoplaza/views/categoryProducts/cubit.dart';

class CategoryProducts extends StatelessWidget {
  final int id;

  CategoryProducts(this.id);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CategoryProductController()..getProduct(id),
        ),
        BlocProvider(
          create: (context) => CartController(),
        )
      ],
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: redColor,
          ),
          body: CategoryItem()),
    );
  }
}
