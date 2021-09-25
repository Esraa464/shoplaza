import 'package:flutter/material.dart';

import 'grid_builder.dart';

class CategoriesGridView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 5,
          mainAxisExtent: 200,
        ),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (BuildContext ctx, index) {
          return GridBuilder();
        });
  }
}
