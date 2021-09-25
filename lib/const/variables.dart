import 'package:dio/dio.dart';
import 'package:shoplaza/core/shared_helper.dart';

const String BASE_URL = "https://student.valuxapps.com/api/";

Map<String, dynamic> headers = {
  if (SharedHelper.isLogged) 'Authorization': SharedHelper.getToken,
  // 'Content-Type':
};

final dioOptions = Options(headers: headers);
