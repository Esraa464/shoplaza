import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoplaza/const/fonts.dart';

import 'package:shoplaza/views/aboutUs/view.dart';
import 'package:shoplaza/views/editProfile/view.dart';

import 'package:shoplaza/views/privacy/view.dart';

class DrawerView extends StatefulWidget {
  static final List<String> _listDrawerTile = [
    'Edit Profile',
    'Privacy Policy',
    // 'Offers',
    // 'Notifications',
    // 'Pay',
    // 'Vouchers',
    // 'Get help',
    'About us',
  ];
  static final List<IconData> _iconsData = [
    Icons.edit,
    Icons.privacy_tip_outlined,
    // Icons.local_offer,
    // Icons.notifications,
    // Icons.payment,
    // Icons.how_to_vote,
    // Icons.mic,
    Icons.info_outline,
  ];
  final List pages = [
    EditProfileView(),
    Privacy(),
    // HomeLayout(),
    // HomeLayout(),
    // HomeLayout(),
    // HomeLayout(),
    // HomeLayout(),
    AboutUs()
  ];

  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<DrawerView> {
  int _currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    //  final List<dynamic>navigator=[
    // Navigator.push(context, MaterialPageRoute(builder:  (context) => SplashView()),)
    // ];
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                BoldFont(text: 'Hi Guest'),
                Text(
                  'Egypt',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                )
              ],
            ),
            // IconButton(
            //   icon: Icon(Icons.settings),
            //   onPressed: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => SettingsView(),
            //         ));
            //   },
            // )
          ],
        ),
      ),
      ListView.builder(
        shrinkWrap: true,
        itemCount: DrawerView._listDrawerTile.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color:
                        _currentSelected == index ? Colors.red : Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(7),
                        bottomRight: Radius.circular(7))),
                width: 6,
                height: 45,
              ),
              Expanded(
                child: ListTile(
                  leading: Icon(
                    DrawerView._iconsData[index],
                    color: Colors.grey[600],
                    size: 30,
                  ),
                  title: Text(
                    DrawerView._listDrawerTile[index],
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => navigator[index],));
                    setState(() {
                      _currentSelected = index;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => widget.pages[index],
                          ));
                    });
                  },
                ),
              ),
            ],
          );
        },
      ),
    ]);
  }
}
