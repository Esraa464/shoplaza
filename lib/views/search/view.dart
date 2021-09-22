import 'package:flutter/material.dart';
import 'package:shoplaza/const/colors.dart';

import 'components/search_field.dart';

class HomeSearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: redColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('search'),
              ],
            ),
            SearchField()
          ],
        ),
      ),
    );
  }
}
