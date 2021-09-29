import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/category_item/components/item.dart';
import 'package:shoplaza/views/homeView/cubit/category_controller.dart';

class CategoriesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = CategoryController()..getCategoryData();
    return BlocProvider(
        create: (BuildContext context) => controller,
        child: Scaffold(body: CategoryItem(controller)));
  }
}
