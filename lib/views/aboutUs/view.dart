import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/colors.dart';
import 'package:shoplaza/views/aboutUs/components/expension_tile.dart';
import 'package:shoplaza/views/aboutUs/cubits/controller.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AboutUsController()..getData(),
      child: Scaffold(
          body:ListView(
            padding: EdgeInsets.symmetric(vertical: 50),
        children: [
          Text(
            'Ask us a question',
            style: TextStyle(color: redColor, fontSize: 25),
            textAlign: TextAlign.center,
          ),
          ExpansionTilee(),
        ],
      )),
    );
  }
}
