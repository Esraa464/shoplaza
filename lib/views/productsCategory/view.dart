import 'package:flutter/material.dart';
import 'package:shoplaza/views/productDetails/view.dart';

import 'package:shoplaza/views/search/view.dart';

import 'components/grid_builder.dart';
import 'components/grid_view.dart';
import 'components/product_Price.dart';

class ProductsCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Electronics',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeSearchView(),
                )),
          )
        ],
      ),
      body: CategoriesGridView(),
    );
  }
}
