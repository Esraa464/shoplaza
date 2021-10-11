import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/addAddressView/components/fields.dart';
import 'package:shoplaza/views/addAddressView/cubits/addAddress_cubit.dart';
import 'package:shoplaza/views/addAddressView/states.dart';
import 'package:shoplaza/views/addressCardsView/view.dart';
import 'package:shoplaza/widgets/main_button.dart';

class AddAddressView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddAddressController(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Add New Address',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          children: [
            Fields(),
            BlocBuilder<AddAddressController, AddAddressStates>(
                builder: (context, state) => MainButton(
                    text: 'Save',
                    press: () async {
                      final message =
                          await AddAddressController.of(context).addAddress();
                      if (message != 'ok') {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(message),
                        ));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Your Address Added Successfully')));
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddressCardsView(),
                            ));
                      }
                    }))
          ],
        ),
      ),
    );
  }
}
