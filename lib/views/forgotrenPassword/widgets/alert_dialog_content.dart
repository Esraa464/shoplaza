import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';


class AlertContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PinCodeTextField(
          pinBoxColor: Colors.grey[300],
          defaultBorderColor: Colors.grey[300],
          pinBoxBorderWidth: 0.0,
          pinBoxHeight: 50,
          pinBoxWidth: 30,
          pinBoxRadius: 5,
          maxLength: 5,
          autofocus: true,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 20),
          child: RichText(
              text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: 'you can resend code after',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13
                    )),
                TextSpan(text: '60sec',style: TextStyle(color: Colors.red,fontSize: 13))
              ])),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: Text('Confirm',style: TextStyle(color: Colors.white),),
          ),
          height: 40,
          width: 250,
        )

      ],
    );
  }
}