import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Icon(
            Icons.person_outline,
            size: 100,
            color: Colors.grey,
          ),
          width: 130,
          height: 130,
          decoration: BoxDecoration(
              // color: Colors.red,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: TextButton(
            child: Text('Change Profile Photo',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w500)),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
