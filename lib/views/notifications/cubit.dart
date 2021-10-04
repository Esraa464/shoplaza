import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/variables.dart';
import 'package:shoplaza/views/notifications/model.dart';
import 'package:shoplaza/views/notifications/states.dart';

class NotificationController extends Cubit<NotificationStates> {
  NotificationController() : super(NotificationInitial());

  static NotificationController of(context) => BlocProvider.of(context);
  NotificationModel notificationModel;

  Future<void> getNotification() async {
    emit(NotificationLoading());
    try {
      final response =
          await Dio().get(BASE_URL + 'notifications', options: dioOptions);
      notificationModel = NotificationModel.fromJson(response.data);
      print(response.data);
    } catch (e) {
      print(e);
    }
    emit(NotificationInitial());
  }
}
