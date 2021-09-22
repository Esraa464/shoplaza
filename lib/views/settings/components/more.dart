import 'package:flutter/material.dart';

class More extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Icon(Icons.filter_9_plus_outlined),
        SizedBox(
          width: 10,
        ),
        Text('More')
      ],
    );
  }
}
