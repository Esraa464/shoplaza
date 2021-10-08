import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/productDetails/components/add_to_card.dart';
import 'package:shoplaza/views/productDetails/components/product_details.dart';
import 'package:shoplaza/views/productDetails/cubit.dart';
import 'package:shoplaza/views/productDetails/states.dart';

class ProductDetailsView extends StatelessWidget {
  final int id;

  ProductDetailsView(this.id);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductDetailsController()..getProductData(this.id),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Details',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: BlocBuilder<ProductDetailsController, ProductDetailsStates>(
          builder: (context, state) => state is ProductDetailsLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          ProductDetails(
                            image: ProductDetailsController.of(context)
                                .productDetailsModel
                                .data
                                .image,
                            price: ProductDetailsController.of(context)
                                .productDetailsModel
                                .data
                                .price,
                            name: ProductDetailsController.of(context)
                                .productDetailsModel
                                .data
                                .name,
                            id: ProductDetailsController.of(context)
                                .productDetailsModel
                                .data
                                .id,
                            description: ProductDetailsController.of(context)
                                .productDetailsModel
                                .data
                                .description,
                            isFavorite: ProductDetailsController.of(context)
                                .productDetailsModel
                                .data.inFavorites ,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    AddToCard(
                      id: ProductDetailsController.of(context)
                          .productDetailsModel
                          .data
                          .id,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
