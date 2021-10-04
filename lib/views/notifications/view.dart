import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/notifications/components/notificatin_item.dart';
import 'package:shoplaza/views/notifications/cubit.dart';

class NotificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return BlocProvider(
    // final cubit = NotificationController.of(context);
    create: (context) =>NotificationController()..getNotification(),
      child: Scaffold(
        appBar: AppBar(),
        body: NotificationItem()
      ),
    );
  }
}
