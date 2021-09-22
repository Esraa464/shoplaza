import 'package:flutter/material.dart';

class Country extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Text(
            'Country',
            style: TextStyle(fontSize: 17, color: Colors.grey[600]),
          ),

        ],
      ),
    );
  }
}
