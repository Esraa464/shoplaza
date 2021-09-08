import 'package:flutter/material.dart';
import 'package:shoplaza/const/fonts.dart';

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
              BoldFont(text: 'Products',),
            ],
          ),
        ),
        GridView.builder(
          physics:ScrollPhysics() ,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              mainAxisExtent: 200,
            ),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                // height: 50,
                alignment: Alignment.center,
                child: Text(''),
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(15)),
              );
            }),
      ],
    );
  }
}
