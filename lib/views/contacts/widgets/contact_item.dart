import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactItem extends StatelessWidget {
  final String img;
  final Function press;

  const ContactItem({Key key,  this.img, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async{
        print('hi eso');
        const url='https://www.google.com/';
        if(await canLaunch(url)){
          await launch(url);
        }else{
          throw'Could not launch $url';
        }
      },
      child: Container(
        child: Image.network(
          img,
          height: 70,
        ),
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
      ),
    );
  }
}
