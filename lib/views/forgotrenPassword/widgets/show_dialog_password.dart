import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoplaza/views/forgotrenPassword/widgets/alert_dialog_content.dart';

Widget alertDialog(){
  return AlertDialog(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)),
    title: Center(
        child: Text(
          'Confirm Code',
          style: TextStyle(fontSize: 20),
        )),
    content: Container(
      height: 150,
      child: AlertContent(),
    ),
  );
}