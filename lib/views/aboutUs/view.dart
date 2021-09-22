import 'package:flutter/material.dart';
import 'package:shoplaza/const/colors.dart';
import 'package:shoplaza/views/aboutUs/components/expension_tile.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 40),
        children: [
          Text(
            'Ask us a question',
            style: TextStyle(color: redColor, fontSize: 25),
            textAlign: TextAlign.center,
          ),
          ExpansionTilee(
              titleTxt: 'What is our vision?',
              childTxt:
                  "We will live each day as though I had all the power and influence necessary to make it a perfect world. Through listening to and serving others, I will learn new ideas and gain different perspectives. I will strive to gain mastery over life’s challenges through increasing my circle of influence and de-emphasizing those areas of concern over which I have no control."),
          ExpansionTilee(
              titleTxt: 'What is our vision?',
              childTxt:
                  "We will live each day as though I had all the power and influence necessary to make it a perfect world. Through listening to and serving others, I will learn new ideas and gain different perspectives. I will strive to gain mastery over life’s challenges through increasing my circle of influence and de-emphasizing those areas of concern over which I have no control."),
          ExpansionTilee(
              titleTxt: 'What is our vision?',
              childTxt:
                  "We will live each day as though I had all the power and influence necessary to make it a perfect world. Through listening to and serving others, I will learn new ideas and gain different perspectives. I will strive to gain mastery over life’s challenges through increasing my circle of influence and de-emphasizing those areas of concern over which I have no control."),
          ExpansionTilee(
              titleTxt: 'What is our vision?',
              childTxt:
                  "We will live each day as though I had all the power and influence necessary to make it a perfect world. Through listening to and serving others, I will learn new ideas and gain different perspectives. I will strive to gain mastery over life’s challenges through increasing my circle of influence and de-emphasizing those areas of concern over which I have no control."),
          ExpansionTilee(
              titleTxt: 'What is our vision?',
              childTxt:
                  "We will live each day as though I had all the power and influence necessary to make it a perfect world. Through listening to and serving others, I will learn new ideas and gain different perspectives. I will strive to gain mastery over life’s challenges through increasing my circle of influence and de-emphasizing those areas of concern over which I have no control."),
        ],
      ),
    );
  }
}
