import 'package:flutter/material.dart';
import 'package:shoplaza/views/category_item/components/item.dart';
import 'package:shoplaza/views/productsCategory/view.dart';

class CategoriesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(10),
          child: GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductsCategory(),
                )),
            child: CategoryItem(),
          ),
        ),
      ),
    );
    Center(
      child: Text('Categories'),
    );
  }
}
