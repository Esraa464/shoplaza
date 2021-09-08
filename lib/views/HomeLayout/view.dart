import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/colors.dart';
import 'package:shoplaza/views/HomeLayout/cubit.dart';
import 'package:shoplaza/views/HomeLayout/states.dart';
import 'package:shoplaza/views/HomeLayout/units/nav_bar.dart';
import 'package:shoplaza/views/category/view.dart';
import 'package:shoplaza/views/favourit/view.dart';
import 'package:shoplaza/views/home/view.dart';
import 'package:shoplaza/views/search/view.dart';
import 'package:shoplaza/views/settings/view.dart';

class HomeLayout extends StatefulWidget {
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeLayoutCubit(),
      child: BlocBuilder<HomeLayoutCubit, HomeLayoutStates>(
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeSearch(),
                      )),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              )
            ],
            backgroundColor: redColor,
            elevation: 0,
          ),
          bottomNavigationBar: NavBar(),
          body: HomeLayoutCubit.of(context).getCurrentView,
        ),
      ),
    );
  }
}
