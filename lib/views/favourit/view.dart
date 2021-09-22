import 'package:flutter/material.dart';

import 'components/fovourit_item.dart';

class FavoriteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemCount: 10,
          separatorBuilder: (context, index) => Divider(
            thickness: 2,
          ),
          padding: EdgeInsets.all(15),
          itemBuilder: (context, index) =>FavourItem(),
        ),
      ),
    );
  }
}
