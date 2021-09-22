import 'package:flutter/material.dart';

class BoldFont extends StatelessWidget {
  final String text;

  BoldFont({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),);
  }
}

dynamic Token = '';