import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.network(
          'https://www.londondrugs.com/on/demandware.static/-/Sites-londondrugs-master/default/dw1bbbf571/products/L0304771/large/L0304771.JPG',
          width: 90,
          height: 90,
          fit: BoxFit.contain,
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            'electronic',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(35),
          child: Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.grey,
            size: 20,
          ),
        )
      ],
    );
  }
}

