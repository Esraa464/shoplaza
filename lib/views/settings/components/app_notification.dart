import 'package:flutter/material.dart';
import 'package:shoplaza/views/notifications/view.dart';

class AppNotification extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        InkWell(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationView(),)),
          child: Text(
            'App Notifications',
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),
        // Switch(value: value, onChanged:(value) => )
      ],
    );
  }
}
