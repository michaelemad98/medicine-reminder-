import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  final String hintText;
  final Color ? fillColor;
  final Color ? hintTextColor;
  final double hintTextFontSize;
  final Icon ? prefixIcon;
  final Icon ? suffixIcon;
  final TextInputType ? textInputType;
  const DefaultTextField({Key? key , required this.hintText, this.fillColor,this.prefixIcon,this.suffixIcon,this.hintTextColor,required this.hintTextFontSize, this.textInputType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintStyle: TextStyle(color:hintTextColor ,fontSize: hintTextFontSize),
        hintText: hintText,

        filled: true,
        fillColor: fillColor,
        prefixIcon:prefixIcon ,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(borderSide: BorderSide.none),


      ),
    );
  }
}
