import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType type;

  // final String hintText;
  final IconData suffix;
  final String labelText;
  final bool isPassword;
  final bool isHidden;
  final IconData prefix;
  final bool isPrefix;

  const CustomTextFormField({
    Key key,
    @required this.controller,
    @required this.type,
    // @required this.hintText,
    this.prefix,
    this.suffix,
    @required this.labelText,
    this.isPassword = false,
    this.isHidden = false,
    this.isPrefix = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // IconData suffix = Icons.visibility_off;

    return TextFormField(
        // obscureText: isPassword ? LoginController().visible : false,
        controller: controller,
        keyboardType: type,
        cursorColor: Colors.red,
        cursorHeight: 25,
        decoration: InputDecoration(
            labelText: labelText,
            labelStyle: TextStyle(fontSize: 15, color: Colors.grey[700]),
            focusedBorder:
                UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
            // hintStyle: TextStyle(
            //     color: Colors.grey[400],
            //     fontSize: 15,
            //     fontWeight: FontWeight.w600),
            // hintText: hintText,
            // suffixIcon: Icon(suffix),
            prefixIcon: prefix != null
                ? Icon(
                    prefix,
                    color: Colors.grey[600],
                    // isPrefix ?
                    //     Icon(
                    //       prefix,
                    //       color: Colors.grey[600],
                    //     ):null,

                    // prefixStyle:
                    // isHidden
                    //     ? IconButton(
                    //     icon: Icon(
                    //       suffix,color:Colors.black,),
                    //     onPressed: () {
                    // LoginController().password();
                    // setState(() {
                    //   visable = !visable;
                    //   isShown = !isShown;
                    //   isShown
                    //       ? suffix = Icons.visibility
                    //       : suffix = Icons.visibility_off;
                    // });
                    // })
                    // : null
                    // ),
                  )
                : null));
  }
}
