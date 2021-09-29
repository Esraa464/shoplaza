import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/homeView/cubit/home_controller.dart';
import 'package:shoplaza/views/homeView/states/home_states.dart';


class PromotionSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final banners = HomeController.of(context).homeModel.data.banners;
    final cubit = HomeController.of(context);

    return BlocBuilder<HomeController, HomeStates>(
        builder: (context, state) => state is HomeLoading
            ? LinearProgressIndicator()
            : CarouselSlider.builder(
                options: CarouselOptions(
                  viewportFraction: .9,
                  reverse: true,
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  scrollDirection: Axis.vertical,
                  autoPlay: true,
                ),
                itemCount: cubit.homeModel.data.banners.length,
                itemBuilder: (context, index, realIndex) => Container(
                  color: Colors.white,
                  width: 230,
                  child: Image.network(
                    cubit.homeModel.data.banners[index].image,
                    height: 150,
                  ),
                ),
              ));
  }
}
