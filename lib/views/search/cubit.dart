import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/variables.dart';
import 'package:shoplaza/views/search/model.dart';
import 'package:shoplaza/views/search/states.dart';

class SearchController extends Cubit<SearchStates> {
  SearchController() : super(SearchInitial());

  static SearchController of(context) => BlocProvider.of(context);

  SearchModel searchModel;

  Future<void> search(String text) async {
    emit(SearchLoading());
    try {
      final response = await Dio().post(BASE_URL + 'products/search',
          options: dioOptions, data: {"text": text});
      searchModel = SearchModel.fromJson(response.data);
      // print(searchModel.data.toJson());
      print(response.data);
    } catch (e, s) {
      print(e);
      print(s);
    }
    emit(SearchInitial());
  }
}
