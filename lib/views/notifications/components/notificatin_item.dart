import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/notifications/cubit.dart';

class NotificationItem extends StatelessWidget {
// final String title;
// final String subTitle;

  // const NotificationItem({Key key, this.title, this.subTitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final cubit = NotificationController.of(context);

    return BlocBuilder(
      bloc: cubit,
      builder: (context, state) => cubit.notificationModel== null
          ? Text('No result')
          : ListView.separated(
              itemCount: cubit.notificationModel.data.data.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(cubit.notificationModel.data.data[index].title),
                subtitle:
                    Text(cubit.notificationModel.data.data[index].message),
              ),
              separatorBuilder: (context, index) => Divider(),
            ),
    );
  }
}
