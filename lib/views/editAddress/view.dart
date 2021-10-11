import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/addAddressView/states.dart';
import 'package:shoplaza/views/addressCardsView/models/get_address_model.dart';
import 'package:shoplaza/views/editAddress/components/fields.dart';
import 'package:shoplaza/views/editAddress/cubit.dart';
import 'package:shoplaza/widgets/main_button.dart';

class EditAddressView extends StatelessWidget {
  final Address address;
  const EditAddressView({Key key, this.address}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditAddressController(address),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Edit Address',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          children: [
            EditAddressFields(),
            BlocBuilder<EditAddressController, AddAddressStates>(
              builder: (context, state) =>
                  MainButton(text: 'Save Changes', press: () {
                    EditAddressController.of(context).update(address.id);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
