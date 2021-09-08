import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget appBar(txt) {
  return AppBar(
    // actions: [],
    elevation: 0,
    title: Text(
      '$txt',
      style: TextStyle(color: Colors.black,),
    ),
    iconTheme: IconThemeData(color: Colors.black),
  );
}
