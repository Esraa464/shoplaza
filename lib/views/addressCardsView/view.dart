import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/addressCardsView/components/add_new_address.dart';
import 'package:shoplaza/views/addressCardsView/components/cards_list.dart';
import 'package:shoplaza/views/addressCardsView/components/yourAddress_txt.dart';
import 'package:shoplaza/views/addressCardsView/cubits/address_cubit.dart';

class AddressCardsView extends StatelessWidget {
  final bool isSelectable;

  const AddressCardsView({Key key, this.isSelectable = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddressController(isSelectable)..getAddress(),
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          title: Text(
            'Address book',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              AddAddressButton(),
              // Spacer(),
              YourAddress(),
              CardsList(),
            ],
          ),
        ),
      ),
    );
  }
}
