import 'package:flutter/material.dart';
import 'components/app_notification.dart';
import 'components/country.dart';
import 'components/language.dart';
import 'components/more.dart';

class SettingsView extends StatefulWidget {
  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App Settings'),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          children: [
            Row(
              children: [Icon(Icons.notifications_none), Text('Notifications')],
            ),
            Divider(),
            SizedBox(
              height: 15,
            ),
            AppNotification(),
            SizedBox(
              height: 20,
            ),
            More(),
            Divider(),
            Language(),
            Address()
          ],
        ));
  }
}
