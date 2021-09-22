import 'package:flutter/material.dart';

class AppNotification extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          'App Notifications',
          style: TextStyle(color: Colors.grey[600]),
        ),
        // Switch(value: value, onChanged:(value) => )
      ],
    );
  }
}
