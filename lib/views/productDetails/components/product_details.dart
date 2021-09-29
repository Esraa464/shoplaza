import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/homeView/cubit/home_controller.dart';
import 'package:shoplaza/views/homeView/states/home_states.dart';
import 'package:shoplaza/views/productDetails/components/rating.dart';
import 'package:shoplaza/views/productDetails/view.dart';

class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final cubit = HomeController.of(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: BlocBuilder<HomeController, HomeStates>(
        builder: (context, state) => state is HomeLoading
            ? CircularProgressIndicator()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image.network(""
                      // ProductView.image,
                    ),
// height: MediaQuery.of(context).size.height*.75,
                  ),
                  Text(ProductView.name),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      child: Text(
                        'DEAL OF THE DAY',
                        style: TextStyle(color: Colors.white),
                      ),
                      decoration: BoxDecoration(color: Colors.redAccent),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'EGP 85',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text('+ shipping from EGP 11 to 6th of October'),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Rating(),
                  ),
                  Text(
                    '(305 ratings)',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
      ),
    );
  }
}
