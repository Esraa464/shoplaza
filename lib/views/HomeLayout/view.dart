import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/colors.dart';
import 'package:shoplaza/views/HomeLayout/cubit.dart';
import 'package:shoplaza/views/HomeLayout/states.dart';
import 'package:shoplaza/views/HomeLayout/widgets/app_bar.dart';

import 'package:shoplaza/views/search/view.dart';

import 'components/nav_bar.dart';
import 'widgets/drawer_list_tile.dart';

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
          key: HomeLayoutCubit.scaffoldKey,
          drawer: Container(
              width: MediaQuery.of(context).size.width * .8,
              child: Drawer(
                child: DrawerView(),
              )),
          appBar: homeAppBar(context),
          bottomNavigationBar: NavBar(),
          body: HomeLayoutCubit.of(context).getCurrentView,
        ),
      ),
    );
  }
}
