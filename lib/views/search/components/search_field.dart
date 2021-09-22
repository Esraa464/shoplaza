import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.red,
      cursorHeight: 25,
      decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red)),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.red,
          )),
    );
  }
}
