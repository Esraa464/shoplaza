import 'package:flutter/material.dart';
import 'package:shoplaza/const/fonts.dart';

class CategoriesList extends StatelessWidget {
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
                text: 'Categories',
              ),
            ],
          ),
        ),
        SizedBox(
          height: 140,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 9,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        child: Image.network(
                          'https://www.londondrugs.com/on/demandware.static/-/Sites-londondrugs-master/default/dw1bbbf571/products/L0304771/large/L0304771.JPG',
                          height: 100,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Electronic',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
