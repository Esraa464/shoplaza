import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/HomeLayout/states.dart';
import 'package:shoplaza/views/category_item/view.dart';
import 'package:shoplaza/views/favourit/view.dart';
import 'package:shoplaza/views/homeView/view.dart';
import 'package:shoplaza/views/settings/view.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutStates> {
  HomeLayoutCubit() : super(HomeLayoutInit());
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();

  static HomeLayoutCubit of(context) => BlocProvider.of(context);

  int currentIndex = 0;

  final List<List<dynamic>> screens = [
    [Icons.home, HomeView()],
    [Icons.category, CategoriesView()],
    [Icons.favorite, FavoriteView()],
    [Icons.settings, SettingsView()],
  ];

  void changeIndex(int value) {
    if (currentIndex == value) return;
    currentIndex = value;
    emit(HomeLayoutInit());
  }

  Widget get getCurrentView => screens[currentIndex][1];
}
