import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/colors.dart';
import 'package:shoplaza/views/addressCardsView/widgets/address_card.dart';
import 'package:shoplaza/views/checkOut/controller.dart';
import 'package:shoplaza/views/checkOut/states.dart';

class CheckOut extends StatefulWidget {
  final double total;

  const CheckOut({Key key, this.total}) : super(key: key);


  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  int selectedRadioTile;


  @override
  void initState() {
    super.initState();
    selectedRadioTile = 0;
  }

  setSelectedColorRadio(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CheckOutController(),
      child: BlocBuilder<CheckOutController, CheckOutStates>(
        builder: (context, state) {
          final controller = CheckOutController.of(context);
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Checkout',
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: ListView(
              children: [
                Row(
                  children: [
                    Text('Your Address'),
                    DropdownMenuItem(child: Icon(Icons.keyboard_arrow_down))
                  ],
                ),
                AddressCard(address: controller.address,isEditable: false),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RadioListTile(
                      value: 1,
                      groupValue: selectedRadioTile,
                      title: Text('Visa'),
                      //  selected:true,
                      onChanged: (val) {
                        setSelectedColorRadio(val);
                      },
                      activeColor: Colors.red,
                    ),
                    RadioListTile(
                      value: 2,
                      // selected:false ,
                      groupValue: selectedRadioTile,
                      activeColor: Colors.red,
                      title: Text('Cash'),
                      onChanged: (value) {
                        setSelectedColorRadio(value);
                      },
                    )
                  ],
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Total: ',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        widget.total.toString(),
                        style: TextStyle(fontSize: 25, color: redColor),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'EGP',
                        style: TextStyle(fontSize: 25, color: redColor),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(color: Colors.grey),
                  ),
                  height: 70,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
