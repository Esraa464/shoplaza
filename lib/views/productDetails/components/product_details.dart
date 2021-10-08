import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/colors.dart';
import 'package:shoplaza/views/productDetails/cubit.dart';
import 'package:shoplaza/views/productDetails/states.dart';

class ProductDetails extends StatefulWidget {
  final String image;
  final String name;
  final int price;
  final int id;
  final String description;
  final bool isFavorite;

  const ProductDetails(
      {Key key,
      this.image,
      this.name,
      this.price,
      this.id,
      this.description,
      this.isFavorite})
      : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    print(widget.image);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: BlocBuilder<ProductDetailsController, ProductDetailsStates>(
        builder: (context, state) => state is ProductDetailsLoading
            ? CircularProgressIndicator()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(alignment: AlignmentDirectional.bottomStart, children: [
                    // if (cubit.homeModel.data.products[index]
                    //     .discount !=
                    //     0)
                    Container(
                      child: Text(
                        'Discount',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      color: Colors.red,
                      // padding: EdgeInsets.all(.8),
                    ),
                    Image.network(
                      widget.image,
                      // height: 200,
                      // fit: BoxFit.cover,
                    ),
                  ]),
                  // Container(
                  //   child: Image.network(image),
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      widget.name,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Text('Price :', style: TextStyle(fontSize: 16)),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          child: Text(
                            widget.price.toString(),
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          decoration: BoxDecoration(color: Colors.redAccent),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                        ),
                        IconButton(
                          icon: widget.isFavorite
                              ? Icon(
                                  Icons.favorite,
                                  color: redColor,
                                )
                              : Icon(
                                  Icons.favorite_outline,
                                  color: Colors.grey,
                                ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Description :',
                    style: TextStyle(fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      ProductDetailsController.of(context)
                          .productDetailsModel
                          .data
                          .description,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  // Text('+ shipping from EGP 11 to 6th of October'),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 50),
                  //   child: Rating(),
                  // ),
                  // Text(
                  //   '(305 ratings)',
                  //   style: TextStyle(color: Colors.blue),
                  // )
                ],
              ),
      ),
    );
  }
}
