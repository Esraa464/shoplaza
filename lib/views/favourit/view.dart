import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        separatorBuilder: (context, index) => Divider(
          thickness: 2,
        ),
        padding: EdgeInsets.all(15),
        itemBuilder: (context, index) => Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              height: 100,
              width: 100,
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    'electron icdfghjkl lkjhgfsdfghjkl ',
                    // overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('3333'),
                      Text(
                        '4444',
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            size: 20,
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
