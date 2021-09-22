import 'package:flutter/material.dart';
import 'package:shoplaza/views/productDetails/components/rating.dart';

class ProductDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Product Name -5 Kg'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              child: Text(
                'DEAL OF THE DAY',
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(color: Colors.redAccent),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              'EGP 85',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Text('+ shipping from EGP 11 to 6th of October'),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Rating(),
          ),
          Text(
            '(305 ratings)',
            style: TextStyle(color: Colors.blue),
          )
        ],
      ),
    );
  }
}
