import 'package:flutter/material.dart';

class ExpansionTilee extends StatelessWidget {
  final String titleTxt;
  final String childTxt;

  const ExpansionTilee({Key key, this.titleTxt, this.childTxt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(titleTxt),
      children: [
        Padding(padding: const EdgeInsets.all(15), child: Text(childTxt))
      ],
    );
  }
}
