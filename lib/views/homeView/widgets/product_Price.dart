import 'package:flutter/material.dart';



class ProductPrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          '25,000',
          style: TextStyle(color: Colors.red[400]),
        ),
        Text(
          '20.000',
          style: TextStyle(
              decoration: TextDecoration.lineThrough, color: Colors.grey),
        ),
        Container(
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.grey[500]),
          height: 25,
          width: 25,
          child: IconButton(
            onPressed: (){
        print('hi'*90);
            },
            icon: Icon(
              Icons.favorite_border,
              size: 20,
            ),
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
