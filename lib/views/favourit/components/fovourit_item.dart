import 'package:flutter/material.dart';

class FavourItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Image.network(
          'https://www.londondrugs.com/on/demandware.static/-/Sites-londondrugs-master/default/dw1bbbf571/products/L0304771/large/L0304771.JPG',width: 80,height: 80,fit: BoxFit.contain,),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Electron ',
                  // overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('25,000',style: TextStyle(color: Colors.red[900]),),
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
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 20,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
