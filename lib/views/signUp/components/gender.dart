import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  int selectedRadio;

  void changeRadio(value) {
  setState(() {
    selectedRadio = value;
  });
  }

  @override
  void initState() {
    selectedRadio = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
      child: Row(
        children: [
         Text('Gender',style: TextStyle(fontSize: 15,color: Colors.grey[600]),),
          Expanded(
            child: RadioListTile(
              value: 1,
              groupValue: selectedRadio,
              onChanged: (value) => changeRadio(value),
              activeColor: Colors.red,
              title: Text(' Male',style: TextStyle(fontSize: 10),),
            ),
          ),
          Expanded(
            child: RadioListTile(
              value: 2,
              groupValue: selectedRadio,
              onChanged: (value) => changeRadio(value),
              title: Text(' Female',style: TextStyle(fontSize: 10),),
            ),
          )
        ],
      ),
    );
  }
}
