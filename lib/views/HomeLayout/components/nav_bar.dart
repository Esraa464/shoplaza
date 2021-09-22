import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shoplaza/const/colors.dart';
import 'package:shoplaza/views/HomeLayout/cubit.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = HomeLayoutCubit.of(context);
    return CurvedNavigationBar(
      index: cubit.currentIndex,
      height: 45,
      backgroundColor: redColor,
      items: cubit.screens
          .map((e) => Icon(e[0], size: 25, color: redColor))
          .toList(),
      onTap: cubit.changeIndex,
    );
  }
}
