
import 'package:flutter/material.dart';
import 'package:shoplaza/views/homeView/widgets/product_Price.dart';


class GridBuilder extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child:
      // InkWell(
      //   onTap: () => Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => ProductView(),
      //       )),
      //   child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              'https://www.londondrugs.com/on/demandware.static/-/Sites-londondrugs-master/default/dw1bbbf571/products/L0304771/large/L0304771.JPG',
              height: 100,
            ),
            Text('Apple MacBook pro'),
            SizedBox(
              height: 10,
            ),
            ProductPrice()
          ],
        ),
      // ),
    );
  }
}
