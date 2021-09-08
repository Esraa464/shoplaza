import 'package:flutter/material.dart';
import 'package:shoplaza/const/colors.dart';

class HomeSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: redColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('search'),
              ],
            ),
            TextFormField(
              cursorColor: Colors.red,
              cursorHeight: 25,
              decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.red,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
