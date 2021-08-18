import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  final String hintText;
  final Color ?fillColor;
  final Color ? hintTextColor;
  final Icon ? prefixIcon;
  final Icon ? suffixIcon;
  const DefaultTextField({Key? key , required this.hintText, this.fillColor,this.prefixIcon,this.suffixIcon,this.hintTextColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintStyle: TextStyle(color:hintTextColor ),
        hintText: hintText,
        filled: true,
        fillColor: fillColor,
        prefixIcon:prefixIcon ,
        suffixIcon: suffixIcon,


      ),
    );
  }
}
