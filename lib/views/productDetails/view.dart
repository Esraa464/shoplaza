import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoplaza/const/colors.dart';
import 'package:shoplaza/views/productDetails/components/add_to_card.dart';
import 'package:shoplaza/views/productDetails/components/product_details.dart';
import 'package:shoplaza/views/productDetails/components/rating.dart';

class ProductView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  child: Image.network(
                    'https://www.londondrugs.com/on/demandware.static/-/Sites-londondrugs-master/default/dw1bbbf571/products/L0304771/large/L0304771.JPG',
                  ),
// height: MediaQuery.of(context).size.height*.75,
                ),
                ProductDetails(),
              ],
            ),
          ),
          Divider(),
          AddToCard(),
        ],
      ),
    );
  }
}
