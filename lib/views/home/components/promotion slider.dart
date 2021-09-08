import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PromotionSlider extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  CarouselSlider(
      options: CarouselOptions(
          viewportFraction: .9,
          reverse: true,
          enlargeCenterPage: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          scrollDirection: Axis.vertical,
          autoPlay: true),
      items: [
        ListView.builder(
          itemBuilder: (context, index) =>
              Container(
                color: Colors.white,
                width: 230,
                child: Image.network(
                  'https://www.londondrugs.com/on/demandware.static/-/Sites-londondrugs-master/default/dw1bbbf571/products/L0304771/large/L0304771.JPG',
                  height: 150,
                ),
              ),
        )
      ],
    );
  }
}
