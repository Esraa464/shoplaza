import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/categoryProducts/cubit.dart';
import 'package:shoplaza/views/categoryProducts/view.dart';
import 'package:shoplaza/views/homeView/cubit/category_controller.dart';
import 'package:shoplaza/views/homeView/states/category_states.dart';

class CategoryItem extends StatelessWidget {
  final CategoryController controller;
  CategoryItem(this.controller);
  @override
  Widget build(BuildContext context) {
    // final category = CategoryController.of(context).categoryModel.data;
    // final categoryProductController = CategoryProductController.of(context);
    // final cubit = CategoryController.of(context);
    return BlocBuilder<CategoryController, CategoryStates>(
      builder: (context, state) => state is CategoryLoading
          ? CircularProgressIndicator()
          : ListView.separated(
              separatorBuilder: (context, index) => Divider(
                    height: 1,
                    thickness: 2,
                  ),
              physics: BouncingScrollPhysics(),
              itemCount: controller.categoryModel.data.data.length,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network(
                          controller.categoryModel.data.data[index].image,
                          width: 90,
                          height: 90,
                          fit: BoxFit.contain,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            controller.categoryModel.data.data[index].name,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 20,
                            ),
                            color: Colors.grey,
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => CategoryProducts(
                              //               categoryProductController
                              //                   .categoryProductModel
                              //                   .data
                              //                   .data[index]
                              //                   .id,
                              //             )));
                            },
                          ),
                        )
                      ],
                    ),
                  )),
    );
  }
}
