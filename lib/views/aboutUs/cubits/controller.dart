
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/variables.dart';
import 'package:shoplaza/views/aboutUs/model.dart';
import 'package:shoplaza/views/aboutUs/states.dart';

class AboutUsController extends Cubit<AboutUsStates> {
  AboutUsController() : super(AboutUsInitial());

  static AboutUsController of(context) => BlocProvider.of(context);

  AboutUsModel aboutUsModel;

  Future<void> getData() async {
    emit(AboutUsLoading());
    try{
      final response = await Dio().get(
          BASE_URL + 'faqs',
          // options: dioOptions
      );
      aboutUsModel = AboutUsModel.fromJson(response.data);
    }catch(e){
      print(e);
    }
    emit(AboutUsInitial());
  }

}
