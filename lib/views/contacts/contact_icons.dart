import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/contacts/cubit.dart';
import 'package:shoplaza/views/contacts/states.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final cubit = ContactController.of(context);

    return BlocBuilder<ContactController, ContactStates>(
      builder: (context, state) => Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: InkWell(
                onTap: _launchURL,

                child: Image.network(
                  'https://tse1.mm.bing.net/th?id=OIP.IyXyScHL0JK_GPheuXMWyQHaHa&pid=Api&P=0&w=300&h=300',
                  height: 70,
                ),
              ),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.red),
            )
            // ContactItem(img: 'https://tse1.mm.bing.net/th?id=OIP.IyXyScHL0JK_GPheuXMWyQHaHa&pid=Api&P=0&w=300&h=300', ),
            // ContactItem(img: 'https://tse3.mm.bing.net/th?id=OIP.Akmebv9xaUymjnrzJoDA0gHaHa&pid=Api&P=0&w=300&h=300',),
            // ContactItem(img: 'https://tse2.mm.bing.net/th?id=OIP.aRjblcD1Z17jDl9vNEXapgHaHa&pid=Api&P=0&w=300&h=300',)
          ],
        ),
      ),
    );
  }

  final _url = 'https://flutter.dev';

  Future<void> _launchURL() async => await canLaunch(_url)
      ? await launch(
          _url,
          forceSafariVC: false,
          forceWebView: false,
          // enableDomStorage: true,
        )
      : throw 'Could not launch $_url';
}
