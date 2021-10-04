import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/contacts/contact_icons.dart';
import 'package:shoplaza/views/contacts/cubit.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final cubit=ContactController();
    return BlocProvider(
      create: (context) => ContactController()..getData(),
      child: Scaffold(
        appBar: AppBar(),
        body: ContactIcons(),
      ),
    );
  }

// Future<void> openLink(String url) async {
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'error' * 90;
//   }
// }
}
