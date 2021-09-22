import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoplaza/const/fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shoplaza/views/productDetails/view.dart';

class ProductsGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BoldFont(
                text: 'Home.products'.tr().toString(),
              )
            ],
          ),
        ),
        GridView.builder(

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
              return GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => ProductView(),)),
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey) ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://www.londondrugs.com/on/demandware.static/-/Sites-londondrugs-master/default/dw1bbbf571/products/L0304771/large/L0304771.JPG',

                        ),
                        Text('Apple MacBook pro'),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('25,000'),
                            Text(
                              '20.000',
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey),
                            ),
                            Container(

                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.grey[500]),
                              height: 25,
                              width: 25,
                              child: Icon(Icons.favorite_border,color: Colors.white,size: 20,),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ],
    );
  }
}
