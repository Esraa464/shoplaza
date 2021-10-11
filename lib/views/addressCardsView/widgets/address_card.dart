import 'package:flutter/material.dart';
import 'package:shoplaza/const/colors.dart';
import 'package:shoplaza/views/addressCardsView/cubits/address_cubit.dart';
import 'package:shoplaza/views/addressCardsView/models/get_address_model.dart';
import 'package:shoplaza/views/addressCardsView/widgets/address_text_font.dart';
import 'package:shoplaza/views/checkOut/controller.dart';
import 'package:shoplaza/views/editAddress/view.dart';

import '../view.dart';

class AddressCard extends StatelessWidget {
  final Address address;
  final bool isSelectable;
  final bool isEditable;

  const AddressCard(
      {Key key,
      this.address,
      this.isSelectable = false,
      this.isEditable = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: Colors.grey),
        ),
        height: MediaQuery.of(context).size.height / 3.3,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11),
          child: address == null
              ? TextButton(
                  onPressed: () async {
                    final address =
                        await Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => AddressCardsView(
                        isSelectable: true,
                      ),
                    ));
                    if (address != null) {
                      CheckOutController.of(context).selectAddress(address);
                    }
                  },
                  child: Text('Choose Address'))
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        if (isEditable)
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        EditAddressView(address: address),
                                  ),
                                );
                              },
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: redColor,
                                    fontSize: 20),
                              )),
                        IconButton(
                            icon: Icon(
                              Icons.cancel,
                              color: redColor,
                              size: 25,
                            ),
                            onPressed: () {
                              if (isEditable) {
                                AddressController.of(context)
                                    .removeFromCards(address.id);
                              } else {
                                CheckOutController.of(context)
                                    .selectAddress(null);
                              }
                            }),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          address.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        AddressDetails(
                          title: address.city,
                        ),
                        AddressDetails(title: address.region),
                        AddressDetails(title: address.details),
                        AddressDetails(
                          title: address.notes,
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1.5,
                    ),
                    if (isSelectable)
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context, address);
                          },
                          child: Text(
                            'SELECT THIS ADDRESS',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, color: redColor),
                          ),
                        ),
                      )
                  ],
                ),
        ),
      ),
    );
  }
}
