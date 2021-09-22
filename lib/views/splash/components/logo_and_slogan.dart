import 'package:flutter/material.dart';

class SplashLogo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 120),
      child: Column(
        children: [
          Image.asset('assets/images/logo.PNG'),
          Text('Be lovelier with lovely products',style: TextStyle(fontFamily:'Pacifico'),)
        ],
      ),
    );
  }
}
