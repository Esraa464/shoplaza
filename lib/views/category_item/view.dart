import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/homeView/cubit/category_controller.dart';

class CategoriesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categories = CategoryController.of(context).categoryModel.data;
    return BlocProvider(
        create: (BuildContext context) =>
            CategoryController()..getCategoryData(),
        child: Scaffold(
            body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: categories.data.length,
          itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    categories.data[index].image,
                    width: 90,
                    height: 90,
                    fit: BoxFit.contain,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      'electronic',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(35),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20,
                      ),
                      color: Colors.grey,
                      onPressed: () {
                        print('hi' * 90);
                      },
                    ),
                  )
                ],
              )),
        )));
  }
}
