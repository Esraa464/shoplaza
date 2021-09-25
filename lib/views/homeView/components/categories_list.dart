import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shoplaza/views/homeView/cubit/category_controller.dart';
import 'package:shoplaza/views/homeView/states/category_states.dart';


class CategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = CategoryController.of(context).categoryModel.data;

    return BlocBuilder<CategoryController, CategoryStates>(
      builder: (context, state) => state is CategoryLoading
          ? CircularProgressIndicator()
          : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BoldFont(
                        text: 'Home.categories'.tr(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 170,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: category.data.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                                child: Image.network(
                                  category.data[index].image,
                                  height: 100,
                                ),
                              ),
                              Spacer(),
                              Text(
                                category.data[index].name,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              Spacer(),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
    );
  }
}
