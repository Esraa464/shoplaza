import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shoplaza/views/categoryProducts/view.dart';
import 'package:shoplaza/views/homeView/cubit/category_controller.dart';
import 'package:shoplaza/views/homeView/states/category_states.dart';

class CategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = CategoryController.of(context);

    return BlocBuilder<CategoryController, CategoryStates>(
      builder: (context, state) => state is CategoryLoading
          ? LinearProgressIndicator()
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
                      itemCount: cubit.categoryModel.data.data.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(5),
                          child: InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CategoryProducts(
                                      cubit.categoryModel.data.data[index].id),
                                )),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                  child: Image.network(
                                    cubit.categoryModel.data.data[index].image,
                                    height: 100,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  cubit.categoryModel.data.data[index].name,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
    );
  }
}
