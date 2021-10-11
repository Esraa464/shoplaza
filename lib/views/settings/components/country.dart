import 'package:flutter/material.dart';
import 'package:shoplaza/views/addressCardsView/view.dart';

class Address extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15),
      child: InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AddressCardsView(),)),
        child: Row(
          children: [
            Text(
              'Address book',
              style: TextStyle(fontSize: 17, color: Colors.grey[600]),
            ),

          ],
        ),
      ),
    );
  }
}
