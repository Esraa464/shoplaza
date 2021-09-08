import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          // color: Colors.grey,
          height: 100,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
                height: 100,
                width: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  'electronic',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(35),
                child: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.grey,
                  size: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
    Center(
      child: Text('Categories'),
    );
  }
}
