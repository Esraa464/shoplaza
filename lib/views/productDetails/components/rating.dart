import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoplaza/const/colors.dart';

class Rating extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBar.builder(
          itemSize: 20,
          initialRating: 3,
          minRating: .5,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 1),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: redColor,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        SizedBox(
          width: 130,
        ),
        Icon(
          Icons.share,
          color: redColor,
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.favorite_border,
          color: redColor,
        )
      ],
    );
  }
}
